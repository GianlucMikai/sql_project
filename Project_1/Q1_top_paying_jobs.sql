--View Data from different tables to get idea of columns available and data structure

/*SELECT *
FROM company_dim
LIMIT 10

SELECT *
FROM job_postings_fact
LIMIT 10

SELECT *
FROM skills_dim
LIMIT 10

SELECT *
FROM skills_job_dim
LIMIT 10*/



SELECT
  job_id,
  job_title,
  job_location,
  salary_year_avg
FROM 
  job_postings_fact
WHERE
  job_title_short = 'Data Analyst' AND
  job_location = 'Anywhere' AND
  salary_year_avg IS NOT NULL
LIMIT 10


