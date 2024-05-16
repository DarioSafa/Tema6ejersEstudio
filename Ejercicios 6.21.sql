SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE BORRAR(i_dni in VARCHAR2) IS
    vDNI CONDUCTOR.DNI%TYPE:=i_dni;
BEGIN
    DELETE FROM CONDUCTOR WHERE DNI = vDNI;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error en el codigo');
END;


--SI LO LLAMAMOS DENTRO DE UN BEGIN USAMOS SOLO EL NOMBRE(PARAMETRO)


--SI LO LLAMAMOS FUERA DE CUALQUIER COSA HACEMOS
--CALL BORRAR('93606885J');  SIN DECLARE BEGIN END