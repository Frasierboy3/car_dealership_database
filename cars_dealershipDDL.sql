CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    phone INTEGER,
    email VARCHAR(20),
    did_Buy BOOLEAN 
);

ALTER TABLE customer
DROP COLUMN phone;
ALTER TABLE customer
ADD phone BIGINT;

CREATE TABLE cars(
    cars_id SERIAL PRIMARY KEY,
    isNew BOOLEAN,
    year INTEGER, 
    make VARCHAR(30),
    model VARCHAR(30)
);
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(15),
    last_name VARCHAR(15)
);
CREATE TABLE serv_mech(
    serv_mech_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
);
ALTER TABLE serv_mech
ADD FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id);

CREATE TABLE services(
    service_id SERIAL PRIMARY KEY,
    service_history VARCHAR(250),
    serv_mech_id INTEGER,
    FOREIGN KEY(serv_mech_id) REFERENCES serv_mech(serv_mech_id)
);
CREATE TABLE invoices(
    invoice_id SERIAL PRIMARY KEY,
    isPaid BOOLEAN,
    customer_id INTEGER,
    salesperson_id INTEGER,
    cars_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(cars_id) REFERENCES cars(cars_id),
    FOREIGN KEY(service_id) REFERENCES services(service_id)
)
