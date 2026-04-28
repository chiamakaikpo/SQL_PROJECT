/*
Question: What are the top skills bsed on salary?
-Look at the average salary associated with each skill for Data Analyst positions
-Focus on roles with specified salaries, regardless of location
-Why? It reveals how different skills impact salary levels for Data Analysts and
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
   round(avg(salary_year_avg),0)as avg_salary
FROM job_postings_fact 
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id 
where job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home IS TRUE
GROUP BY skills
ORDER BY
    avg_salary DESC
LIMIT 25 

/*
Here is a breakdown for the results of the top paying skills analysis
-Data analysts are evolving into data engineers: High-paying roles heavily feature tools like PySpark, Databricks, and Apache Airflow — meaning companies now value people who can build and manage data pipelines, not just analyse data.
-Analytics is merging with machine learning and cloud: Skills like scikit-learn and Google Cloud Platform show that top-paying roles expect you to predict outcomes and deploy solutions at scale, not just report insights.
-Engineering + analytics = highest pay: Tools such as GitLab and Kubernetes indicate that analysts who work like engineers (automation, version control, production systems) are the ones breaking into £100k+ roles
*/