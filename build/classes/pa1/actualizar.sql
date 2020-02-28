DELIMITER $$
DROP PROCEDURE IF EXISTS actualizar_d;
CREATE PROCEDURE actualizar_d(
in _p_id_dispositivo INT,
IN _p_nombre VARCHAR(30),
IN _p_precio NUMERIC(6,2),
IN _p_tipo VARCHAR(30)
OUT _p_confirm INT
)
BEGIN
    UPDATE dispositivos
        SET desc_producto = _p_nombre,
        precio = _p_precio,
         tipo=_p_tipo
    WHERE idproducto = _p_id_producto;
    --
    IF ROW_COUNT() > 0 THEN
        SET _p_confirm = 1;
    ELSE
        SET _p_confirm = 0;
    END IF;
END$$
DELIMITER ;