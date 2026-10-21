-- Quer3 - Market Growth Analysis
-- Market size
SELECT 
f.iso3_code,
c.label_en,
AVG(f.population) AS avg_population
FROM fact_population f
JOIN dim_country c
ON f.iso3_code = c.iso3_code
GROUP BY f.iso3_code, c.label_en;

-- Growth Rate
SELECT 
iso3_code,
AVG(pop_growth) AS growth_rate
FROM fact_population
GROUP BY iso3_code;

-- Final scoring data 
SELECT 
f.iso3_code,
c.label_en,
AVG(f.population) AS market_size,
AVG(f.pop_growth) AS growth_rate,
(AVG(f.population) * 0.7 + AVG(f.pop_growth) * 0.3) AS market_score
FROM fact_population f
JOIN dim_country c
ON f.iso3_code = c.iso3_code
GROUP BY f.iso3_code, c.label_en
ORDER BY market_score DESC
LIMIT 3;
