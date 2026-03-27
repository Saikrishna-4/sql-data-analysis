-- =====================================
-- PROJECT: Netflix Data Analysis
-- AUTHOR: Sai Krishna
-- =====================================

-- Total content
SELECT COUNT(*) AS total_content FROM netflix;

-- Movies vs TV Shows
SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;

-- Top 5 countries
SELECT country, COUNT(*) AS total
FROM netflix
GROUP BY country
ORDER BY total DESC
LIMIT 5;

-- Content per year
SELECT release_year, COUNT(*) AS total
FROM netflix
GROUP BY release_year
ORDER BY release_year;

-- Top genres
SELECT listed_in, COUNT(*) AS total
FROM netflix
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;
