SET SERVEROUTPUT ON
DECLARE    
    vn1 NUMBER(4,2):=10.1;
    vn2 NUMBER(4,2):=20.25;
    vn3 NUMBER(4,2):=203.3;     --Podriamos poner NUMBER(5,2) para que entren las 3 cifras enteras que queremos meter
    vn4 NUMBER(4,2):=20.41;
BEGIN
    DBMS_OUTPUT.PUT_LINE('LA SUMA ES: ' || TO_CHAR(vn1+vn2+vn3+vn4));
END;
/