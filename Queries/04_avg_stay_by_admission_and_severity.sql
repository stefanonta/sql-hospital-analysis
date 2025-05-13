/*
For each type_of_admission, show the average length of stay, 
broken down by APR Severity of Illness Description. 
Show results only for 2014, and order by the highest average stay.
*/

SELECT type_of_admission,
       apr_severity_of_illness_description,
	   ROUND(AVG(REGEXP_REPLACE(length_of_stay,'[^\d]','','g')::numeric), 1) AS avg_length_of_stay_days
FROM hospital_discharges
WHERE discharge_year::integer = 2014
GROUP BY type_of_admission, apr_severity_of_illness_description
ORDER BY avg_length_of_stay_days DESC