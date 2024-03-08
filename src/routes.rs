use actix_web::web;

// Import handler modules
use crate::handlers::{
    country_handler,
    language_handler,
    rate_handler,
};

pub fn init_routes(cfg: &mut web::ServiceConfig) {
    cfg
        // Country routes
        .service(
            web::scope("/countries")
                .route("", web::get().to(country_handler::get_countries))
                .route("/{country_code}", web::get().to(country_handler::get_country))
                .route("/{country_code}/cities", web::get().to(country_handler::get_country_cities))
        )
        // Language
        .service(
            web::scope("/languages")
                .route("", web::get().to(language_handler::get_languages))
                .route("/{iso}", web::get().to(language_handler::get_language))
        )
        // Locale
        .service(
            web::scope("/locales")
                .route("", web::get().to(language_handler::get_locales))
        )
        // Currency
        .service(
            web::scope("/currency/rate")
                .route("/{currency}", web::get().to(rate_handler::get_rate))
        );
}
