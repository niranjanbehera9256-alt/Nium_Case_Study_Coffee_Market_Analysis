-- Query2 - Population Trend Analysis
-- Country population trend
SELECT iso3_code, year, population
FROM fact_population
ORDER BY iso3_code, year;

-- Top populated countries
SELECT iso3_code, population
FROM fact_population
WHERE year = (SELECT MAX(year) FROM fact_population)
ORDER BY population DESC
LIMIT 10;

-- Growth trend
SELECT 
iso3_code,
AVG(pop_growth) AS avg_growth
FROM fact_population
GROUP BY iso3_code
ORDER BY avg_growth DESC;

-- Population Trend line
SELECT
f.iso3_code,
c.label_en AS country_name,
f.year,
f.population
FROM fact_population f
JOIN dim_country c
ON f.iso3_code = c.iso3_code
ORDER BY c.label_en, f.year;
