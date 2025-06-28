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

/*
QUESTIONS: What are the TOP paying data analyst jobs
- Identify the top 10 highest paying Data analyst jobs
- Only job postings with salaries (No Nulls)
- Why? Highlight the top-paying opportunities for data analysts, offering insights into employment skills needed etc.
*/

SELECT
  job_id,
  job_title,
  job_location,
  salary_year_avg,
  job_posted_date,
  name AS company_name
FROM 
  job_postings_fact

LEFT JOIN 
  company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
  job_title_short = 'Data Analyst' AND
  job_location = 'Anywhere' AND
  salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10


