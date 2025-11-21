CREATE TABLE IF NOT EXISTS estudiante (
    id INT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    apellido VARCHAR(200) NOT NULL,
    codigo VARCHAR(10) UNIQUE,
    fecha_nacimiento DATE NOT NULL
);



--CREATE TABLE IF NOT EXISTS productos (
--    id_producto INT PRIMARY KEY AUTO_INCREMENT,
--    cod_producto VARCHAR(255) UNIQUE,
--    descripcion VARCHAR(150),
--    um INT,
--    vencimiento DATE,
--    cantidad DECIMAL(10,2),
--    almacen INT,
--    marca VARCHAR(255),
--    procedencia INT
--);


----------------------------------------------------------------------------------------------
------------- Shemas para mi ecommerce ------------------------------------------------
----------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
  id_user INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  superuser BOOLEAN NOT NULL DEFAULT FALSE,
  email VARCHAR(100) UNIQUE,
  ruc_dni_cliente VARCHAR(15) UNIQUE,
  telefono VARCHAR(12),
  direccion_fiscal VARCHAR(255),
  anulado BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS marcas (
  id_marca INT PRIMARY KEY AUTO_INCREMENT,
  nombre_marca VARCHAR(100) UNIQUE NOT NULL,
  procedencia VARCHAR(200),
  anulado BOOLEAN NOT NULL DEFAULT FALSE,
  link_imaguen VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS productos (
  id_producto INT PRIMARY KEY AUTO_INCREMENT,
  nombre_producto VARCHAR(255) NOT NULL,
  descripcion TEXT,
  precio DECIMAL(10,2) NOT NULL,
  id_marca INT,
  link_imaguen VARCHAR(200),
  anulado BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS documento_venta (
  id_documento INT PRIMARY KEY AUTO_INCREMENT,
  razon_social VARCHAR(150) NOT NULL,
  nro_serie VARCHAR(10) NOT NULL,
  nro_documento VARCHAR(20) NOT NULL,
  direccion_entrega VARCHAR(255),
  referencia VARCHAR(255),
  total DECIMAL(10,2) NOT NULL,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  fecha_vencimiento DATE,
  fecha_entrega DATE,
  id_user INT
);

CREATE TABLE IF NOT EXISTS detalle_documento_venta (
  id_detalle INT PRIMARY KEY AUTO_INCREMENT,
  id_documento INT,
  id_producto INT,
  cantidad INT NOT NULL,
  precio_unitario DECIMAL(10,2) NOT NULL,
  subtotal DECIMAL(10,2) NOT NULL
);

ALTER TABLE productos ADD FOREIGN KEY (id_marca) REFERENCES marcas(id_marca);

ALTER TABLE detalle_documento_venta ADD FOREIGN KEY (id_documento) REFERENCES documento_venta(id_documento);

ALTER TABLE detalle_documento_venta ADD FOREIGN KEY (id_producto) REFERENCES productos(id_producto);

ALTER TABLE documento_venta ADD FOREIGN KEY (id_user) REFERENCES users(id_user);

