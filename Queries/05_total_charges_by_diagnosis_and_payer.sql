/*
For each diagnosis and primary payment typology, calculate the average and total charges.
Focus only on 2014, and return the top 15 combinations with the highest total charges.
*/

SELECT 
	ccs_diagnosis_description,
 	payment_typology_1,
	ROUND(SUM(total_charges), 2) AS total_charges,
	ROUND(AVG(total_charges), 2) AS avg_total_charges
FROM hospital_discharges
WHERE discharge_year::integer = 2014
GROUP BY ccs_diagnosis_description, payment_typology_1
ORDER BY total_charges DESC
LIMIT 15;