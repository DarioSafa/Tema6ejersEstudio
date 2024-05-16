SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER;
BEGIN

    SELECT COUNT(*) INTO v_num FROM PRODUCTOS;
    DBMS_OUTPUT.PUT_LINE('Existen un total de ' || TO_CHAR(v_num) || ' filas en esta tabla');

END;
