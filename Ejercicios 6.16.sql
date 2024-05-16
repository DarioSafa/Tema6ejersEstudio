--6.16 Crea un bloque PL/SQL con una variable tipo tabla llamada TASA_IMPUESTOS que está compuesta
--por números con dos decimales colocados en columna para informar los valores de las diferentes tasas.
--Inicializa el valor de la primera tasa con 12.45, el de la segunda tasa 34.90, el de la tercera tasa con 44.00
--y la cuarta tasa con 30.21. Recuerda que para acceder a las diferentes filas hay que indicar el número
--de la fila.

SET SERVEROUTPUT ON;

DECLARE

    TYPE tTasa_impuestos IS TABLE OF NUMBER(4,2) INDEX BY BINARY_INTEGER;
    vTasa_impuestos tTasa_impuestos;
    vInicio NUMBER:= 0;
    
BEGIN

    vTasa_impuestos(0):=12.45;
    vTasa_impuestos(1):=34.90;
    vTasa_impuestos(2):=44.00;
    vTasa_impuestos(3):=30.21;
    
    FOR vContador IN vTasa_impuestos.first..(vTasa_impuestos.last) LOOP 
        IF vTasa_impuestos.EXISTS(vContador)=TRUE THEN
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(vTasa_impuestos(vContador)));
        END IF;
    END LOOP;

END;