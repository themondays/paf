use serde::{Deserialize, Serialize};
use sqlx::FromRow;

#[derive(Serialize, Deserialize, FromRow)]
pub struct Postcode {
    pub postcode: String,
    pub locality: Option<String>,
    pub country_code: String,
}
