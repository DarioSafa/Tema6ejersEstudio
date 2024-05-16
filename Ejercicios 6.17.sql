SET SERVEROUTPUT ON

DECLARE 

    TYPE numHijos IS VARRAY(10) OF VARCHAR2(10) ;
    vHijos numHijos:=numHijos('Eva','Lucia','Juan');

BEGIN

    vHijos.extend(7);
    vHijos(9):='David';
    
    for vContador in 1..vHijos.limit loop
        vHijos(vContador):=NVL(vHijos(vContador),'Vacío');  --NVL cambia el valor de los datos que sean null al segundo parametro
        DBMS_OUTPUT.PUT_LINE(vHijos(vContador));
    end loop;

END;

--FORMA 2

DECLARE 

    TYPE numHijos IS VARRAY(10) OF VARCHAR2(10) ;
    vHijos numHijos:=numHijos('Eva','Lucia','Juan');

BEGIN

    vHijos.extend(7);
    vHijos(9):='David';
    
    for vContador in 1..vHijos.limit loop
        IF vHijos(vContador) IS NULL THEN
            vHijos(vContador):='Vacío';
        END IF;
        DBMS_OUTPUT.PUT_LINE(vHijos(vContador));
    end loop;

END;
