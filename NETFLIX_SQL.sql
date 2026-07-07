CREATE DATABASE netflix_analysis;
USE netflix_analysis;

SHOW TABLES;
SELECT type, COUNT AS (*) total_content 
FROM cleaned_netflix
GROUP BY type;
SELECT type, COUNT(*) AS total_content
FROM cleaned_netflix
GROUP BY type;
SELECT country, COUNT(*) AS total_titles
FROM cleaned_netflix
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;
SELECT rating, COUNT(*) AS total
FROM cleaned_netflix
GROUP BY rating
ORDER BY total DESC;
SELECT year_added, COUNT(*) AS total_titles
FROM cleaned_netflix
GROUP BY year_added
ORDER BY total_titles DESC
LIMIT 10;
SELECT year_added, COUNT(*) AS total_titles
FROM cleaned_netflix
WHERE year_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added;