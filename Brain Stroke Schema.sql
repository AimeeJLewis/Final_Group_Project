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