-- Checking what years are available in the dataset
SELECT DISTINCT discharge_year FROM hospital_discharges;

-- How many values are like '120+'?
SELECT COUNT(*) FROM hospital_discharges
WHERE length_of_stay LIKE '120%';

-- Listing the columns and their types to help the thought process
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'hospital_discharges';