--python 50000 < x < 10000
-- many other languages (x > 50000 ) && ( x < 10000)

--in sql - BETWEEN ... AND operator
SELECT
	*
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 200000 AND 500000;


--bbuilding up query step by step
SELECT
	job_title,
	experience_level,
	ROUND(salary_in_usd * 11.01 / 12) AS salary_sek_month
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 10000 AND 500000
	AND job_title = 'Data Engineer'
	AND experience_level = 'entry_level'
	--and employment_level
ORDER BY
	salary_sek_month 
DESC;
	

