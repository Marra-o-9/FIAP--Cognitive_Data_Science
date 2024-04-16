-- 97672 - Henrique Marra Barbosa
-- 551882 - Arthur Hieda Cunha
-- 552162 - Lucas Bueno Taets Gustavo


desc PF0645.diabetes;
select * from PF0645.discharge_disposition;
select * from PF0645.admission_type;
select * from PF0645.admission_source;
-- select * from PF0645.diabetes;


-- 1)

SELECT gender, race, COUNT(*) AS QTD
FROM PF0645.diabetes
GROUP BY gender, race
HAVING COUNT(*) > 500
ORDER BY race ASC, gender ASC;


-- 2)

SELECT d.encounter_id, d.gender,
    a_source.DESCRIPTION AS DESC_ADMISSION_SOURCE,
    a_type.DESCRIPTION AS DESC_ADMISSION_TYPE,
    d_disposition.DESCRIPTION AS DESC_DISCHARGE_DISPOSITION
FROM PF0645.diabetes d
JOIN PF0645.admission_type a_type ON d.admission_type_id = a_type.admission_type_id
JOIN PF0645.admission_source a_source ON d.admission_source_id = a_source.admission_source_id
JOIN PF0645.discharge_disposition d_disposition ON d.discharge_disposition_id = d_disposition.discharge_disposition_id
WHERE a_type.DESCRIPTION IN ('Emergency', 'Urgent')
AND d.number_inpatient >
                (SELECT AVG(number_inpatient)
                 FROM PF0645.diabetes);
                 

-- 3)

SELECT encounter_id, diag_1, diag_2, diag_3
FROM PF0645.diabetes
WHERE encounter_id <> 160477326
AND admission_type_id =
                (SELECT admission_type_id
                 FROM PF0645.diabetes
                 WHERE encounter_id = 160477326);


-- 4)

SELECT encounter_id, gender,
    a_type.DESCRIPTION AS DESC_ADMISSION_TYPE,
    diag_1
FROM PF0645.diabetes d
JOIN PF0645.admission_type a_type ON d.admission_type_id = a_type.admission_type_id
WHERE (diag_1 = '780' OR diag_1 = '518' OR diag_1 = '410')
AND a_type.DESCRIPTION IS NOT NULL;


-- 5)

SELECT gender,
    a_type.DESCRIPTION AS DESC_ADMISSION_TYPE,
    COUNT(*) AS QTD
FROM PF0645.diabetes d
JOIN PF0645.admission_type a_type ON d.admission_type_id = a_type.admission_type_id
WHERE a_type.DESCRIPTION IN ('Elective', 'Newborn')
GROUP BY gender, a_type.DESCRIPTION
ORDER BY QTD DESC;


