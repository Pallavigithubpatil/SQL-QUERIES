select * from employees;
SELECT * FROM COUNTRIES
/

select jobs_id,department_id
from employees;
union all
select jobs_id,department_id
from employees
where department_id in(10,50,20);

--in employees table we are not having department 10,50,20

select jobs_id,department_id
from employees
where department_id =106
union all
select jobs_id,department_id
from employees
where department_id =109
union all
select jobs_id,department_id
from employees
where department_id =114;

