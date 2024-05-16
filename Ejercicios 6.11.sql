SET SERVEROUTPUT ON;
DECLARE 
    vContador NUMBER:=1;
BEGIN
    LOOP
            vContador:=vContador+1;
            DBMS_OUTPUT.PUT_LINE('Valor del contador: ' || vContador);
            EXIT WHEN vContador = 10;        -- El error era que ponia exit mientras que contador sea < que 0

    END LOOP;
                DBMS_OUTPUT.PUT_LINE('El bucle ha finalizado porque el contador vale: ' || vContador);
END;
/
--EJEMPLO CON FOR
DECLARE 
    vContador NUMBER;
BEGIN
    FOR vContador IN 1..10 LOOP
            DBMS_OUTPUT.PUT_LINE('Valor del contador: ' || vContador);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('El bucle ha finalizado porque el contador vale: ' || vContador);
END;