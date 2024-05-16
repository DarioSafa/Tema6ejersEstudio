-- Crea un cursor para que almacene todas las matrículas de los autobuses de la base de datos
-- AUTOBUS, CONDUCTOR, VIAJES. Recorre el cursor y muestra por pantalla todos los valores que
-- contiene. Utiliza FETCH – WHILE
SET SERVEROUTPUT ON
DECLARE

    CURSOR cMatriculas IS
        SELECT AUTOBUS.MATRICULA
        FROM AUTOBUS;
        
    vMatricula AUTOBUS.MATRICULA%TYPE;
    vContador NUMBER:=0;

BEGIN
    SELECT COUNT(*) INTO vContador FROM AUTOBUS;
    OPEN cMatriculas;
    LOOP
        FETCH cMatriculas INTO vMatricula;
        DBMS_OUTPUT.PUT_LINE('Matricula: ' ||vMatricula);
        EXIT WHEN cMatriculas%ROWCOUNT = vContador;
        END LOOP;
    CLOSE cMatriculas;
END;

-- Crea un cursor para que almacene todas las matrículas de los autobuses de la base de datos
-- AUTOBUS, CONDUCTOR, VIAJES. Recorre el cursor y muestra por pantalla todos los valores que
-- contiene. Utiliza FETCH – WHILE
SET SERVEROUTPUT ON
DECLARE

    CURSOR cMatriculas IS
        SELECT AUTOBUS.MATRICULA
        FROM AUTOBUS;
        
    vMatricula AUTOBUS.MATRICULA%TYPE;

BEGIN
    OPEN cMatriculas;
    FETCH cMatriculas INTO vMatricula;
    WHILE cMatriculas%FOUND LOOP
        DBMS_OUTPUT.PUT_LINE('Matricula: ' ||vMatricula);
        FETCH cMatriculas INTO vMatricula;
        END LOOP;
    CLOSE cMatriculas;
END;

-- Crea un cursor para que almacene todas las matrículas de los autobuses de la base de datos
--AUTOBUS, CONDUCTOR, VIAJES. Recorre el cursor y muestra por pantalla todos los valores que
--contiene. Utiliza FOR

SET SERVEROUTPUT ON
DECLARE
    CURSOR cMatriculas IS
        SELECT AUTOBUS.MATRICULA
        FROM AUTOBUS;

        rMatricula cMatriculas%ROWTYPE;

BEGIN
    FOR rMatricula IN cMatriculas LOOP
        DBMS_OUTPUT.PUT_LINE('Matricula: '|| rMatricula.matricula);  --Nombre de la consulta, si el select tiene alias habrá que acceder con el nombre del alias
    END LOOP;
END;

--Crea un cursor que almacene todos los viajes de tipo público. Se quieren actualizar del valor
--PUBLICO al valor PRIVADO. Crea un cursor para que actualice uno a uno todos los valores que
--almacene en él. Utiliza FOR UPDATE OF.

SET SERVEROUTPUT ON
DECLARE
    CURSOR cMatriculas IS
        SELECT VIAJES.TIPO
        FROM VIAJES
        WHERE TIPO='PUBLICO' FOR UPDATE OF TIPO;

        rTipo cMatriculas%ROWTYPE;

BEGIN
    FOR rTipo IN cMatriculas LOOP
        IF rTipo.tipo is not null then
        update VIAJES set tipo='PRIVADO' 
        where current of cMatriculas;
        END IF;
    END LOOP;
END;

--y para darle la vuelta pues sería
SET SERVEROUTPUT ON
DECLARE
    CURSOR cMatriculas IS
        SELECT VIAJES.TIPO
        FROM VIAJES
        WHERE TIPO='PRIVADO' FOR UPDATE OF TIPO;

        rTipo cMatriculas%ROWTYPE;

BEGIN
    FOR rTipo IN cMatriculas LOOP
        update VIAJES set tipo='PUBLICO' 
        where current of cMatriculas;
    END LOOP;
END;