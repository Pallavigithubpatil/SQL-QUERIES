select ename,jobs,sal,deptno, dense_rank() over( partition by deptno order by sal desc)as rnk
from emp;

select distinct sal
from(
select ename,jobs,sal ,deptno ,dense_rank() over(partition by deptno order by sal)
as rnk from emp)
where rnk<=5;

select sal,deptno,
lag(sal,1,0) over(partition by deptno order by sal desc)as prev_sal
from emp;
/
select ename,sal,deptno,
first_value(ename) over(partition by deptno order by sal desc) as sala
from emp;

select ename,sal,deptno,
last_value(ename) over(partition by deptno order by sal desc 
rows between unbounded preceding and unbounded FOLLOWING) as djjc
from emp;

select ename,sal,deptno,
min(sal)keep(dense_rank first order by sal)over(partition by deptno )as lowest,
max(sal)keep(dense_rank last order by deptno)over(partition by deptno) as highest
from emp
order by deptno,sal;


select  ename,jobs,sal,rank() over(order by sal desc)
from emp;

select ename,jobs,sal,deptno dense_rank() over( partition by deptno order by sal desc)
from emp;


select ename,sal,deptno,
LEAD(sal,1,0) over(partition by deptno order by sal desc)as next_sal
from emp;