SET SERVEROUTPUT ON
ACCEPT entrada PROMPT 'Introduce un numero entre 1 y 15';

DECLARE 
    vVocal NUMBER;
    vConsonante NUMBER;
    TYPE vocales IS VARRAY(5) OF CHAR(1);
    vVocales vocales:=vocales('a','e','i','o','u');
    TYPE consonantes IS VARRAY(21) OF CHAR(1) ;
    vConsonantes consonantes:=consonantes('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z');
    vResultado VARCHAR2(30):='';
    vEntrada NUMBER(2):=('&entrada');
BEGIN
    IF vEntrada <= 15 AND vEntrada >=1 THEN
        for vContador in 1..vEntrada loop
            vVocal:=(DBMS_RANDOM.VALUE(1,5));
            vConsonante:=(DBMS_RANDOM.VALUE(1,21));
            vResultado:=CONCAT(vResultado,vVocales(vVocal));
            vResultado:=CONCAT(vResultado,vConsonantes(vConsonante));
        end loop;
    DBMS_OUTPUT.PUT_LINE(vResultado);
    ELSE
    DBMS_OUTPUT.PUT_LINE('El numero introducido es superior a 15');
    END IF;

END;