SET SERVEROUTPUT ON
DECLARE    
    SUBTYPE subNum IS NUMBER(4,2);
    vn1 NUMBER(4,2):=DBMS_RANDOM.VALUE(0,100);
    vn2 NUMBER(4,2):=DBMS_RANDOM.VALUE(0,100);
    vn3 NUMBER(4,2):=DBMS_RANDOM.VALUE(0,100);
    vn4 NUMBER(4,2):=DBMS_RANDOM.VALUE(0,100);
BEGIN
    DBMS_OUTPUT.PUT_LINE('La suma de los números: ' || TO_CHAR(vn1) || ' + '|| TO_CHAR(vn2) || ' + '||TO_CHAR(vn3) || ' + '||TO_CHAR(vn4) || ' es: '||TO_CHAR(vn1+vn2+vn3+vn4));
END;
/


--EJEMPLO 2 CON SUNTIPOS
SET SERVEROUTPUT ON
DECLARE    
    SUBTYPE subNum IS NUMBER(4,2);
    vn1 subNum:=DBMS_RANDOM.VALUE(0,100);
    vn2 subNum:=DBMS_RANDOM.VALUE(0,100);
    vn3 subNum:=DBMS_RANDOM.VALUE(0,100);
    vn4 subNum:=DBMS_RANDOM.VALUE(0,100);
BEGIN
    DBMS_OUTPUT.PUT_LINE('La suma de los números: ' || TO_CHAR(vn1) || ' + '|| TO_CHAR(vn2) || ' + '||TO_CHAR(vn3) || ' + '||TO_CHAR(vn4) || ' es: '||TO_CHAR(vn1+vn2+vn3+vn4));
END;
/