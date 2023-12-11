set SERVEROUTPUT on;
DECLARE
    v_str1 VARCHAR(20) := :str1;
    v_str2 VARCHAR(20) := :str2;
    v_res  VARCHAR(20);
BEGIN
    IF
        ( regexp_like(v_str1, '[0-9]') )
        AND regexp_like(v_str2, '[0-9]')
    THEN
        v_res := v_str1 + v_str2;
    ELSE
        v_res := v_str1 || v_str2;
    END IF;
 
    dbms_output.put_line(v_res);
END;
---------------------------------------------------------------------add numbers----------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION AddTwoNumbers(
    num1 IN NUMBER,
    num2 IN NUMBER
) RETURN NUMBER IS
    result number;
BEGIN
    result := num1 + num2;
    RETURN result;
END AddTwoNumbers;
/
DECLARE
    result NUMBER;
BEGIN
    result := AddTwoNumbers(5, 3);
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
/
DECLARE
    result NUMBER;
BEGIN
    result := AddTwoNumbers(5, 0);
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;

DECLARE
    result NUMBER;
BEGIN
    result := AddTwoNumbers(-3, 7);
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
/
DECLARE
    result NUMBER;
BEGIN
    result := AddTwoNumbers(-2, -5);
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
/
DECLARE
    result NUMBER;
BEGIN
    result := AddTwoNumbers(3.5, 2);
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
/
DECLARE
    result NUMBER;
BEGIN
    result := AddTwoNumbers(2.25, 3.75);
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
/
-----------------------------------------------------------------------------------------------------------------------------------------------------
create or replace function fact(n in number)
return number is
result number :=1;
begin
if n < 0 then
return null;
elsif n=0 then
return 1;
else
for i in 1..n loop
result := result * i;
end loop;
return result;
end if;
end fact;
/

declare
result number;
begin
result:=fact(0);
dbms_output.put_line(result);
end;
/
declare
result number;
begin
result:=fact(5);
dbms_output.put_line(result);
end;
/
declare
result number;
begin
result:=fact(-3);
dbms_output.put_line(result);
end;
/
declare
result number;
begin
result:=fact(10);
dbms_output.put_line(result);
end;
/

