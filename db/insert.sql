
INSERT INTO disease.disease_types(disease_type_id, description)
VALUES (4, 'Hereditary'),
       (5, 'Blood'),
       (6, 'Deficiency'),
       (7, 'Physiological');

INSERT INTO disease.disease_types(disease_type_id, description)
VALUES (8, 'Infectious-Allergic'),
       (9, 'Infectious-Blood'),
       (10, 'Infectious-Deficiency');

INSERT INTO disease.disease_types(disease_type_id, description)
VALUES (11, 'Virology');


INSERT INTO disease.countries(country_name, population)
VALUES ('Kazakhstan', 18776707),
       ('China', 1439323776),
       ('India', 1380004385),
       ('United States', 331002651),
       ('Japan', 126476461),
       ('Germany', 83783942),
       ('United Kingdom', 67886011),
       ('South Korea', 51269185),
       ('Canada', 37742154),
       ('Russia', 145934462);

insert into disease.countries(country_name, population)
VALUES ('France', 65273511),
       ('Italy', 60461826),
       ('Israel', 8655535);

INSERT INTO disease.users(email, user_name, surname, salary, phone, country)
VALUES ('alibek.batyrkhan@gmail.com', 'Alibek', 'Batyrkhan', 100000, '+77758793427', 'Kazakhstan'),
       ('gulsim.batyrbek@gmail.com', 'Gulsim', 'Batyrbek', 150000, '+77058932277', 'Kazakhstan'),
       ('gulnaz.sattarova@gmail.com', 'Gulnaz', 'Sattarova', 130000, '+77058932279', 'Kazakhstan'),
       ('john_smith1@gmail.com', 'John', 'Smith', 200000, '+17058932279', 'United States'),
       ('mary_kenneth@gmail.com', 'Mary', 'Kenneth', 300000, '+17358932570', 'United States'),
       ('alice_barry@gmail.com', 'Alice', 'Barry', 100000, '+49358932570', 'Germany'),
       ('tom_holland@gmail.com', 'Tom', 'Holland', 400000, '+44358932570', 'United Kingdom'),
       ('zendaya.coleman@gmail.com', 'Zendaya', 'Coleman', 353000, '+17355933571', 'United States'),
       ('yeonjun_choi@gmail.com', 'Yeonjun', 'Choi', 500000, '+82358932570', 'South Korea'),
       ('kai_kim@gmail.com', 'Kai', 'Kim', 400000, '+82358939990', 'South Korea'),
       ('gulya_petrova@gmail.com', 'Gulya', 'Petrova', 109000, '+77092773311', 'Russia'),
       ('timothee-chalamet@gmail.com', 'Timothee', 'Chalamet', 390000, '+17057938279', 'United States'),
       ('karl.stefan@gmail.com', 'Karl', 'Stefan', 180000, '+493589325888', 'Germany'),
       ('inaya-ishaan@gmail.com', 'Inaya', 'Ishaan', 10000, '+918889993456', 'India'),
       ('daiki.aomine@gmail.com', 'Daiki', 'Aomine', 199000, '+812344323443', 'Japan');


INSERT INTO disease.doctors(email, degree)
values ('alice_barry@gmail.com', 'MBBS'),
       ('kai_kim@gmail.com', 'MBBCh'),
       ('timothee-chalamet@gmail.com', 'MBBS'),
       ('gulya_petrova@gmail.com', 'MD'),
       ('mary_kenneth@gmail.com', 'MBBCh'),
       ('daiki.aomine@gmail.com', 'DO'),
       ('yeonjun_choi@gmail.com', 'DO'),
       ('inaya-ishaan@gmail.com', 'MD'),
       ('gulnaz.sattarova@gmail.com', 'BMBS'),
       ('alibek.batyrkhan@gmail.com', 'MBBS '),
       ('gulsim.batyrbek@gmail.com', 'BMBS'),
       ('john_smith1@gmail.com', 'MBChC'),
       ('tom_holland@gmail.com', 'MBBCh'),
       ('zendaya.coleman@gmail.com', 'MBChC'),
       ('karl.stefan@gmail.com', 'MD');


INSERT INTO disease.users(email, user_name, surname, salary, phone, country)
VALUES ('yeon_choi@gmail.com', 'Yeon', 'Choi', 500000, '+82358932970', 'South Korea'),
       ('jenny_kim@gmail.com', 'Jenny', 'Kim', 400000, '+82351929990', 'South Korea'),
       ('nastya_pushkina@gmail.com', 'Nastya', 'Pushkina', 108000, '+77092771312', 'Russia'),
       ('timothee-barrinson@gmail.com', 'Timothee', 'Barrinson', 392000, '+17052938289', 'United States'),
       ('karlson.stefanson@gmail.com', 'Karlson', 'Stefanson', 180000, '+13589325888', 'United States');


insert into disease.public_servants(email, department)
VALUES ('beknur.alimkhan@gmail.com', 'High School'),
       ('ainur.akylbek@gmail.com', 'Prosecutors office'),
       ('nazgul.sattarova@gmail.com', 'University'),
       ('rob_smithen@gmail.com', 'Police'),
       ('sheila_kenneth@gmail.com', 'Pre-School'),
       ('alice_petersom@gmail.com', 'University'),
       ('tom_lee@gmail.com', 'Middle School'),
       ('ashley_choi@gmail.com', 'Police'),
       ('yeon_choi@gmail.com', 'Prosecutors office'),
       ('jenny_kim@gmail.com', 'High School'),
       ('nastya_pushkina@gmail.com', 'University');



insert into disease.specializes(specialize_disease_id, email)
VALUES (1, 'alice_barry@gmail.com'),
       (2, 'kai_kim@gmail.com'),
       (3, 'timothee-chalamet@gmail.com'),
       (1, 'gulya_petrova@gmail.com'),
       (4, 'mary_kenneth@gmail.com'),
       (5, 'daiki.aomine@gmail.com'),
       (5, 'yeonjun_choi@gmail.com'),
       (1, 'inaya-ishaan@gmail.com'),
       (4, 'gulnaz.sattarova@gmail.com'),
       (2, 'alibek.batyrkhan@gmail.com'),
       (6, 'gulsim.batyrbek@gmail.com'),
       (3, 'john_smith1@gmail.com'),
       (6, 'tom_holland@gmail.com'),
       (7, 'zendaya.coleman@gmail.com'),
       (7, 'karl.stefan@gmail.com');

insert into disease.specializes(specialize_disease_id, email)
VALUES (2, 'alice_barry@gmail.com'),
       (8, 'timothee-chalamet@gmail.com'),
       (10, 'mary_kenneth@gmail.com'),
       (9, 'daiki.aomine@gmail.com'),
       (9, 'inaya-ishaan@gmail.com'),
       (7, 'gulnaz.sattarova@gmail.com'),
       (2, 'gulsim.batyrbek@gmail.com'),
       (1, 'john_smith1@gmail.com'),
       (8, 'tom_holland@gmail.com'),
       (9, 'zendaya.coleman@gmail.com'),
       (9, 'karl.stefan@gmail.com'),
        (10, 'tom_holland@gmail.com'),
       (10, 'zendaya.coleman@gmail.com'),
       (10, 'karl.stefan@gmail.com');

insert into disease.specializes(specialize_disease_id, email)
VALUES (11, 'alice_barry@gmail.com'),
       (11, 'timothee-chalamet@gmail.com'),
       (11, 'mary_kenneth@gmail.com'),
       (11, 'daiki.aomine@gmail.com'),
       (11, 'inaya-ishaan@gmail.com'),
       (11, 'gulnaz.sattarova@gmail.com');

INSERT INTO disease.diseases(disease_code, pathogen, description, disease_type)
VALUES ('A413', 'Viruses', 'Sepsis due to Hemophilus influenzae', 1),
       ('A150', 'Bacteria', 'Tuberculosis of lung', 1),
       ('J4520', 'Fungi', 'Mild intermittent asthma, uncomplicated', 2),
       ('A060', 'Protists', 'Acute amebic dysentery', 3),
       ('B740', 'Parasitic worms', 'Filariasis due to Wuchereria bancrofti', 7),
       ('B050', 'Viruses', 'Measles complicated by encephalitis', 1),
       ('B051', 'Bacteria', 'Measles complicated by meningitis', 1),
       ('B088', 'Fungi', 'Other specified viral infections characterized by skin and mucous membrane lesions', 2),
       ('B500', 'Protists', 'Plasmodium falciparum malaria with cerebral complications', 1),
       ('B7300', 'Parasitic worms', 'Onchocerciasis with eye involvement, unspecified', 4),
       ('B9735', 'Viruses',
        'Human immunodeficiency virus, type 2 [HIV 2] as the cause of diseases classified elsewhere', 1),
       ('J160', 'Bacteria', 'Chlamydial pneumonia', 1),
       ('J1000', 'Fungi', ' Influenza due to other identified influenza virus with unspecified type of pneumonia', 1),
       ('B569', 'Protists', 'African trypanosomiasis, unspecified', 5),
       ('B650', 'Parasitic worms', 'Schistosomiasis due to Schistosoma haematobium [urinary schistosomiasis]', 6),
       ('B9721', 'Viruses', 'SARS-CoV-2 or SARS-associated coronavirus as the cause of diseases classified elsewhere',
        1);

INSERT INTO disease.diseases(disease_code, pathogen, description, disease_type)
VALUES ('A000', 'Viruses', 'Cholera due to Vibrio cholerae 01, biovar cholerae', 7),
       ('A0100', 'Bacteria', 'Typhoid fever, unspecified', 8),
       ('A011', 'Fungi', 'Paratyphoid fever A', 9),
       ('A020', 'Protists', 'Salmonella enteritis', 10),
       ('A0220', 'Parasitic worms', 'Localized salmonella infection, unspecified', 8),
       ('A040', 'Viruses', 'Enteropathogenic Escherichia coli infection', 9),
       ('A045', 'Bacteria', 'Campylobacter enteritis', 10);



insert into disease.discovers(country_name, disease_code, discovered)
VALUES ('Germany', 'A413', '1892-01-01'),
       ('France', 'A150', '1865-02-02'),
       ('China', 'J4520', '1500-03-03'),
       ('Italy', 'A060', '1600-03-09'),
       ('Canada', 'B740', '2000-09-02'),
       ('India', 'B050', '1900-08-01'),
       ('Japan', 'B051', '2013-08-01'),
       ('United States', 'B088', '2010-10-11'),
       ('United States', 'B500', '2011-12-12'),
       ('Germany', 'B7300', '1960-03-09'),
       ('South Korea', 'B9735', '2015-11-12'),
       ('South Korea', 'J160', '2017-09-01'),
       ('China', 'J1000', '2012-03-01'),
       ('Russia', 'B569', '1970-08-04'),
       ('Canada', 'B650', '2001-09-10'),
       ('China', 'B9721', '2019-01-01');

insert into disease.discovers(country_name, disease_code, discovered)
VALUES ('Germany', 'A000', '1999-01-01'),
       ('France', 'A0100', '1888-02-02'),
       ('China', 'A011', '1998-03-03'),
       ('Italy', 'A020', '2010-03-09'),
       ('Israel', 'A0220', '2009-09-02'),
       ('India', 'A040', '1909-08-01'),
       ('Japan', 'A045', '2019-08-01');

insert into disease.records(email, country_name, disease_code)
VALUES ('beknur.alimkhan@gmail.com', 'Kazakhstan', 'J1000'),
       ('ainur.akylbek@gmail.com', 'Kazakhstan', 'B051'),
       ('nazgul.sattarova@gmail.com', 'Kazakhstan', 'A060'),
       ('rob_smithen@gmail.com', 'United States', 'J4520'),
       ('sheila_kenneth@gmail.com', 'United States', 'J1000'),
       ('alice_petersom@gmail.com', 'Canada', 'A060'),
       ('tom_lee@gmail.com', 'Canada', 'B051'),
       ('ashley_choi@gmail.com', 'United Kingdom', 'J4520'),
       ('yeon_choi@gmail.com', 'South Korea', 'A413'),
       ('jenny_kim@gmail.com', 'South Korea', 'A150'),
       ('nastya_pushkina@gmail.com', 'Russia', 'B9721');

insert into disease.records(email, country_name, disease_code)
VALUES ('beknur.alimkhan@gmail.com', 'Kazakhstan', 'B9721'),
       ('ainur.akylbek@gmail.com', 'Kazakhstan', 'B9721'),
       ('nazgul.sattarova@gmail.com', 'Kazakhstan', 'B9721'),
       ('rob_smithen@gmail.com', 'United States', 'B9721'),
       ('sheila_kenneth@gmail.com', 'United States', 'B9721'),
       ('alice_petersom@gmail.com', 'Canada', 'B9721');


insert into disease.records(email, country_name, disease_code)
VALUES ('beknur.alimkhan@gmail.com', 'Kazakhstan', 'B9721'),
       ('ainur.akylbek@gmail.com', 'Kazakhstan', 'B9721'),
       ('nazgul.sattarova@gmail.com', 'Kazakhstan', 'B9721');

UPDATE disease.records SET total_deaths = (random() * 999999 + 1)::int;
UPDATE disease.records SET total_patients = (random() * 999999 + 1)::int;

