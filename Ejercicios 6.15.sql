SET SERVEROUTPUT ON;
DECLARE
    TYPE rProducto IS RECORD(
        nombre PRODUCTOS.NOMBRE%TYPE,
        nombreFab FABRICANTES.NOMBRE%TYPE,
        categoria VARCHAR(40)
    );

    vLetra CHAR;
    vNumProductos NUMBER;
    vProducto rProducto;
    vNumLetra NUMBER;

BEGIN
    vProducto.nombre:='Impresora Profesional 769XM';
    vProducto.nombreFab:='Asus';
    vProducto.categoria:='Tarjetas de red';
    SELECT COUNT(PRODUCTOS.ID) INTO vNumProductos FROM PRODUCTOS, FABRICANTES WHERE FABRICANTES.ID = PRODUCTOS.ID_FABRICANTE AND FABRICANTES.NOMBRE = vProducto.nombreFab;
    DBMS_OUTPUT.PUT_LINE(vNumProductos);
    vLetra:= SUBSTR(vProducto.nombre,0,1);
    DBMS_OUTPUT.PUT_LINE(vLetra);
    SELECT COUNT(PRODUCTOS.ID) INTO vNumLetra FROM PRODUCTOS WHERE PRODUCTOS.NOMBRE LIKE ('%' || vLetra || '%');
    DBMS_OUTPUT.PUT_LINE(vNumLetra);
END;
