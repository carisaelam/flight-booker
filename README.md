# Flight Booker

## Overview

Flight Booker is a Rails application that allows users to book flights and manage their itineraries. This project is part of The Odin Project's curriculum and demonstrates the use of Rails for building a web application with authentication, CRUD operations, and associations.

## Features

- User authentication and registration
- Search and book flights
- View and manage flight bookings
- Admin interface for managing flights and users

## Getting Started

### Prerequisites

- Ruby 3.0.0 or higher
- Rails 7.0.0 or higher
- PostgreSQL (or your preferred database)

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/carisaelam/flight-booker.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd flight-booker
   ```

3. **Install the required gems:**

   ```bash
   bundle install
   ```

4. **Setup the database:**

   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. **Start the Rails server:**

   ```bash
   rails server
   ```

6. **Open your browser and visit:**

   ```
   http://localhost:3000
   ```

## Usage

- **Sign up**: Create a new account to start booking flights.
- **Login**: Access your account and manage your bookings.
- **Search for flights**: Use the search feature to find available flights.
- **Book a flight**: Select a flight and complete the booking process.
- **Manage bookings**: View and update your flight reservations.

## Testing

To run the test suite, use:

```bash
rails test
```

## Acknowledgments

This project is based on The Odin Project's curriculum and tutorials. Special thanks to the contributors and maintainers of The Odin Project for their educational resources.
