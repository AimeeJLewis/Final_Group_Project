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

CREATE TABLE gender (
	id VARCHAR(5) NOT NULL,
	gender varchar NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE age (
	id VARCHAR(5) NOT NULL,
	age INT NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE hypertension (
	id VARCHAR(5) NOT NULL,
	hypertension INT NOT NULL,
     PRIMARY KEY (id)
);


CREATE TABLE heart_disease (
	id VARCHAR(5) NOT NULL,
	heart_disease INT NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE married (
	id VARCHAR(5) NOT NULL,
	ever_married varchar NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE work (
	id VARCHAR(5) NOT NULL,
	work_type VARCHAR NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE residence (
	id VARCHAR(5) NOT NULL,
	Residence_type varchar NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE glucose (
	id VARCHAR(5) NOT NULL,
	avg_glucose_level FLOAT NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE bmi (
	id VARCHAR(5) NOT NULL,
	bmi FLOAT NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE smoking (
	id VARCHAR(5) NOT NULL,
	smoking_status VARCHAR NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE stroke (
	id VARCHAR(5) NOT NULL,
	stroke INT NOT NULL,
     PRIMARY KEY (id)
);

ALTER TABLE glucose
ADD stroke INT NOT NULL;

ALTER TABLE bmi
ADD stroke INT NOT NULL;

ALTER TABLE work
ADD stroke INT NOT NULL;

ALTER TABLE married
ADD stroke INT NOT NULL;

ALTER TABLE residence
ADD stroke INT NOT NULL;

ALTER TABLE smoking
ADD stroke INT NOT NULL;

ALTER TABLE heart_disease
ADD stroke INT NOT NULL;

ALTER TABLE hypertension
ADD stroke INT NOT NULL;

ALTER TABLE age
ADD stroke INT NOT NULL;

ALTER TABLE gender
ADD stroke INT NOT NULL;
