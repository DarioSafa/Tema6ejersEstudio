SET SERVEROUTPUT ON;
ACCEPT vDom1in PROMPT 'Introduce el primer domicilio';
ACCEPT vDom2in PROMPT 'Introduce el primer domicilio';
ACCEPT vDom3in PROMPT 'Introduce el primer domicilio';
ACCEPT vDom4in PROMPT 'Introduce el primer domicilio';

DECLARE
    
    vDom1 VARCHAR2(50):=UPPER('&vDom1in');
    vDom2 VARCHAR2(50):=UPPER('&vDom2in');
    vDom3 VARCHAR2(50):=UPPER('&vDom3in');
    vDom4 VARCHAR2(50):=UPPER('&vDom4in');
    
BEGIN
    -- quitar los espacios
    vDom1:= REGEXP_REPLACE(vDom1,'\s','');
    vDom2:= REGEXP_REPLACE(vDom2,'\s','');
    vDom3:= REGEXP_REPLACE(vDom3,'\s','');
    vDom4:= REGEXP_REPLACE(vDom4,'\s','');
    DBMS_OUTPUT.PUT_LINE('EN MAYUSCULAS Y SIN ESPACIOS');
    DBMS_OUTPUT.PUT_LINE(vDom1);
    DBMS_OUTPUT.PUT_LINE(vDom2);
    DBMS_OUTPUT.PUT_LINE(vDom3);
    DBMS_OUTPUT.PUT_LINE(vDom4);

END;