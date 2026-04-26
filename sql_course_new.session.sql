CREATE TABLE Job_applied_new
(
    Job_id INT,
    Application_sent_date DATE,
    Custom_resume boolean,
    Resume_file_name varchar(255),
    Cover_letter_sent boolean,
    Cover_letter_file_name varchar(255),
    Status varchar(50)
);

SELECT *
FROM Job_applied_new;