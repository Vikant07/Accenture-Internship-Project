SELECT * FROM online.`social buzz12`;
-- total post
SELECT COUNT(Content_ID) AS unique_posts FROM online.`social buzz12`;

-- How many unique categories are there?
SELECT COUNT(DISTINCT Category) AS unique_categories
FROM online.`social buzz12`;

-- How many reaction types are there?
SELECT COUNT(DISTINCT Reaction_Type) AS reaction_types
FROM online.`social buzz12`;

-- What was the top content type?
SELECT Content_type, COUNT(*) AS content_count
FROM online.`social buzz12`
GROUP BY Content_type
ORDER BY content_count DESC

-- top 5 category with the largest popularity
SELECT category, SUM(score) AS total_score
FROM online.`social buzz12`
GROUP BY category
ORDER BY total_score DESC
LIMIT 5;


-- Total post by month
SELECT EXTRACT(YEAR_MONTH FROM Datetime) AS month_year, COUNT(*) AS post_count
FROM online.`social buzz12`
GROUP BY month_year
ORDER BY post_count DESC
 







