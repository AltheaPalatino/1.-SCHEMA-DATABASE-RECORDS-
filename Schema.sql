-- Clients Table
CREATE TABLE Clients (
client_id INTEGER PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100), 
phone_number VARCHAR(15), email VARCHAR(100)
);

-- Appointments Table
CREATE TABLE Appointments (
appointment_id INTEGER PRIMARY KEY, 
client_id INTEGER, 
appointment_date DATE, 
status VARCHAR(20), FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

-- Services Table
CREATE TABLE services (
service_id INT PRIMARY KEY AUTO_INCREMENT, 
service_name VARCHAR(100) NOT NULL, 
service_price DECIMAL(10, 2) NOT NULL
);

-- AppointmentServices Table
CREATE TABLE AppointmentServices (
appointmentservices_id INTEGER PRIMARY KEY, 
appointment_id INTEGER, 
service_id INTEGER, 
quantity INTEGER
);
