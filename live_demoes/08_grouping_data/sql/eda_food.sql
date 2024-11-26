--EDA EXPLOTARY DATA

SELECT * FROM main.food;

--201 food categories
SELECT DISTINCT id AS food FROM main.food;


--135025 rows
SELECT COUNT(*) FROM main.food;


--cols id, google topic, week_id, value
DESC main.food;

SELECT
	*
FROM
	main.food
WHERE
	week_id BETWEEN '2004-04' AND '2004-10';