CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50),
	phone_number VARCHAR(15),
	address VARCHAR(100)
);

CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	make VARCHAR(15),
	model VARCHAR(15),
	year VARCHAR(4),
	price VARCHAR(6),
	avalability BOOLEAN
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	FOREIGN KEY(car_id) REFERENCES car(car_id)
	FOREIGN KEY(customer_first_name) REFERENCES customer(first_name)
	FOREIGN KEY(customer_last_name) REFERENCES customer(last_name)
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
	FOREIGN KEY(service_cost) REFERENCES service_ticket(service_cost)
	service_cost NUMERIC
);

CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
);

--CREATE TABLE mechanic(
--	mechanic_id SERIAL PRIMARY KEY,
--	first_name VARCHAR(20),
--	last_name VARCHAR(20),
--);

CREATE TABLE service_ticket(
	service_id SERIAL PRIMARY KEY,
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
	FOREIGN KEY(car_id) REFERENCES car(car_id)
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
	service_cost NUMERIC
);


