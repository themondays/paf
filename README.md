# PAF Service

> Practically All Features service - Because Who Needs Reality When You've Got Everything Else?

PAF (Postal Address File) is a web service designed to provide comprehensive data about countries, languages, locales, and currency rates. It simplifies accessing various geographical and financial information through a RESTful API interface.

## Features

- Retrieve lists of countries along with detailed information about each.
- Access city information based on country codes.
- Get available languages and specific language details.
- Fetch locale information to support internationalization.
- Obtain real-time and historical currency exchange rates.

Additionally, PAF includes a scheduled task that updates currency rates daily, fetching the latest data from the European Central Bank.

## Prerequisites

- Rust 1.75 or later
- Cargo (comes with Rust)
- PostgreSQL 12 or later
- Access to the internet for fetching currency rates

## Setup and Installation

1. **Clone the Repository:**

```
git clone git@github.com:themondays/paf.git
```

2. **Configure Environment Variables:**

Create a `.env` file in the root directory and configure your database connection string and any other necessary environment variables.

Example `.env` content:
```
DATABASE_URL=postgres://user:password@localhost/paf_db
```

3. **Setup Database:**

Ensure your PostgreSQL database is running and accessible through the connection string specified in your `.env` file or service env.

4. **Run Database Migrations:**

```bash
cargo sqlx migrate run
```

5. **Start the Service:**

```bash
cargo run
```

## API Endpoints

### Countries

- **List All Countries:** `GET /countries`
- **Get Country by Code:** `GET /countries/{country_code}`
- **Get Cities by Country:** `GET /countries/{country_code}/cities`

### Languages

- **List All Languages:** `GET /languages`
- **Get Language by ISO Code:** `GET /languages/{iso}`

### Locales

- **List All Locales:** `GET /locales`

### Currency Exchange Rates

- **Get Rate for Currency:** `GET /currency/rate/{currency}`

## Scheduled Task

A background task runs daily at 3 PM GMT+1 to update currency rates using data from the European Central Bank.

## Development

This project is developed using Rust and Actix-web for the web service framework. `sqlx` is used for database operations.

## Contribution

Contributions are welcome! Please create a pull request or issue to contribute to the development of PAF.

## License

This project is distributed under the MIT License. See the LICENSE file for more details.

__Crafted with passion beneath the ever-watchful eyes of the Melbourne skyline – where creativity meets coffee.__

