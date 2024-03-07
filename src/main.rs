use actix_web::{App, HttpServer, web};
use dotenv::dotenv;
use std::env;
use paf_service::routes::init_routes;
use paf_service::db::conn::create_db_pool;
use paf_service::db::migrate::migrate;
use paf_service::schedulers::rate_scheduler::schedule;
use paf_service::handlers::rate_handler::fetch_and_store_rates;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    dotenv().ok();
    let db_pool = create_db_pool().await.expect("Failed to create database pool.");
    migrate().await.ok();
    tokio::spawn(async {
        let _ = schedule().await;
    });
    fetch_and_store_rates(db_pool.clone()).await.ok();
    HttpServer::new(move || {
        App::new()
            .app_data(web::Data::new(db_pool.clone()))
            .configure(init_routes)
    })
    .bind(format!("{}:{}", 
        env::var("HOST").unwrap_or_else(|_| "127.0.0.1".into()),
        env::var("PORT").unwrap_or_else(|_| "8080".into())
    ))?
    .run()
    .await
}
