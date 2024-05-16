
--PROCEDIMIENTO

create or replace PROCEDURE ELIMINARESPACIOS(iCadena in VARCHAR2) IS
    vCadena VARCHAR2(50):=iCadena;
    vSinEspacios VARCHAR2(50);

BEGIN

    vSinEspacios:=REGEXP_REPLACE(vCadena,'\s','');
    DBMS_OUTPUT.PUT_LINE(vSinEspacios);
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error en el codigo');
END;

--PROGRAMA 

SET SERVEROUTPUT ON;

ACCEPT entrada PROMPT 'Introduce una frase';
DECLARE

    vEliminar VARCHAR(50):=('&entrada');

BEGIN
º
    ELIMINARESPACIOS(vEliminar);

END;