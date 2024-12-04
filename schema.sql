-- ###########################################################
-- DATABASE COURSE
-- Univalle / 2024-2
-- @Juanglar aka JuanCortesRo
-- OPCIONAL NUMERO 1 - PARTE PRACTICA
-- ###########################################################

-- Tabla de Vehiculo
CREATE TABLE Vehiculo (
    placa VARCHAR(10) PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    fecha_compra DATE NOT NULL,
    estado BOOLEAN NOT NULL,
    capacidad_pasajeros INT NOT NULL,
    tipo_vehiculo_id INT NOT NULL,
    nombre_ruta VARCHAR(20),
    FOREIGN KEY (tipo_vehiculo_id) REFERENCES Tipo_Vehiculo(tipo_id),
    FOREIGN KEY (nombre_ruta) REFERENCES Ruta(nombre_ruta)
);

-- Tabla de Tipo de Vehiculo
CREATE TABLE Tipo_Vehiculo (
    tipo_id INT PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL
);

-- Tabla de registro
CREATE TABLE Registro (
    registro_id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    nombre_ruta VARCHAR(20) NOT NULL,
    placa_vehiculo VARCHAR(10) NOT NULL,
    pasajeros_estimados INT NOT NULL,
    FOREIGN KEY (nombre_ruta ) REFERENCES Ruta(nombre_ruta),
    FOREIGN KEY (placa_vehiculo) REFERENCES Vehiculo(placa)
);

-- Tabla de Estación
CREATE TABLE Estacion (
    nombre_estacion VARCHAR(20) PRIMARY KEY,
    ubicacion_latitud DECIMAL(9,6) NOT NULL,
    ubicacion_longitud DECIMAL(9,6) NOT NULL,
    capacidad_max_pasajeros INT NOT NULL
);

-- Tabla de Ruta
CREATE TABLE Ruta (
    nombre_ruta VARCHAR(20) PRIMARY KEY,
    tiempo_promedio_recorrido INT NOT NULL
);

-- Tabla de Ruta-Estación (conecta)
CREATE TABLE Ruta_Estacion (
    nombre_ruta VARCHAR(20) NOT NULL,
    nombre_estacion VARCHAR(20) NOT NULL,
    PRIMARY KEY (nombre_ruta , nombre_estacion ),
    FOREIGN KEY (nombre_ruta) REFERENCES Ruta(nombre_ruta),
    FOREIGN KEY (nombre_estacion) REFERENCES Estacion(nombre_estacion)
);

-- Tabla de trabajador
CREATE TABLE Trabajador (
    trabajador_id VARCHAR(40) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    identificacion VARCHAR(20) UNIQUE NOT NULL,
    info_licencia TEXT,
    experiencia INT NOT NULL,
    rol_id INT NOT NULL,
    FOREIGN KEY (rol_id) REFERENCES Rol(rol_id),
);

-- Tabla para el tipo de trabajador
CREATE TABLE Rol (
    rol_id INT PRIMARY KEY,
    nombre_rol VARCHAR(20) NOT NULL
);

--Tabla de Visita
CREATE TABLE Visita (
    trabajador_id VARCHAR(40) NOT NULL,
    fecha_visita DATE NOT NULL,
    descripcion TEXT,
    vehiculo_id VARCHAR(10),
    nombre_estacion VARCHAR(20),
    FOREIGN KEY (trabajador_id) REFERENCES Trabajador(trabajador_id),
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculo(placa),
    FOREIGN KEY (estacion) REFERENCES Estacion(nombre_estacion)
);

