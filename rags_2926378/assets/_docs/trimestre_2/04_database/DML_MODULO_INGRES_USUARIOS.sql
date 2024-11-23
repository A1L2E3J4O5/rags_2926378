
-- Registrar entrada del usuario:
INSERT INTO Registros (id_usuario, fecha, hora_entrada) 
VALUES (?, CURDATE(), CURTIME());

-- Registrar equipo tecnológico:
INSERT INTO Equipos (id_registro, tipo, marca, numero_serie) 
VALUES (?, ?, ?, ?);

-- Registrar salida del usuario:
UPDATE Registros 
SET hora_salida = CURTIME() 
WHERE id_registro = ?;

-- Consultar registros de un día:
SELECT u.nombre, u.apellidos, r.fecha, r.hora_entrada, r.hora_salida, e.tipo, e.marca, e.numero_serie
FROM Usuarios u
JOIN Registros r ON u.id_usuario = r.id_usuario
LEFT JOIN Equipos e ON r.id_registro = e.id_registro
WHERE r.fecha = ?;