select last_name, department_id, to_char(cjob_title) from employees
UNION ALL
select department_name, department_id, null as cjob_title from departments;

