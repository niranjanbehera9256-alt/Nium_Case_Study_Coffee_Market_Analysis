-- Qery1 - Data Quality Checks
SELECT * FROM dim_country LIMIT 5;
SELECT * FROM fact_population LIMIT 5;
SELECT * FROM dim_coffee LIMIT 5;

-- Null checks
SELECT COUNT(*) 
FROM fact_population
WHERE iso3_code IS NULL OR population IS NULL;

-- Duplicate check
SELECT iso3_code, year, COUNT(*)
FROM fact_population
GROUP BY iso3_code, year
HAVING COUNT(*) > 1;

-- Foreign key validation
SELECT f.*
FROM fact_population f
LEFT JOIN dim_country c
ON f.iso3_code = c.iso3_code
WHERE c.iso3_code IS NULL;

