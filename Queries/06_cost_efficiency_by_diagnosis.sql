/*
For each diagnosis, compare average total charges to average total costs, and calculate the cost-to-charge ratio.
Show the top 15 diagnoses with the lowest efficiency (i.e., lowest cost-to-charge ratio).
*/

WITH diagnosis_figures AS (
	SELECT
		ccs_diagnosis_description,
		ROUND(AVG(total_charges), 2) AS avg_charges,
		ROUND(AVG(total_costs), 2) AS avg_costs
	FROM hospital_discharges
	WHERE discharge_year::integer = 2014
	GROUP BY ccs_diagnosis_description
)
SELECT
	ccs_diagnosis_description,
    avg_charges,
	avg_costs,
	ROUND((avg_costs/avg_charges)*100, 3) || '%' AS cost_to_charge_ratio,
	ROUND((avg_costs / avg_charges), 3) AS cost_to_charge_ratio_numeric
FROM diagnosis_figures
ORDER BY cost_to_charge_ratio
LIMIT 15;