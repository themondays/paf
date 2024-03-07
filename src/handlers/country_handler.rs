use actix_web::{web, HttpResponse, Responder};
use serde_json::json;
use sqlx::PgPool;
use crate::models::country::{Country};
use crate::models::city::{City};

pub async fn get_countries(db_pool: web::Data<PgPool>) -> impl Responder {
    let result = sqlx::query_as::<_, Country>("SELECT name, iso2, iso3, numeric_code, region, subregion, phonecode, currency, currency_symbol, currency_name, timezones  FROM paf_countries")
        .fetch_all(db_pool.get_ref())
        .await;

    match result {
        Ok(countries) => HttpResponse::Ok().json(countries),
        Err(e) => HttpResponse::InternalServerError().json(json!({"error": format!("Failed to fetch countryies: {}", e)}))
    }
}

pub async fn get_country(db_pool: web::Data<PgPool>, iso2: web::Path<String>) -> impl Responder {
    let iso2_str = iso2.into_inner();
    let result = sqlx::query_as::<_, Country>("SELECT * FROM paf_countries WHERE numeric_code = $1 OR iso2 = $1 OR  iso3 = $1")
        .bind(iso2_str)
        .fetch_one(db_pool.get_ref())
        .await;

    match result {
        Ok(country) => HttpResponse::Ok().json(country),
        Err(e) => {
            HttpResponse::InternalServerError().json(json!({"error": format!("Failed to fetch country: {}", e)}))
        }
    }
}

pub async fn get_country_cities(db_pool: web::Data<PgPool>, country_code: web::Path<String>) -> impl Responder {
    let country_code = country_code.into_inner();
    let result = sqlx::query_as::<_, City>("SELECT * FROM paf_cities WHERE country_code = $1")
        .bind(country_code)
        .fetch_all(db_pool.get_ref())
        .await;

    match result {
        Ok(cities) => HttpResponse::Ok().json(cities),
        Err(e) => {
            HttpResponse::InternalServerError().json(json!({"error": format!("Failed to fetch country cities: {}", e)}))
        }
    }
}
