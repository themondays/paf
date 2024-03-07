use serde::{Deserialize, Serialize};
use sqlx::FromRow;
use serde_json::Value as JsonValue;

#[derive(Serialize, Deserialize, FromRow)]
pub struct Country {
    pub name: Option<String>,
    pub iso3: Option<String>,
    pub numeric_code: Option<String>,
    pub iso2: Option<String>,
    pub phonecode: Option<String>,
    pub currency: Option<String>,
    pub currency_name: Option<String>,
    pub currency_symbol: Option<String>,
    pub region: Option<String>,
    pub subregion: Option<String>,
    pub timezones: JsonValue,

}
