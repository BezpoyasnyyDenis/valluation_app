# Product Price Estimation System

This project is a web application for estimating product prices based on comparison with similar products in a database.

## Features

- Product price estimation based on database comparison
- Form to input product details (category, brand, year, condition, etc.)
- Backend API to calculate estimated price
- PostgreSQL database integration

## Project Structure

```
project-root/
├─ client/           # React frontend
│  ├─ public/
│  ├─ src/
│  │  ├─ components/ # React components
│  │  ├─ lib/        # Utility functions
│  │  └─ pages/      # Pages for routing
├─ server/           # Node.js backend
│  ├─ db.ts          # Database connection
│  ├─ routes.ts      # API endpoints
│  ├─ storage.ts     # Database operations
│  └─ index.ts       # Server setup
└─ schema.sql        # SQL schema for database
```

## Setup Instructions

### Prerequisites

- Node.js (v14 or higher)
- PostgreSQL database

### Database Setup

1. Create a new PostgreSQL database
2. Run the provided `schema.sql` file to create the table and sample data:
   ```
   psql -U youruser -d yourdb -f schema.sql
   ```

### Environment Variables

Create a `.env` file with the following variables:

```
DATABASE_URL=postgresql://username:password@localhost:5432/yourdb
```

### Installation

1. Install dependencies:
   ```
   npm install
   ```

2. Start the development server:
   ```
   npm run dev
   ```

## API Documentation

### POST /api/evaluate

Evaluates the price of a product based on similar products in the database.

**Request Body:**

```json
{
  "name": "Product Name",
  "category": "Category", // required
  "brand": "Brand",      // required
  "year": 2023,          // optional
  "condition": "new",    // optional
  "description": "Description" // optional
}
```

**Response:**

```json
{
  "estimatedPrice": "450.00",
  "comparisons": 2
}
```

## License

This project is available as open source under the terms of the MIT License.
