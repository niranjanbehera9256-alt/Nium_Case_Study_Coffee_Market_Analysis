-- Query4 - Coffey Event Analsis
-- Frequency Checks
SELECT commodity, COUNT(*) AS event_count
FROM dim_coffee
GROUP BY commodity
ORDER BY event_count DESC;

-- Timeline Checks
SELECT 
DATE(release_datetime) AS event_date,
COUNT(*) AS events
FROM dim_coffee
GROUP BY DATE(release_datetime)
ORDER BY event_date;

-- Monthly trend checks
SELECT 
DATE_TRUNC('month', release_datetime) AS month,
COUNT(*) AS event_count
FROM dim_coffee
GROUP BY month
ORDER BY month;

