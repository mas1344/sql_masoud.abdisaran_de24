--10 MOST SEARCHED FOOD
SELECT
	food,
	SUM(number_searches)
FROM
	main.cleaned_food
GROUP BY
	food;
ORDER BY total_searches DESC 
LIMIT 10
;



--TOTAL SEARCHES BY YEAR
SELECT
	YEAR, SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	YEAR;
HAVING total_searches > 300000
ORDER BY
	total_searches DESC;


SELECT
	YEAR,
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food,
	YEAR
ORDER BY total_searches DESC;


--MOST POPULAR FOOD IN SUMMER


--MOST POPULAR FOOD IN WINTER