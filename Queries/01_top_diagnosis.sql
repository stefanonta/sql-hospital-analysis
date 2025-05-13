-- Top 10 diagnosis

SELECT 
    ccs_diagnosis_description,
    COUNT(*) AS diagnosis_count
FROM hospital_discharges
WHERE discharge_year::integer = 2014
GROUP BY ccs_diagnosis_description
ORDER BY diagnosis_count DESC
LIMIT 10;