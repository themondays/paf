use actix_web::{web, HttpResponse, Responder};
use serde_json::json;
use sqlx::PgPool;
use crate::models::language::{Language};

pub async fn get_languages(db_pool: web::Data<PgPool>) -> impl Responder {
    let result = sqlx::query_as::<_, Language>("SELECT name, iso FROM paf_languages")
        .fetch_all(db_pool.get_ref())
        .await;

    match result {
        Ok(languages) => HttpResponse::Ok().json(languages),
        Err(e) => HttpResponse::InternalServerError().json(json!({"error": format!("Failed to fetch languages: {}", e)}))
    }
}

pub async fn get_locales(db_pool: web::Data<PgPool>) -> impl Responder {
    let result = sqlx::query_as::<_, Language>("SELECT name, iso FROM paf_locales")
        .fetch_all(db_pool.get_ref())
        .await;

    match result {
        Ok(languages) => HttpResponse::Ok().json(languages),
        Err(e) => HttpResponse::InternalServerError().json(json!({"error": format!("Failed to fetch locales: {}", e)}))
    }
}

pub async fn get_language(db_pool: web::Data<PgPool>, iso: web::Path<String>) -> impl Responder {
    let iso_str = iso.into_inner();
    let result = sqlx::query_as::<_, Language>("SELECT * FROM paf_languages WHERE iso = $1")
        .bind(iso_str)
        .fetch_one(db_pool.get_ref())
        .await;

    match result {
        Ok(language) => HttpResponse::Ok().json(language),
        Err(e) => {
            HttpResponse::InternalServerError().json(json!({"error": format!("Failed to fetch language: {}", e)}))
        }
    }
}
