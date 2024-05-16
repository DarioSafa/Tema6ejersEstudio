--6.6 Programa un bloque PL/SQL que pida una cadena por teclado y la muestre en mayúsculas, en minúsculas y con las vocales minúsculas eliminadas.
SET SERVEROUTPUT ON;
ACCEPT cadena PROMPT 'Introduce una cadena por teclado';

DECLARE
    vCadena VARCHAR2(50):=('&cadena');
BEGIN
    -- quitar los espacios
    DBMS_OUTPUT.PUT_LINE( 'CADENA BASE: '|| vCadena);
    DBMS_OUTPUT.PUT_LINE( 'MAYUSCULAS: '|| UPPER(vCadena));
    DBMS_OUTPUT.PUT_LINE( 'MINUSCULAS: '|| LOWER(vCadena));
    DBMS_OUTPUT.PUT_LINE( 'Eliminando las vocales minusculas: '|| REGEXP_REPLACE(vCadena,'[a,e,i,o,u]',''));

END;