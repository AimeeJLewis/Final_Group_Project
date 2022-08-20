DROP TABLE stroke_data;

--Creating complete stroke table for Brain-Stroke_DB
CREATE TABLE stroke_data (
	id VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	age FLOAT NOT NULL,
	hypertension INT NOT NULL,
	heart_disease INT NOT NULL,
	ever_married VARCHAR NOT NULL,
	work_type VARCHAR NOT NULL,
	Residence_type VARCHAR NOT NULL,
	avg_glucose_level FLOAT NOT NULL,
	bmi FLOAT NOT NULL,
	smoking_status VARCHAR NOT NULL,
	stroke INT NOT NULL,
	PRIMARY KEY (id)
);

SELECT * FROM stroke_data;

SELECT id, gender, age, ever_married, work_type, Residence_type, smoking_status INTO demographics
FROM stroke_data;

SELECT id, hypertension, heart_disease, avg_glucose_level, bmi, stroke INTO health_data
FROM stroke_data;

SELECT * FROM demographics;
SELECT * FROM health_data;