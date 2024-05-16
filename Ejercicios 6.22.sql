--PROCEDIMIENTO:

create or replace FUNCTION producto(i_numFila IN NUMBER)RETURN VARCHAR2 IS
    vNumFila productos.id%type:=i_numFila;
    vID PRODUCTOS.ID%TYPE;
    vNombre PRODUCTOS.NOMBRE%TYPE;
    vPrecio PRODUCTOS.PRECIO%TYPE;
    vID_fabricante PRODUCTOS.ID_FABRICANTE%TYPE;
    vResultado VARCHAR2(100);
BEGIN

    SELECT * INTO vID,vNombre,vPrecio,vID_fabricante FROM PRODUCTOS WHERE PRODUCTOS.ID = vNumFila;
    vResultado:= 'ID: ' || vID||' | Nombre: ' || vNombre|| ' | Precio: ' || vPRecio|| ' | ID del fabricante: ' || vID_fabricante;
    RETURN vResultado;
EXCEPTION

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No se han encontrado datos');
END;

--LUEGO PARA LLAMAR 

declare

    vDatosProducto VARCHAR2(100);

begin

    vDatosProducto:=PRODUCTO(1);
    DBMS_OUTPUT.PUT_LINE(vDatosProducto);
    
end;

--SI LO LLAMAMOS DENTRO DE UN CONTEXTO HACEMOS

--variable:=FUNCION(PARAMETRO)

-- SI QUEREMOS LLAMAR FUERA DE CONTEXTO USAMOS
-- SELECT PRODUCTO(1) FROM DUAL;