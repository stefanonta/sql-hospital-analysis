# Hospital Discharge Analysis – NY 2014 (SQL Project)

## Summary
This project analyzes healthcare data from hospital discharges in New York State. The goal is to uncover patterns in patient diagnoses and how long patients remain admitted based on their health conditions. I used SQL to explore the data through aggregation, basic cleaning, and filtering to answer targeted analytical questions. These findings can support government policy-making and help hospitals better prepare for the needs of the population.

## Dataset
- Source: [NY SPARCS Inpatient Discharges](https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/rmwa-zns4)
- Year: 2014
- Size: Roughly 900MB CSV file
- Records: 2M+ rows, 34 columns

## Questions Answered
1. Top 10 most common diagnoses in 2014
2. Top 10 diagnoses with the longest average length of stay in 2014
3. What are the most common diagnoses among emergency department admissions in 2014?
4. How does average hospital stay vary by admission type and severity of illness?
5. What diagnosis and payer combinations generate the highest total hospital charges in 2014?
6. Which diagnoses have the lowest cost-to-charge ratio, indicating potential inefficiencies?

## SQL Concepts Used
- `GROUP BY`, `ORDER BY`, `LIMIT`
- CTEs (`WITH`)
- `REGEXP_REPLACE()` for data cleaning
- `CAST()` for type conversion

## Folder Structure
- `Queries/`: Final `.sql` scripts for each question
- `helper_queries.sql`: Scratchpad of exploratory and test queries
- `Data/`: Raw dataset (saved locally only, not uploaded to GitHub)

## Author
Stefano Noventa - aka the "DataPizzaWizard".