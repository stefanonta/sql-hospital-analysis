-- Find the top 10 diagnoses with the highest number of emergency department admissions in 2014

SELECT
	ccs_diagnosis_description,
	COUNT(ccs_diagnosis_description) AS num_of_admission
FROM hospital_discharges
WHERE LOWER(emergency_department_indicator) = 'y' 
  AND discharge_year::integer = 2014
GROUP BY ccs_diagnosis_description
ORDER BY num_of_admission DESC
LIMIT 10;
