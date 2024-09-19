CONSULTAS DML
  Estas consultas se utilizan para manipular y consultar los datos en las tablas.
1.Insertar un nuevo usuario: 
   INSERT INTO Usuario (Nombre_Usuario, Contraseña, Rol)
VALUES ('Juan Pérez', 'contraseña123', 'Guardia');
2. Insertar un nuevo estudiante:
INSERT INTO Estudiante (Nombre, Apellido, ID_Institucional)
VALUES ('Ana', 'Gómez', 'EST12345');
3. Insertar un nuevo instructor:
INSERT INTO Instructor (Nombre, Apellido, ID_Institucional)
VALUES ('Carlos', 'López', 'INS67890');
4. Insertar una nueva persona externa:
INSERT INTO Persona_Externa (Nombre, Apellido, Identificación, Motivo_Visita)
VALUES ('Luis', 'Martínez', '123456789', 'Visita de trabajo');
5. Insertar un objeto tecnológico:
INSERT INTO Objeto_Tecnologico (Tipo, Marca, Numero_Serie, Descripción)
VALUES ('Laptop', 'HP', 'SN987654', 'Laptop para uso académico');
6. Registrar un ingreso:
INSERT INTO Registro_Ingreso (Fecha_Hora_Ingreso, Codigo_Registro, ID_Usuario, Tipo_Persona, ID_Persona)
VALUES (NOW(), 'REG001', 1, 'Estudiante', 1);
7. Consultar todos los usuarios:
SELECT * FROM Usuario;
8. Consultar los ingresos registrados:
SELECT R.ID_Registro, R.Fecha_Hora_Ingreso, U.Nombre_Usuario, P.Nombre AS Nombre_Persona
FROM Registro_Ingreso R
LEFT JOIN Usuario U ON R.ID_Usuario = U.ID_Usuario
LEFT JOIN Estudiante P ON R.ID_Persona = P.ID_Estudiante;
9. Actualizar el estado de un objeto tecnológico:
UPDATE Inventario_Objetos
SET Estado = 'Dañado', Observaciones = 'Pantalla rota'
WHERE ID_Objeto = 1 AND ID_Registro = 1;
10. Eliminar un registro de ingreso:
DELETE FROM Registro_Ingreso
WHERE ID_Registro = 1;