INSERT INTO marcas (nombre_marca, procedencia) VALUES ('LABOREX', 'Perú');
INSERT INTO marcas (nombre_marca, procedencia) VALUES ('BIOTECH', 'Estados Unidos');
INSERT INTO marcas (nombre_marca, procedencia) VALUES ('MERCK', 'Alemania');

--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('ASA001', 'Asa De Siembra', 1, '2025-12-31', 50.00, 1, 'LABOREX', 1);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('RCK001', 'Rack Para Crioviales', 1, '2026-06-30', 25.00, 1, 'BIOTECH', 2);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('CRV001', 'Crioviales', 100, '2025-08-15', 500.00, 1, 'MERCK', 1);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('EST001', 'Estufa De Laboratorio', 1, '2027-03-20', 2.00, 2, 'LABOREX', 3);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('TUB001', 'Tubo De Ensayo', 1, '2025-11-10', 100.00, 1, 'BIOTECH', 2);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('AGR001', 'Agar Mac Conkey', 500, '2024-09-30', 15.00, 3, 'MERCK', 1);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('TAM001', 'Tamiz De 5 Pulgadas', 1, '2026-02-28', 8.00, 2, 'LABOREX', 3);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('ESC001', 'Escurridor De Laboratorio', 1, '2025-12-15', 12.00, 1, 'BIOTECH', 2);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('CAR001', 'Carboy De 20 LT', 1, '2026-05-30', 6.00, 2, 'MERCK', 1);
--
--INSERT INTO productos
-- (cod_producto, descripcion, um, vencimiento, cantidad, almacen, marca, procedencia)
-- VALUES ('MAT001', 'Matraz De Vidrio De 500 ML', 1, '2025-10-20', 30.00, 1, 'LABOREX', 2);

-- Nuevos inserts para la tabla productos con la nueva estructura
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) VALUES ('Asa De Siembra', 'Instrumento de laboratorio para siembra de microorganismos.', 15.50, 1, '');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) VALUES ('Crioviales', 'Tubos para almacenamiento a bajas temperaturas.', 50.00, 3, '');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) VALUES ('Estufa De Laboratorio', 'Estufa para secado y esterilización de material.', 1200.00, 1, '');
