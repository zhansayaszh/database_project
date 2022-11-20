CREATE SCHEMA IF NOT EXISTS disease;

CREATE TABLE IF NOT EXISTS disease.disease_types(
    disease_type_id SERIAL PRIMARY KEY,
    description VARCHAR(140)
);

CREATE TABLE IF NOT EXISTS disease.countries(
    country_name VARCHAR(50) PRIMARY KEY ,
    population BIGINT
);

CREATE TABLE IF NOT EXISTS disease.diseases(
    disease_id SERIAL PRIMARY KEY,
    disease_code VARCHAR(50) UNIQUE ,
    pathogen VARCHAR(20),
    description VARCHAR(140),
    disease_type INT REFERENCES disease.disease_types (disease_type_id)
);

CREATE TABLE IF NOT EXISTS disease.discovers(
    country_name VARCHAR(50) REFERENCES disease.countries (country_name),
    disease_code VARCHAR(50) REFERENCES disease.diseases (disease_code),
    discovered DATE
);

CREATE TABLE IF NOT EXISTS disease.users(
    email VARCHAR(60) PRIMARY KEY ,
    user_name VARCHAR(30),
    surname VARCHAR(40),
    salary INT,
    phone VARCHAR(20),
    country VARCHAR(50) REFERENCES disease.countries(country_name)
);

CREATE TABLE IF NOT EXISTS disease.public_servants(
    email VARCHAR(60) REFERENCES disease.users(email) PRIMARY KEY,
    department VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS disease.doctors(
    email VARCHAR(60) REFERENCES disease.users(email) PRIMARY KEY ,
    degree VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS disease.specializes(
    specialize_disease_id INT REFERENCES disease.disease_types(disease_type_id),
    email VARCHAR(60) REFERENCES disease.doctors(email)
);

CREATE TABLE IF NOT EXISTS disease.records(
    email VARCHAR(60) REFERENCES disease.public_servants(email),
    total_death INT,
    total_patients INT,
    country_name VARCHAR(50) REFERENCES disease.countries(country_name),
    disease_code VARCHAR(50) REFERENCES disease.diseases(disease_code),
);