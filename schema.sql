--Creating a demographics table for Brain-StrokeDB
CREATE TABLE demographics (
	id VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	age INT NOT NULL,
	ever_married VARCHAR NOT NULL,
	work_type VARCHAR NOT NULL,
	Residence_type VARCHAR NOT NULL,
	smoking_status VARCHAR NOT NULL,
	PRIMARY KEY (id)
);

--Creating health data table for Brain-StrokeDB
CREATE TABLE health_data (
	id VARCHAR NOT NULL,
	hypertension INT NOT NULL,
	heart_disease INT NOT NULL,
	avg_glucose_level FLOAT NOT NULL,
	bmi FLOAT NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating a gender table for Brain-StrokeDB
CREATE TABLE gender (
	id VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating an ever_married table for Brain-StrokeDB
CREATE TABLE ever_married (
	id VARCHAR NOT NULL,
	ever_married VARCHAR NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating a work_type table for Brain-StrokeDB
CREATE TABLE work_type (
	id VARCHAR NOT NULL,
	work_type VARCHAR NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating a Residence_type table for Brain-StrokeDB
CREATE TABLE Residence_type (
	id VARCHAR NOT NULL,
	Residence_type VARCHAR NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating a smoking_status table for Brain-StrokeDB
CREATE TABLE smoking_status (
	id VARCHAR NOT NULL,
	smoking_status VARCHAR NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating an age table for Brain-StrokeDB
CREATE TABLE age (
	id VARCHAR NOT NULL,
	age INT NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating a hypertension data table for Brain-StrokeDB
CREATE TABLE hypertension (
	id VARCHAR NOT NULL,
	hypertension INT NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating heart_disease data table for Brain-StrokeDB
CREATE TABLE heart_disease (
	id VARCHAR NOT NULL,
	heart_disease INT NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating avg_glucose_level data table for Brain-StrokeDB
CREATE TABLE avg_glucose_level (
	id VARCHAR NOT NULL,
	avg_glucose_level FLOAT NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

--Creating bmi data table for Brain-StrokeDB
CREATE TABLE bmi (
	id VARCHAR NOT NULL,
	bmi FLOAT NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

SELECT * FROM demographics;
SELECT * FROM health_data;

--Joining demographics and health_data tables
SELECT health_data.hypertension,
	health_data.heart_disease,
	health_data.avg_glucose_level,
	health_data.bmi,
	health_data.stroke
FROM health_data
INNER JOIN demographics
ON health_data.id = demographics.id;