select * from employees;
SELECT * FROM COUNTRIES
select * from depart;
/

select country_id,country_name
FROM countries
minus
select country_id,country_name
FROM countries
where country_id in(select country_id
from depart);


--here i am using diffrent tables

select countryname, countryid from country 
MINUS
select countryname, countryid from country where departmentid is not null;


