
CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    CNIC VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    brand TEXT NOT NULL,
    reg_number VARCHAR(10) UNIQUE NOT NULL,
    type TEXT NOT NULL,
    daily_price NUMERIC(10,2) NOT NULL,
    availability BOOLEAN DEFAULT TRUE
);

CREATE TABLE bookings(
    booking_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id) ON DELETE CASCADE,
    car_id INTEGER REFERENCES cars(car_id) ON DELETE CASCADE,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    total_amount NUMERIC(10,2) NOT NULL,
    booking_status VARCHAR(20) DEFAULT 'active'
);

CREATE TABLE payments(
    payment_id SERIAL PRIMARY KEY,
    booking_id INTEGER REFERENCES bookings(booking_id) ON DELETE CASCADE,
    amount_paid NUMERIC(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT now()
);

CREATE TABLE maintenance(
    maintenance_id SERIAL PRIMARY KEY,
    car_id INTEGER REFERENCES cars(car_id) ON DELETE CASCADE,
    maintenance_date TIMESTAMP DEFAULT now(),
    description TEXT,
    type VARCHAR(100),
    cost NUMERIC(10,2) NOT NULL
);


