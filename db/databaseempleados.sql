DROP DATABASE IF EXISTS gestion_proyectos;
CREATE DATABASE gestion_proyectos;

USE gestion_proyectos;

-- Crear la tabla Usuario
CREATE TABLE Usuario (
    id_usu INT NOT NULL,
    contrasena_usu VARCHAR(255) NOT NULL,
    nombres_usu VARCHAR(100) NOT NULL,
    apellidos_usu VARCHAR(100) NOT NULL,
    direccion_usu VARCHAR(255),
    telefono_usu VARCHAR(20),
    email_usu VARCHAR(100),
    rol_usu ENUM('admin', 'coordinador', 'estudiante', 'director', 'evaluador'),
    PRIMARY KEY (id_usu)
);

-- Crear la tabla Proyecto
CREATE TABLE Proyecto (
    id_pro INT AUTO_INCREMENT PRIMARY KEY,
    descripcion_pro TEXT,
    titulo_pro VARCHAR(255) NOT NULL,
    id_coordinador INT,
    estado_coordinador ENUM('pendiente', 'aprobado', 'rechazado'),
    id_estudiante INT,
    estado_estudiante ENUM('pendiente', 'aprobado', 'rechazado'),
    id_director INT,
    estado_director ENUM('pendiente', 'aprobado', 'rechazado'),
    id_evaluador INT,
    estado_evaluador ENUM('pendiente', 'aprobado', 'rechazado'),
    FOREIGN KEY (id_coordinador) REFERENCES Usuario(id_usu),
    FOREIGN KEY (id_estudiante) REFERENCES Usuario(id_usu),
    FOREIGN KEY (id_director) REFERENCES Usuario(id_usu),
    FOREIGN KEY (id_evaluador) REFERENCES Usuario(id_usu)
);


-- Insertar usuarios
INSERT INTO Usuario (id_usu, contrasena_usu, nombres_usu, apellidos_usu, direccion_usu, telefono_usu, email_usu, rol_usu) VALUES
(1, 'admin123', 'Admin', 'Admin', 'Calle Principal 123', '123456789', 'admin@example.com', 'admin'),
(2, 'coordinador123', 'Juan', 'Pérez', 'Avenida Central 456', '987654321', 'juan.perez@example.com', 'coordinador'),
(3, 'coordinador456', 'María', 'González', 'Calle Secundaria 789', '654123789', 'maria.gonzalez@example.com', 'coordinador'),
(4, 'estudiante123', 'Pedro', 'Martínez', 'Calle de los Estudiantes 101', '456789123', 'pedro.martinez@example.com', 'estudiante'),
(5, 'estudiante456', 'Laura', 'López', 'Avenida de las Flores 202', '789456321', 'laura.lopez@example.com', 'estudiante'),
(6, 'director123', 'Carlos', 'Sánchez', 'Calle de los Directores 303', '321654987', 'carlos.sanchez@example.com', 'director'),
(7, 'director456', 'Ana', 'Ramírez', 'Avenida de las Aprobaciones 404', '987321654', 'ana.ramirez@example.com', 'director'),
(8, 'evaluador123', 'Javier', 'Fernández', 'Calle de los Evaluadores 505', '159753852', 'javier.fernandez@example.com', 'evaluador'),
(9, 'evaluador456', 'Sofía', 'García', 'Avenida de las Evaluaciones 606', '357951852', 'sofia.garcia@example.com', 'evaluador');

-- Insertar proyectos con asignaciones de usuarios
INSERT INTO Proyecto (descripcion_pro, titulo_pro, id_coordinador, estado_coordinador, id_estudiante, estado_estudiante, id_director, estado_director, id_evaluador, estado_evaluador) VALUES
('Proyecto sobre inteligencia artificial', 'IA en aplicaciones móviles', 2, 'aprobado', 4, 'pendiente', 6, 'pendiente', 8, 'pendiente'),
('Proyecto sobre energías renovables', 'Energía solar en zonas urbanas', 3, 'aprobado', 5, 'pendiente', 7, 'pendiente', 9, 'pendiente'),
('Proyecto sobre salud pública', 'Prevención de enfermedades cardiovasculares', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Proyecto sobre desarrollo web', 'Nueva plataforma de aprendizaje online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Proyecto sobre inteligencia artificial', 'Aplicaciones de IA en la agricultura', 3, 'pendiente', 5, 'pendiente', 7, 'pendiente', 9, 'pendiente'),
('Proyecto sobre inteligencia artificial', 'IA en sistemas de transporte público', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Proyecto sobre energías renovables', 'Energía eólica en áreas urbanas', 2, 'pendiente', 4, 'pendiente', 6, 'pendiente', 8, 'pendiente'),
('Proyecto sobre salud pública', 'Educación nutricional en comunidades rurales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Proyecto sobre desarrollo web', 'Plataforma de gestión de proyectos online', 3, 'pendiente', 5, 'pendiente', 7, 'pendiente', 9, 'pendiente'),
('Proyecto sobre inteligencia artificial', 'IA en el diagnóstico médico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
