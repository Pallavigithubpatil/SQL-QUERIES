SET SERVEROUTPUT ON;

DECLARE
V_A NUMBER(10);
V_B NUMBER(10);
V_C NUMBER(10);
ONE_DIVIDE  EXCEPTION;
BEGIN
V_A:=&A;
V_B:=&B;
IF V_B=1 THEN
RAISE ONE_DIVIDE;
END IF;
V_C:=V_A/V_B;
DBMS_OUTPUT.PUT_LINE(V_C);
EXCEPTION
WHEN ZERO_DIVIDE THEN
DBMS_OUTPUT.PUT_LINE('ZERO DIVIDE');
WHEN ONE_DIVIDE THEN
DBMS_OUTPUT.PUT_LINE('ONE DIVIDE');
WHEN OTHERS THEN 
DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DECLARE
   custom_exception EXCEPTION;
BEGIN
   -- Attempt to divide by zero
   DBMS_OUTPUT.PUT_LINE(10 / 0);
EXCEPTION
   WHEN ZERO_DIVIDE THEN
      DBMS_OUTPUT.PUT_LINE('Division by zero error');
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

