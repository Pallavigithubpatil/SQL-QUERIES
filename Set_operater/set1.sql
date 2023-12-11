select * from employees;
/
select department_id 
from employees
minus
select department_id 
from employees
where job_title='stock_clerk';

 