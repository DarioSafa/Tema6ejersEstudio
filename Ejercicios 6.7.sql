SET SERVEROUTPUT ON;

DECLARE

    vCodigo NUMBER:=1;
    vAlumnos NUMBER;
    vAlumnosAprobados NUMBER;
    vPorcentajeAprobados NUMBER;
    
BEGIN

     SELECT COUNT(*) INTO vAlumnos FROM MATRICULA WHERE vCodigo = MATRICULA.CODASIG;
     SELECT COUNT(*) INTO vAlumnosAprobados FROM MATRICULA WHERE vCodigo = MATRICULA.CODASIG AND MATRICULA.NOTA > 5;
    
    vPorcentajeAprobados:= (vAlumbosAprobados/vAlumnos)*100;
    -- vPorcentajeAprobados:= 30;
    IF vPorcentajeAprobados > 85 THEN DBMS_OUTPUT.PUT_LINE('La evaluación de la asignatura con código 1 tiene muy buenos resultados.');
    ELSIF vPorcentajeAprobados > 70 THEN DBMS_OUTPUT.PUT_LINE('La evaluación de la asignatura con código 1 no tiene malos resultados.');
    ELSIF vPorcentajeAprobados <= 70 OR vPorcentajeAprobados >= 50 THEN DBMS_OUTPUT.PUT_LINE('La evaluación de la asignatura con código 1 podría estar mejor.');
    ELSIF vPorcentajeAprobados < 50 THEN DBMS_OUTPUT.PUT_LINE('La evaluación de la asignatura con código 1 tiene malos resultados.');
    END IF;

END;