CREATE TABLE IF NOT EXISTS estudiante (
    id INT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    apellido VARCHAR(200) NOT NULL,
    codigo VARCHAR(10) UNIQUE,
    fecha_nacimiento DATE NOT NULL
);



CREATE TABLE IF NOT EXISTS productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    cod_producto VARCHAR(255) UNIQUE,
    descripcion VARCHAR(150),
    um INT,
    vencimiento DATE,
    cantidad DECIMAL(10,2),
    almacen INT,
    marca VARCHAR(255),
    procedencia INT
);




