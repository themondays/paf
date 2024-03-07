use crate::db::conn::create_db_pool;

pub async fn migrate() -> Result<(), sqlx::Error> {
    dotenv::dotenv().ok();
    let db_pool = create_db_pool().await.expect("Failed to create database pool.");
    sqlx::migrate!("./migrations")
        .run(&db_pool)
        .await?;

    println!("Migrations applied successfully.");
    // Seed migration fom AWS
    //
    // seed_tables(&db_pool).await.map_err(|e| {
    //     eprintln!("Error seeding tables: {}", e);
    //     sqlx::Error::from(sqlx::error::Error::Io(std::io::Error::new(std::io::ErrorKind::Other, "Seeding failed")))
    // })?;
    Ok(())
}
