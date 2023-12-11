set serveroutput on;
select * from qwerty11;
declare 
v_deptno qwerty11.deptno%type :=&departmentnumber;
begin
update qwerty11
set sal=1500
where deptno=v_deptno;
dbms_output.put_line(sql%rowcount||'row was updated');
if sql%notfound
then
dbms_output.put_line(' data not found');
end if;
end;
/
-------------------------------------------------------------------------------
declare 
v_deptno qwerty11.deptno%type :=&departmentnumber;
begin
delete  from  qwerty11
where deptno=v_deptno;
dbms_output.put_line(sql%rowcount||'row was deleted');
if sql%notfound
then
dbms_output.put_line(' data not found');
end if;
end;
/
create table qwerty12
as 
select * from employees;

-----------------------------------------------------------------------------------------------------------
declare 
cursor c2 is select * from qwerty11;
v_data c2%rowtype;
begin
open c2;
loop
fetch c2  into v_data;
exit when c2%notfound;
dbms_output.put_line(v_data.empno);
end loop;
close c2;
end;
/
select * from qwerty12;
/
declare 
v_empdata  qwerty12%rowtype;
cursor c2 is select * from qwerty12;

begin
open c2;
dbms_output.put_line('employee detils');
loop
fetch c2 into v_empdata;
exit when c2%notfound;
dbms_output.put_line(rpad(v_empdata.employee_id,10)||' '||rpad(v_empdata.first_name,8)||' '||lpad(v_empdata.last_name,12)|| '  '||lpad(v_empdata.salary*12,15));
end loop;
close c2;
end;
/
---------------------------------------------------------------------------------------------------------------------------------------------------------
declare
v_rowcount number:=0;
v_empdata  qwerty12%rowtype;
cursor c3 is select * from qwerty12;
begin
open c3;
fetch c3 into v_empdata ;
exit when c1%notfound;
v_rowcount := c3%rowcount;
if c3.job_id =3
then
dbms_output.put_line(rpad(c3.employee_id,12)||rpad(c3.hiredate,13));
else
dbms_output.put_line('not found');
end if;
v_rowcount:=v_rowcount+1;
end loop;
dbms_output.put_line(v_rowcount||'row count are ');
close c3;
end;
/






