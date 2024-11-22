-- Crear la tabla Usuario
CREATE TABLE Usuario (
    ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Usuario VARCHAR(50) NOT NULL,
    Contraseña VARCHAR(255) NOT NULL,
    Rol ENUM('Guardia', 'Supervisor') NOT NULL,
    Fecha_Registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Crear la tabla Estudiante
CREATE TABLE Estudiante (
    ID_Estudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    ID_Institucional VARCHAR(20) NOT NULL
);

-- Crear la tabla Instructor
CREATE TABLE Instructor (
    ID_Instructor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    ID_Institucional VARCHAR(20) NOT NULL
);

-- Crear la tabla Persona_Externa
CREATE TABLE Persona_Externa (
    ID_Persona_Externa INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Identificación VARCHAR(20) NOT NULL,
    Motivo_Visita VARCHAR(100)
);

-- Crear la tabla Objeto_Tecnologico
CREATE TABLE Objeto_Tecnologico (
    ID_Objeto INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(50) NOT NULL,
    Marca VARCHAR(50) NOT NULL,
    Numero_Serie VARCHAR(50) NOT NULL,
    Descripción TEXT
);

-- Crear la tabla Registro_Ingreso
CREATE TABLE Registro_Ingreso (
    ID_Registro INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Hora_Ingreso DATETIME NOT NULL,
    Codigo_Registro VARCHAR(20) NOT NULL,
    ID_Usuario INT,
    Tipo_Persona ENUM('Estudiante', 'Instructor', 'Persona_Externa'),
    ID_Persona INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Persona) REFERENCES Estudiante(ID_Estudiante),
    FOREIGN KEY (ID_Persona) REFERENCES Instructor(ID_Instructor),
    FOREIGN KEY (ID_Persona) REFERENCES Persona_Externa(ID_Persona_Externa)
);

-- Crear la tabla Inventario_Objetos
CREATE TABLE Inventario_Objetos (
    ID_Inventario INT AUTO_INCREMENT PRIMARY KEY,
    ID_Registro INT,
    ID_Objeto INT,
    Estado VARCHAR(50),
    Observaciones TEXT,
    FOREIGN KEY (ID_Registro) REFERENCES Registro_Ingreso(ID_Registro),
    FOREIGN KEY (ID_Objeto) REFERENCES Objeto_Tecnologico(ID_Objeto)
);

-- Crear la tabla Reporte
CREATE TABLE Reporte (
    ID_Reporte INT AUTO_INCREMENT PRIMARY KEY,
    ID_Supervisor INT,
    Fecha_Generacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Detalles_Reporte TEXT,
    FOREIGN KEY (ID_Supervisor) REFERENCES Usuario(ID_Usuario)
);