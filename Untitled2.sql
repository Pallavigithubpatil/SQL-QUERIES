select  * from emp;

select ename
from emp
where length(ename)=5;
/
select sal*12 as sal
from emp
order by sal desc;
/
select deptno, max(sal)
from emp
group by deptno;
/
select ename
from emp
where deptno=10 and sal > (select max(sal)
from emp
where deptno <>10);
/
select substr('oracle',2,3)
from dual;
/
select first_name,manager_id
from employees;
/
select e1.first_name,e2.first_name
from employees e1,employees e2
where e1.manager_id =e2.employee_id;
/
select count(*)
from  employees e1,employees e2
where e1.manager_id=e2.employee_id and e1.salary>e2.salary;
/
select  first_name,hire_date
from employees
where hire_date >=trunc(sysdate)-30;
/
select first_name
from employees
where first_name like '_o%';
/
select hire_date
from employees
where hire_date like '%dec%';
/
select sal*10/100+com as comm
from dual;
/
select   * 
from (select emp.* ,rownum as r
from emp)
where r in (5,6,7);


/
select replace('Hansen','Han','Nil')
from dual;
/
update employees
set last_name='Hansen'
where last_name='Nilsen';
/

create table Players1(
player_id number primary key,
name varchar(10)
);
/
insert all
into Players1 values(01,'xyz')
into Players1 values(02,'Lane')
into Players1 values(03,'Alger')
select * from dual;
/
select * from scores;
/
select name,sum(score)
from players1 p1,scores s1
where p1.player_id=s1.player_no
group by name;
/
create table hall_of_name1(
year1 number,
sport varchar(40),
winner varchar(40)
);
insert all 
into  hall_of_name1 values(2019,'football','abc')
into  hall_of_name1 values(2019,'chess','PQR')
into  hall_of_name1 values(2019,'cricket','VK')
into  hall_of_name1 values(2019,'baseball','VP')
into  hall_of_name1 values(2019,'long jump','SP')
into  hall_of_name1 values(2019,'swimming','PP')
into  hall_of_name1 values(2019,'baseball','wdck')
select * from dual;
/
select year1,winner,sport
from  hall_of_name1
where sport !='football'
minus
select year1,winner,sport
from  hall_of_name1
where sport ! ='cricket';
/
select year1,sport,winner
from hall_of_name1
where sport not in('football','cricket');
/
create table students87(
Rollno number,
name varchar(60),
dept varchar(40),
per number
);
/
insert all
into students87 values(1,'xyz',101,90)
into students87 values(2,'abc',102,80)
into students87 values(3,'jfj',103,78)
into students87 values(4,'xybchv',104,89)
into students87 values(5,'bvjv',105,50)
into students87 values(6,'jnvj',106,90)

into students87 values(7,'jndfvj',106,90)

into students87 values(8,'jnvj',106,90)

select * from dual;

/
select * 
Rank()over(partition by dept order by per)
from students87;
/
select *
from students87
order by per desc;
/
select rollno,name,dept,per,
first_value(per)
over(partition by dept order by per desc) as first_val
from students87;
/
select dept,name,per,ranks
from(select dept,name,per,rank() over(partition by dept order by per desc)
as ranks
from students87)
where ranks <=2;
/
select * from emp;
/
select sal,ename,ranks
from (select sal,ename,rank() over (partition by deptno order by sal desc) as ranks
from emp)
where ranks <=2;
/
SELECT *
FROM (SELECT STUDENTS87.*,ROW_NUMBER() OVER(PARTITION BY DEPT ORDER BY PER DESC) AS RANK
FROM STUDENTS87)STUDENTS87
WHERE RANK <=2;
/
SELECT * FROM(SELECT EMP.*,ROW_NUMBER() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC) RANK FROM EMP)EMP 
WHERE RANK<=2;
/
CREATE TABLE PPPP AS
SELECT * FROM STUDENTS87
WHERE 1!=0;
/
CREATE TABLE PPPPP AS
SELECT * FROM STUDENTS87
WHERE 1=0;
/
SELECT * FROM PPPPP;
/
SELECT  * FROM EMP;
INSERT INTO EEEEEEE SELECT * FROM EMP;
/
SELECT * INTO PPP FROM EMP;
/

INSERT INTO PPPPPP('PALLAVI','JOBS')
SELECT ENAME,JOBS
FROM EMP;
/
SELECT * INTO PPPPP FROM STUDENTS87;






