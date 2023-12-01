-- Create the database
CREATE DATABASE travel_booking_platform;

-- Use the database
USE travel_booking_platform;

-- Create a table for flights
CREATE TABLE flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    origin VARCHAR(255),
    destination VARCHAR(255),
    departure_date DATE,
    price DECIMAL(10, 2)
);

-- Create a table for hotels
CREATE TABLE hotels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    check_in_date DATE,
    check_out_date DATE,
    price DECIMAL(10, 2)
);

-- Create a table for users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

-- Create a table for bookings
CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    flight_id INT,
    hotel_id INT,
    booking_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (flight_id) REFERENCES flights(id),
    FOREIGN KEY (hotel_id) REFERENCES hotels(id)
);
