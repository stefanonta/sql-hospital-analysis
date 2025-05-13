-- Top 10 diagnoses with the longest average hospital stay

WITH hd_clean AS (
	SELECT *, 
	       CAST(REGEXP_REPLACE(length_of_stay, '[^\d]', '', 'g') AS integer) AS los_clean
	FROM hospital_discharges
)
SELECT 
	ccs_diagnosis_description,
    ROUND(AVG(los_clean), 1) AS avg_length_of_stay
FROM hd_clean
WHERE discharge_year::integer = 2014
GROUP BY ccs_diagnosis_description
ORDER BY avg_length_of_stay DESC
LIMIT 10;
