--Scalar Subquery
SELECT patient_name
FROM patient
WHERE patient_id = (
    SELECT patient_id
    FROM appointment
    ORDER BY fee DESC
    LIMIT 1
);
--Row Subquery
SELECT *
FROM appointment
WHERE (doctor_id, patient_id, fee) = (
    SELECT doctor_id, patient_id, fee
    FROM appointment
    ORDER BY fee DESC
    LIMIT 1
);
--Column Subquery
SELECT patient_name
FROM patient
WHERE patient_id IN (
    SELECT patient_id
    FROM appointment
);
-- Nested Subquery
SELECT doctor_name
FROM doctor
WHERE doctor_id IN (
    SELECT doctor_id
    FROM appointment
);
--Correlated Subquery
SELECT patient_name
FROM patient p
WHERE EXISTS (
    SELECT 1
    FROM appointment a
    WHERE a.patient_id = p.patient_id
);
