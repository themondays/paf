use serde::{Deserialize, Serialize};
use sqlx::FromRow;

#[derive(Serialize, Deserialize, FromRow)]
pub struct Language {
    pub name: Option<String>,
    pub iso: Option<String>,
}
