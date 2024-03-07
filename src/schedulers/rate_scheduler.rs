use chrono::{Utc, Timelike};
use chrono_tz::Europe::Berlin;
use crate::db::conn::create_db_pool;
use crate::handlers::rate_handler::fetch_and_store_rates;

pub async fn schedule() -> Result<(), Box<dyn std::error::Error>> {
    let db_pool = create_db_pool().await.expect("Failed to create database pool.");
    let mut interval = tokio::time::interval(std::time::Duration::from_secs(60 * 60 * 3));

    loop {
        interval.tick().await;
        let utc_now = Utc::now();
        let berlin_now = utc_now.with_timezone(&Berlin);
        if berlin_now.hour() == 15 && berlin_now.minute() == 0 {
            if let Err(e) = fetch_and_store_rates(db_pool.clone()).await {
                eprintln!("Failed to fetch and store rates: {}", e);
            }
        }
    }
}
