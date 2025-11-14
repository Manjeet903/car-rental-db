# Car Rental Database — Codecademy Off-Platform Project

This repository contains a PostgreSQL schema and sample data for a Car Rental system.
It was built as part of Codecademy's "Designing a Database From Scratch" project.

## Contents
- `sql/schema.sql` — CREATE TABLE statements (schema)
- `sql/sample_data.sql` — INSERT statements (sample data)
- `diagrams/erd.dbml` — DBML version of the ER diagram
- `diagrams/erd.png` — exported ER diagram image

## Entities
- customers
- cars
- bookings
- payments
- maintenance

## How to run locally
1. Create a new PostgreSQL database (e.g., `car_rental_db`)
2. Open your SQL client (Postbird) and run:
   ```sql
   -- run the schema first:
   \i path/to/sql/schema.sql

   -- then insert sample data:
   \i path/to/sql/sample_data.sql
