DELIMITER $$
DROP PROCEDURE OF EXISTS insertar_d;
CREATE PROCEDURE insertar_d(
IN _p_nombre VARCHAR(30),
IN _p_precio NUMERIC(6,2),
IN _p_tipo VARCHAR(30)
OUT _p_confirm INT
)
BEGIN
    INSERT INTO dispositivos (idproducto, desc_producto, precio,tipo)
    VALUES (_v_id_prod, _p_nombre, _p_precio,_p_tipo);
    --
    IF ROW_COUNT() > 0 THEN
        SET _p_confirm = 1;
    ELSE
        SET _p_confirm = 0;
    END IF;
END$$
DELIMITER ;