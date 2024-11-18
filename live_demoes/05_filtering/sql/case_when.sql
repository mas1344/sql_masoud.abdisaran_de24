SELECT * FROM main.data_jobs;

--en --> entry_level
--MI --> mid_level
--SE --> senior
--EX --> expert
SELECT
	CASE
		WHEN experience_level = 'SE' THEN 'senior'
		WHEN experience_level = 'MI' THEN 'mid_level'
		WHEN experience_level = 'EN' THEN 'entry_level'
		WHEN experience_level = 'EX' THEN 'expert'
	END AS experience_level,
	* EXCLUDE (experience_level)
FROM
	main.data_jobs;
	

--have i  transformed my data?
SELECT * FROM main.data_jobs;

--to persist changes in the table --> update it
UPDATE 
	main.data_jobs
SET
	experience_level = CASE
		WHEN experience_level = 'SE' THEN 'senior'
		WHEN experience_level = 'MI' THEN 'mid_level'
		WHEN experience_level = 'EN' THEN 'entry_level'
		WHEN experience_level = 'EX' THEN 'expert'
		ELSE experience_level --Pereserve existing
	END;


SELECT DISTINCT experience_level FROM main.data_jobs;
