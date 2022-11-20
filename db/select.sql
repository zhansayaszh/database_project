--1
SELECT dis.disease_code, dis.description FROM disease.diseases AS dis
JOIN disease.discovers AS dscv ON dis.disease_code = dscv.disease_code
WHERE dscv.discovered < '1991-01-01' AND UPPER(dis.pathogen) = UPPER('bacteria');

--2
select u.user_name, u.surname, doc.degree from disease.users as u
join disease.doctors as doc on u.email = doc.email
join disease.specializes as spec on doc.email = spec.email
where spec.specialize_disease_id!=1;

-- 3
select u.user_name, u.surname, doc.degree from disease.users as u
join disease.doctors as doc on u.email = doc.email
join disease.specializes as spec on doc.email = spec.email
group by u.user_name, u.surname, doc.degree
having count(spec.specialize_disease_id)>2;

--4
--first version
select c.country_name, avg(u.salary) from disease.countries as c
join disease.users as u  on c.country_name = u.country
join disease.doctors as doc on u.email = doc.email
join disease.specializes as spec on doc.email = spec.email
where spec.specialize_disease_id =11
group by c.country_name;

--second version
select c.country_name, round(avg(u.salary)) from disease.countries as c
join disease.users as u on c.country_name = u.country
join disease.doctors as doc on u.email = doc.email
join disease.specializes as spec on doc.email = spec.email
join disease.disease_types as rec on spec.specialize_disease_id = rec.disease_type_id
join disease.diseases as dis on rec.disease_type_id = dis.disease_type
where dis.pathogen='Viruses'
group by c.country_name;

--5
select pub.department, count(pub.email) from disease.public_servants as pub
join disease.records as rec on pub.email = rec.email
join disease.diseases as dis on rec.disease_code = dis.disease_code
where dis.description LIKE '%Covid-19%'
group by pub.department
having count(rec.country_name)>1;

select pub.department, count(pub.email) from disease.diseases as dis
join disease.records as rec on dis.disease_code = rec.disease_code
join disease.public_servants as pub on rec.email = pub.email
where dis.description like '%Covid-19%'
group by rec.country_name, pub.department,pub.email
having count(rec.country_name)>1;

select * from disease.public_servants;


SELECT * FROM disease.public_servants as pub
JOIN disease.records AS r on pub.email = r.email
JOIN disease.diseases AS dis ON r.disease_code = dis.disease_code
WHERE dis.description LIKE '%Covid-19%'
GROUP BY pub.department
-- HAVING count(r.country_name) > 1
;

--6
select u.email, u.salary from disease.users as u
join disease.public_servants as pub on u.email = pub.email
join disease.records as rec on pub.email = rec.email
join disease.diseases as dis on rec.disease_code = dis.disease_code
group by dis.description,u.email, u.salary
having count(dis.description like '%Covid-19%')>3;

--7
select user_name from disease.users
where user_name like '%gul%'
or user_name like '%Gul%'
or user_name like '%bek%'
or user_name like '%Bek%';

--8
CREATE INDEX IF NOT EXISTS idx_pathogen ON disease.diseases(pathogen);

EXPLAIN ANALYSE SELECT * FROM disease.diseases WHERE pathogen = 'Bacteria';

--9
select pub.email, u.user_name, pub.department, rec.total_patients from disease.public_servants as pub
join disease.users as u on pub.email = u.email
join disease.records as rec on pub.email = rec.email
where rec.total_patients between 100000 and 999999;

--10
SELECT country_name, sum(total_patients) FROM disease.records
group by country_name
ORDER BY sum(total_patients) DESC limit 5;

--11
select dis.disease_type ,sum(rec.total_patients) from disease.diseases as dis
join disease.records as rec on dis.disease_code = rec.disease_code
group by dis.disease_type
order by sum(rec.total_patients) desc;


select disease_type from disease.diseases;

select * from disease.disease_types;