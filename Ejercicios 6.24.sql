--PRODECIMIENTO

create or replace PROCEDURE CONTARVOCALES(iCadena in VARCHAR2) IS

    vCadena VARCHAR2(100):=iCadena;
    vNumVocales NUMBER:=0;
    vLetra CHAR(1);

BEGIN

    FOR vContador in 1..LENGTH(vCadena) LOOP
        vLetra:=SUBSTR(vCadena,vContador,1);
        if(LOWER(vLetra)IN('a','e','i','o','u')) THEN
            vNumVocales:=vNumVocales+1;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Numero de vocales: '|| vNumVocales);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error en el codigo');
END;

--PROGRAMA

SET SERVEROUTPUT ON

ACCEPT entrada PROMPT 'Introduce una frase para contar sus vocales';
DECLARE
    vContar VARCHAR(50):=('&entrada');
BEGIN

    CONTARVOCALES(vContar);

END;