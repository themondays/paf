use serde::{Deserialize, Serialize};
use sqlx::FromRow;

#[derive(Serialize, Deserialize, FromRow)]
pub struct City {
    pub name: String,
    pub state_code: String,
    pub country_code: String,
}
