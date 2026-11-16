select * from Patients WHERE City= 'Lagos';

select * from Patients Where Length_of_Stay >5;

select * from Patients where age between 30 and 50;

select * from Patients where Gender = 'female' and City = 'lagos' and Admission_Type ='emergency';

select * from Patients where Condition in ('hypertension', 'diabetes');

select top 3 * from Patients order by Length_of_Stay DESC;

select distinct city from Patients;

select count (*) as Total_Patients from Patients;

select avg(age) as Average_Age from Patients;

select condition, count (*) as patient_count from Patients group by Condition

select patient_name, upper(patient_name) as patient_name_upper from Patients;

select patient_name, lower(patient_name) as patient_name_lower from Patients;

select CONCAT(patient_id,'-',patient_name) as patient_id_name from Patients;

select * from Patients where Admission_Date > '2026-01-15';

select patient_id,patient_name, YEAR(admission_date) as admission_year, MONTH(admission_date) as admission_month from Patients;

select admission_type, AVG(cast(length_of_stay as float)) as avg_length_of_stay from Patients group by Admission_Type;

select admission_type, avg(cast(length_of_stay as float)) as avg_length_of_stay_new from Patients group by Admission_Type having avg(cast(length_of_stay as float)) > 4;

select patient_id, age, case when age < 40 then 'young' when age between 40 and 59 then 'middle-aged' else 'senior' end as age_category from Patients;

SELECT 
    CASE 
        WHEN age < 40 THEN 'Young'
        WHEN age BETWEEN 40 AND 59 THEN 'Middle-aged'
        ELSE 'Senior'
    END AS age_category,
    COUNT(*) AS patient_count
FROM patients
GROUP BY 
    CASE 
        WHEN age < 40 THEN 'Young'
        WHEN age BETWEEN 40 AND 59 THEN 'Middle-aged'
        ELSE 'Senior'
    END;

    SELECT patient_id, length_of_stay,
       CASE 
           WHEN length_of_stay <= 3 THEN 'Short Stay'
           ELSE 'Long Stay'
       END AS stay_classification
FROM patients;

SELECT condition, COUNT(*) AS total_patients
FROM patients
GROUP BY condition
HAVING COUNT(*) > 1;

SELECT TOP 5 * 
FROM doctors;

SELECT p.patient_name AS patient_name, d.specialization 
FROM patients p
JOIN doctors d ON p.doctor_id = d.doctor_id;

SELECT p.*, d.specialization 
FROM patients p
JOIN doctors d ON p.doctor_id = d.doctor_id
WHERE d.specialization = 'Internal Medicine';

SELECT d.doctor_id, d.Doctor_Name AS doctor_name, AVG(CAST(p.length_of_stay AS FLOAT)) AS avg_length_of_stay
FROM patients p
JOIN doctors d ON p.doctor_id = d.doctor_id
GROUP BY d.doctor_id, d.Doctor_Name;

SELECT TOP 1 d.doctor_id, d.Doctor_Name AS doctor_name, COUNT(p.patient_id) AS total_patients_treated
FROM patients p
JOIN doctors d ON p.doctor_id = d.doctor_id
GROUP BY d.doctor_id, d.Doctor_Name
ORDER BY total_patients_treated DESC;
