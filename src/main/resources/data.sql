-- Nuevos inserts para la tabla marcas
INSERT INTO marcas (nombre_marca, procedencia, anulado, link_imaguen, descripcion) SELECT 'Isolab', 'Alemania', FALSE, '/img/6e94eea0c1e9a710159baccea3949d701e18846b94bd501de2c61903d17a4b6e.webp', 'El gigante Aleman con un vasto catalogo' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'Isolab');
INSERT INTO marcas (nombre_marca, procedencia, anulado, link_imaguen, descripcion) SELECT 'Trasons', 'India', FALSE, '/img/0d5a26c49a6d25b5d4a08fa14b917e2fd0c2f603e6a74d8c86c73e6ad3d2acd3.webp', 'La mejor marca de plásticos de la India' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'Trasons');
INSERT INTO marcas (nombre_marca, procedencia, anulado, link_imaguen, descripcion) SELECT 'Biobase', 'China', FALSE, '/img/12a0bebb6a4fee590afe519d934358c755565a88ffd1c187fc56d1e8d8d1bba5.webp', 'La mejor marca de China para equipo medico' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'Biobase');
INSERT INTO marcas (nombre_marca, procedencia, anulado, link_imaguen, descripcion) SELECT 'Radwag', 'Perú', FALSE, '/img/f9809b1426c3252f591c7495a9412684176ea4c2c4544c24343d75154bef7dc4.webp', 'El mayor fabricante de balanzas' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'Radwag');
INSERT INTO marcas (nombre_marca, procedencia, anulado, link_imaguen, descripcion) SELECT 'Merck miliopore', 'Perú', FALSE, '/img/55289f6ff5a9fcf7535fcfb2e97f8612923fee7098b05524288a72059f701b59.webp', 'El mayor fabricante de reactivos en Latam' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'Merck miliopore');
INSERT INTO marcas (nombre_marca, procedencia, anulado, link_imaguen, descripcion) SELECT 'Himedila laboritories', 'India', FALSE, '/img/00debfd0836f5500f696d83e4335dabec30389f0e6d638ab9cafb8884e31d80c.webp', 'Fabricante de la India' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE nombre_marca = 'Himedila laboritories');

-- Nuevos inserts para la tabla productos
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) SELECT 'Asa De Siembra', 'Instrumento de laboratorio para siembra de microorganismos.', 15.50, 1, '' WHERE NOT EXISTS (SELECT 1 FROM productos WHERE nombre_producto = 'Asa De Siembra');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) SELECT 'Crioviales', 'Tubos para almacenamiento a bajas temperaturas.', 50.00, 3, '' WHERE NOT EXISTS (SELECT 1 FROM productos WHERE nombre_producto = 'Crioviales');
INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen) SELECT 'Estufa De Laboratorio', 'Estufa para secado y esterilización de material.', 1200.00, 1, '' WHERE NOT EXISTS (SELECT 1 FROM productos WHERE nombre_producto = 'Estufa De Laboratorio');

-- Nuevos inserts para usuario test
INSERT INTO users (username, password, superuser, email, ruc_dni_cliente, telefono, direccion_fiscal, anulado)
SELECT 'root', 'rootpass', TRUE, 'admin@email.com', '00000000', '000000000', 'Avenida Principal n°456', FALSE
WHERE NOT EXISTS (SELECT 1 FROM users WHERE username = 'root');
