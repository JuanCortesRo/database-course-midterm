-- ###########################################################
-- DATABASE COURSE
-- Univalle / 2024-2
-- @Juanglar aka JuanCortesRo
-- OPCIONAL NUMERO 1 - PARTE PRACTICA
-- ###########################################################

-- Records to Tipo_vehiculo (Bus, Camioneta and Automovil)
INSERT INTO Tipo_Vehiculo (tipo_id, tipo) VALUES
(1, 'Bus'),
(2, 'Camioneta'),
(3, 'Automóvil');

-- Records to Empleados Rol (Conductor and Operario)
INSERT INTO Rol (rol_id, nombre_rol) VALUES
(1, 'Conductor'),
(2, 'Operario');

-- 5 records to Vehiculo (Buses)
INSERT INTO Vehiculo (placa, modelo, fecha_compra, estado, capacidad_pasajeros, tipo_vehiculo_id, ruta_id) VALUES 
('AEI969', 'Mercedes 2018', '2023-01-15', TRUE, 50, 1, NULL),
('BCD802', 'Mercedes 2020', '2021-09-10', TRUE, 60, 1, NULL),
('ABC093', 'Mercedes 2014', '2020-05-25', FALSE, 50, 1, NULL),
('OMG584', 'Mercedes 2020', '2022-06-30', TRUE, 55, 1, NULL),
('WOW035', 'Mercedes 2020', '2024-02-01', TRUE, 70, 1, NULL);


-- 3 records to Tranajador (Conductores)
INSERT INTO Trabajador (trabajador_id, nombre_completo, identificacion, info_licencia, experiencia, rol_id) VALUES 
('1234561203juco', 'Juan Cortés', '1234561203', 'Licencia A2', 5, 1),
('2344654321mago', 'María Gomez', '2344654321', 'Licencia C1', 8, 1),
('1107987654jura', 'Carlos Ramírez', '1107987654', 'Licencia B1', 3, 1);

-- 3 records to Trabajador (Operarios)
INSERT INTO Trabajador (trabajador_id, nombre_completo, identificacion, info_licencia, experiencia, rol_id) VALUES 
(‘1107091203luco’, 'Luis Cortés’, ‘1107091203’, NULL, 4, 2),
('1114239347lasa', 'Laura Salazar', '1114239347', NULL, 6, 2),
('1111541899mica', 'Miguel Casanova', '1111541899', NULL, 2, 2);


-- 5 records to Estación (5 for each type)
-- Terminal type
INSERT INTO Estacion (nombre_estacion, ubicacion_latitud, ubicacion_longitud, capacidad_max_pasajeros) VALUES 
('Terminal Andrés Sanín', 3.4507, -76.5192, 2000),
('Terminal Menga', 3.4938, -76.5123, 2000),
('Terminal Paso del Comercio', 3.4790, -76.5012, 3000),
('Terminal Aguablanca', 3.4245, -76.4857, 2500),
('Terminal Sur', 3.4201, -76.5317, 4000);
-- Intermedias type
INSERT INTO Estacion (nombre_estacion, ubicacion_latitud, ubicacion_longitud, capacidad_max_pasajeros) VALUES 
('Terminal Intermedia Cañaveralejo', 3.4215, -76.5363, 3500),
('Terminal Intermedia Calipso', 3.4375, -76.4868, 3000),
('Terminal Intermedia Simón Bolívar', 3.4457, -76.4993, 3200),
('Terminal Intermedia Centro', 3.4520, -76.5350, 4000);
-- Parada type
INSERT INTO Estacion (nombre_estacion, ubicacion_latitud, ubicacion_longitud, capacidad_max_pasajeros) VALUES 
('San Pascual', 3.4511, -76.5327, 400),
('Sucre', 3.4520, -76.5310, 450),
('Petecuy', 3.4540, -76.5302,300),
('San Pedro', 3.4555, -76.5290, 300),
('La Ermita', 3.4567, -76.5280, 230);

-- 6 records to Visitas 
-- mantenimiento a estaciones
INSERT INTO Visita (trabajador_id, fecha_visita, descripcion, vehiculo_id, nombre_estacion) VALUES
('1111541899mica', '2024-12-01', 'Mantenimiento general de la infraestructura', NULL, 'Terminal Andrés Sanín'),
(‘1107091203luco’, '2024-12-02', 'Revisión de sistema eléctrico', NULL, 'Terminal Intermedia Cañaveralejo'),
('1114239347lasa', '2024-12-03', 'Limpieza y desinfección', NULL, 'San Pascual');

-- mantenimiento vehículos
INSERT INTO Visita (trabajador_id, fecha_visita, descripcion, vehiculo_id, nombre_estacion) VALUES
(‘1107091203luco’, '2024-12-01', 'Cambio de aceite y revisión de motor', 'AEI969', NULL),
('1114239347lasa', '2024-12-02', 'Revisión del sistema de frenos', 'WOW035', NULL),
(‘1107091203luco’, '2024-12-03', 'Inspección de suspensión y neumáticos', 'OMG584', NULL)

-- 3 records to rutas
INSERT INTO Ruta (nombre_ruta, tiempo_promedio_recorrido) VALUES
('Ruta Troncal Centro', 45),
('Ruta Troncal Sur', 60),
('Ruta Troncal Norte', 50);
