-- Nuevos inserts para la tabla marcas
INSERT INTO marcas (nombre_marca, procedencia) SELECT 'LABOREX', 'Perú' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'LABOREX');
INSERT INTO marcas (nombre_marca, procedencia) SELECT 'BIOTECH', 'Estados Unidos' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'BIOTECH');
INSERT INTO marcas (nombre_marca, procedencia) SELECT 'MERCK', 'Alemania' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'MERCK');

-- Nuevos inserts para la tabla productos
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) SELECT 'Asa De Siembra', 'Instrumento de laboratorio para siembra de microorganismos.', 15.50, 1, '' WHERE NOT EXISTS (SELECT 1 FROM productos WHERE nombre_producto = 'Asa De Siembra');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) SELECT 'Crioviales', 'Tubos para almacenamiento a bajas temperaturas.', 50.00, 3, '' WHERE NOT EXISTS (SELECT 1 FROM productos WHERE nombre_producto = 'Crioviales');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) SELECT 'Estufa De Laboratorio', 'Estufa para secado y esterilización de material.', 1200.00, 1, '' WHERE NOT EXISTS (SELECT 1 FROM productos WHERE nombre_producto = 'Estufa De Laboratorio');

-- Nuevos inserts para usuario test
INSERT INTO users (username, password, superuser, email, ruc_dni_cliente, telefono, direccion_fiscal, anulado)
SELECT 'root', 'rootpass', TRUE, 'admin@email.com', '00000000', '000000000', 'Avenida Principal n°456', FALSE
WHERE NOT EXISTS (SELECT 1 FROM users WHERE username = 'root');
