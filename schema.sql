-- Creating tables for brain_stroke
CREATE TABLE health_data (
	id VARCHAR(5) NOT NULL,
	gender varchar NOT NULL,
	age INT NOT NULL,
	hypertension INT NOT NULL,
	heart_disease INT NOT NULL,
	ever_married varchar NOT NULL,
	work_type VARCHAR NOT NULL,
	Residence_type varchar NOT NULL,
	avg_glucose_level FLOAT NOT NULL,
	bmi FLOAT NOT NULL,
	smoking_status VARCHAR NOT NULL,
	stroke INT NOT NULL,
     PRIMARY KEY (id)
);