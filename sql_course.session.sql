-- JANUARY
DROP TABLE IF EXISTS january;
CREATE TABLE january AS
    SELECT * 
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

-- FEBRUARY
DROP TABLE IF EXISTS february;
CREATE TABLE february AS
    SELECT * 
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

-- MARCH
DROP TABLE IF EXISTS march;
CREATE TABLE march AS
    SELECT * 
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT *
FROM MARCH;