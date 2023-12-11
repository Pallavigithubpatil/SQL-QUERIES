select * from employees;
SELECT * FROM COUNTRIES
/




select EMPLOYEE_ID, jobs_id from employees where jobs_id in
(select jobs_id from(select jobs_id , job_title from employees
intersect
select jobs_id, job_title from jobs));




