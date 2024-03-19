use actix_web::{web, HttpResponse, Responder};
use serde_json::json;
use serde_xml_rs::{from_str};
use reqwest;
use sqlx::PgPool;
use std::error::Error;
use crate::models::rate::Rate;
use crate::domain::currency::Envelope;

pub async fn fetch_and_store_rates(pool: PgPool) -> Result<(), Box<dyn Error>> {
    let xml_url = "https://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml?98c5278941fd652624dd2431c82a86f0";
    let xml = reqwest::get(xml_url).await?.text().await?;    
    let envelope: Envelope = from_str(&xml).unwrap();
    for cube_time in envelope.cube.cubes.iter() {
        for cube in cube_time.cubes.iter() {
            let query = sqlx::query(
                "INSERT INTO paf_rates (currency, rate) VALUES ($1, $2) ON CONFLICT (currency) DO UPDATE SET rate = EXCLUDED.rate",
              )
              .bind(&cube.currency)
              .bind(&cube.rate);
            query.execute(&pool).await?;
        }
    }
    Ok(())
}

pub async fn get_rate(pool: web::Data<PgPool>, currency: web::Path<String>) -> impl Responder {
    let target_currency = currency.into_inner().to_uppercase();
    if target_currency == "EUR" {
        match sqlx::query_as::<_, Rate>("SELECT currency, rate FROM paf_rates")
            .fetch_all(pool.get_ref())
            .await {
                Ok(rates) => HttpResponse::Ok().json(rates),
                Err(_) => HttpResponse::InternalServerError().finish(),
            }
    } else {
       let target_rate_res = sqlx::query_as::<_, Rate>("SELECT rate FROM paf_rates WHERE currency = $1")
            .bind(&target_currency)
            .fetch_optional(pool.get_ref()).await;

        match target_rate_res {
            Ok(Some(row)) => {
                let target_rate = row.rate.parse::<f32>().unwrap_or(0.0);
                if target_rate == 0.0 {
                    return HttpResponse::NotFound().finish();
                }
                match sqlx::query_as::<_, Rate>("SELECT currency, rate FROM paf_rates")
                    .fetch_all(pool.get_ref())
                    .await {
                        Ok(mut rates) => {
                            for record in rates.iter_mut() {
                                let rate = record.rate.parse::<f32>().unwrap();
                                if record.currency != "EUR" {
                                    record.rate = (rate / target_rate).to_string();
                                } else {
                                    record.rate = (1.0 / target_rate).to_string();
                                }
                            }
                            rates.push(Rate { currency: "EUR".to_string(), rate: (1.0 / target_rate).to_string() });
                            HttpResponse::Ok().json(rates)
                        },
                        Err(e) => HttpResponse::InternalServerError().json(json!({"error": format!("Failed to fetch rates: {}", e)}))
                    }
            },
            _ => HttpResponse::InternalServerError().finish(),
        }
    }
}
