DELIMITER $$
DROP PROCEDURE IF EXISTS borrar_d;
CREATE PROCEDURE borrar_producto(
in _p_id_dispositivo INT,
OUT _p_confirm INT
)
BEGIN
    DELETE FROM dispositivos
    WHERE _p_id_dispositivo = _p_id_dispositivo;
    --
    IF ROW_COUNT() > 0 THEN
        SET _p_confirm = 1;
    ELSE
        SET _p_confirm = 0;
    END IF;
END$$
DELIMITER ;

