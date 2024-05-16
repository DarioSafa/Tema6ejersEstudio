CREATE TABLE tblEmpleadoAux(
    CODEMP NUMBER(2),
    NOMBRE VARCHAR(10),
    APE1 VARCHAR(10),
    APE2 VARCHAR(10),
    CONSTRAINT PK_CODEMP PRIMARY KEY (CODEMP)
);

SET SERVEROUTPUT ON;
SET SERVERINPUT ON;
ACCEPT entrada PROMPT 'Cuantos numeros de empleados quieres introducir';
DECLARE
    vNumReg NUMBER;
    vCodigo NUMBER:=1;W
    vNombre tblEmpleadoAux.NOMBRE%TYPE;
    vApe1 tblEmpleadoAux.APE1%TYPE;
    vApe2 tblEmpleadoAux.APE2%TYPE;


BEGIN
    vNumReg:=('&entrada');
    FOR vCodigo IN 1..vNumReg LOOP
    DBMS_OUTPUT.PUT_LINE('Introduce el nombre del empleado' || vContador);
    DBMS_OUTPUT.GET_LINE(vNombre);

    DBMS_OUTPUT.PUT_LINE('Introduce el nombre del empleado' || vContador);
    DBMS_OUTPUT.GET_LINE(vApe1);
    DBMS_OUTPUT.PUT_LINE('Introduce el nombre del empleado' || vContador);
    DBMS_OUTPUT.GET_LINE(vApe2);
    INSERT INTO tblEmpleadoAux(NOMBRE,APE1,APE2) VALUES (vNombre,vApe1,vApe2);
    END LOOP;
END;