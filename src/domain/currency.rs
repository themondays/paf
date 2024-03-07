use serde::{Deserialize};

#[derive(Debug, Deserialize)]
pub struct Envelope {
    #[serde(rename = "Cube")]
    pub cube: CubeContainer,
}

#[derive(Debug, Deserialize)]
pub struct CubeContainer {
    #[serde(rename = "Cube")]
    pub cubes: Vec<CubeTime>,
}

#[derive(Debug, Deserialize)]
pub struct CubeTime {
    #[serde(rename = "currency", default)]
    pub currency: Option<String>,
    #[serde(rename = "rate", default)]
    pub rate: Option<String>,
    #[serde(rename = "time", default)]
    pub time: Option<String>,
    #[serde(rename = "Cube", default)]
    pub cubes: Vec<Cube>,
}

#[derive(Debug, Deserialize)]
pub struct Cube {
    #[serde(rename = "currency")]
    pub currency: String,
    #[serde(rename = "rate")]
    pub rate: String,
}
