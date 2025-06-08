USE md_water_services ;

DROP TABLE IF EXISTS global_water_access;
CREATE TABLE global_water_access (
	name VARCHAR(255) ,
	region VARCHAR(255),
	year INT,
	pop_n FLOAT, 
	pop_u FLOAT,
	wat_bas_n FLOAT,
	wat_lim_n FLOAT,
	wat_unimp_n FLOAT,
	wat_sur_n FLOAT, 
	wat_bas_r FLOAT, 
	wat_lim_r FLOAT, 
	wat_unimp_r FLOAT, 
	wat_sur_r FLOAT, 
	wat_bas_u FLOAT,
	wat_lim_u FLOAT, 
	wat_unimp_u FLOAT,
	wat_sur_u FLOAT
);

/*DROP TABLE IF EXISTS location;*/
CREATE TABLE location (
	location_id VARCHAR(255) PRIMARY KEY,
	address VARCHAR(255),
	province_name VARCHAR(255),
	town_name VARCHAR(255),
	location_type VARCHAR(255)
);

/*DROP TABLE IF EXISTS Employee;*/
CREATE TABLE Employee (
	assigned_employee_id INT PRIMARY KEY,
	employee_name VARCHAR(25),
	phone_number VARCHAR(25),
	email VARCHAR(25),
	address VARCHAR(255),
	town_name VARCHAR(25),
	province_name VARCHAR(25),
	position VARCHAR(25)
);

/*DROP TABLE IF EXISTS Visits;*/
CREATE TABLE Visits (
	record_id INT PRIMARY KEY,
	location_id VARCHAR(255),
	source_id VARCHAR(255),
	time_of_record DATETIME,
	visit_count INT,
	time_in_queue INT,
	assigned_employee_id INT,
	FOREIGN KEY (location_id) REFERENCES location(location_id),
	FOREIGN KEY (assigned_employee_id) REFERENCES Employee(assigned_employee_id)
);

/*DROP TABLE IF EXISTS Water_quality;*/
CREATE TABLE Water_quality (
	record_id INT,
	subjective_quality_score INT,
	visit_count INT,
	FOREIGN KEY (record_id) REFERENCES Visits(record_id)
);

/*DROP TABLE IF EXISTS water_source;*/
CREATE TABLE water_source (
	source_id VARCHAR(255) PRIMARY KEY,
	type_of_water_source VARCHAR(255),
	number_of_people_served INT
);

/*DROP TABLE IF EXISTS Well_pollution;*/
CREATE TABLE Well_pollution (
	source_id VARCHAR(255),
	date DATETIME,
	description VARCHAR(255),
	pollutant_ppm FLOAT,
	biological FLOAT,
	results VARCHAR(255),
	FOREIGN KEY (source_id) REFERENCES water_source(source_id)
);
