-- Nuevos inserts para la tabla marcas
INSERT INTO marcas (nombre_marca, procedencia) VALUES ('LABOREX', 'Perú');
INSERT INTO marcas (nombre_marca, procedencia) VALUES ('BIOTECH', 'Estados Unidos');
INSERT INTO marcas (nombre_marca, procedencia) VALUES ('MERCK', 'Alemania');

-- Nuevos inserts para la tabla productos
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) VALUES ('Asa De Siembra', 'Instrumento de laboratorio para siembra de microorganismos.', 15.50, 1, '');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) VALUES ('Crioviales', 'Tubos para almacenamiento a bajas temperaturas.', 50.00, 3, '');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) VALUES ('Estufa De Laboratorio', 'Estufa para secado y esterilización de material.', 1200.00, 1, '');

-- Nuevos inserts para usuario test
INSERT INTO users (id_user, username, password, superuser, email, ruc_dni_cliente, telefono, direccion_fiscal,anulado) VALUES (1, 'root', 'rootpass', TRUE, 'admin@email.com' , '00000000', '000000000', 'Avenida Principal n°456', FALSE);

