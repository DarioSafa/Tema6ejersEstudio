SET SERVEROUTPUT ON;

--FORMA CON LOOP
DECLARE 
    vNumMultiplos NUMBER:=0;
    vNum NUMBER:=3;
    vNumLimite NUMBER:=100;
    vNumAumento NUMBER:=1;
    vNumRecorrer NUMBER:=1;
    vModulo NUMBER;

BEGIN

    LOOP
        vModulo:=MOD(vNumRecorrer,vNum);
        IF vModulo=0 THEN vNumMultiplos:=vNumMultiplos+1;
        END IF;
        vNumRecorrer:=vNumRecorrer+vNumAumento;
        EXIT WHEN vNumRecorrer > vNumLimite;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Existen ' || TO_CHAR(vNumMultiplos) || ' numeros multiplos de 3 entre el 1 y 100');
END;

--FORMA CON FOR
DECLARE

    vNumMultiplos NUMBER:=0;
    vNum NUMBER:=3;
    vNumLimite NUMBER:=100;
    vNumAumento NUMBER:=1;
    vNumRecorrer NUMBER:=1;
    vModulo NUMBER;
BEGIN
    FOR vNumRecorrer IN vNumAumento..vNumLimite LOOP
        vModulo:=MOD(vNumRecorrer,vNum);
        IF vModulo=0 THEN vNumMultiplos:=vNumMultiplos+1;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Existen ' || TO_CHAR(vNumMultiplos) || ' numeros multiplos de 3 entre el 1 y 100');
END;
