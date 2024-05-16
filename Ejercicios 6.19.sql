SET SERVEROUTPUT ON

DECLARE

    TYPE t_tabla IS TABLE OF VARCHAR2(100) INDEX BY VARCHAR2(50);
    vtabla t_tabla;

BEGIN
    
    vtabla('a'):='hola';
    vtabla('b'):='hola 2';
    vtabla('c'):='adios';
    vtabla('d'):='amigo';
    DBMS_OUTPUT.PUT_LINE(vtabla('a'));
    DBMS_OUTPUT.PUT_LINE(vtabla('b'));
    DBMS_OUTPUT.PUT_LINE(vtabla('c'));
    DBMS_OUTPUT.PUT_LINE(vtabla('d'));
    
END;