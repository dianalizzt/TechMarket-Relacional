-- ====================================================
-- 1. TABLAS INDEPENDIENTES (Sin llaves foráneas)
-- ====================================================

CREATE TABLE CATEGORIA (
    id_categoria VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT
);

CREATE TABLE PROVEEDOR (
    id_proveedor VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50),
    ciudad VARCHAR(50),        nnb
    email VARCHAR(100)
);

CREATE TABLE CLIENTE (
    id_cliente VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    ciudad VARCHAR(50),
    fecha_registro DATE,
    tipo VARCHAR(20)
);

-- ====================================================
-- 2. TABLAS DEPENDIENTES (Con llaves foráneas)
-- ====================================================

CREATE TABLE PRODUCTO (
    id_producto VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50), -- O id_categoria si prefieres enlazarlo a la tabla CATEGORIA
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    id_proveedor VARCHAR(10),
    FOREIGN KEY (id_proveedor) REFERENCES PROVEEDOR(id_proveedor)
);

CREATE TABLE PEDIDO (
    id_pedido VARCHAR(10) PRIMARY KEY,
    id_cliente VARCHAR(10),
    fecha DATE,
    estado VARCHAR(20),
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- ====================================================
-- 3. TABLAS DE DETALLE E INTERACCIÓN
-- ====================================================

CREATE TABLE DETALLE_PEDIDO (
    id_detalle VARCHAR(10) PRIMARY KEY,
    id_pedido VARCHAR(10),
    id_producto VARCHAR(10),
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);

CREATE TABLE PAGO (
    id_pago VARCHAR(10) PRIMARY KEY,
    id_pedido VARCHAR(10),
    metodo VARCHAR(30),
    estado_pago VARCHAR(20),
    monto DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido)
);

CREATE TABLE ENVIO (
    id_envio VARCHAR(10) PRIMARY KEY,
    id_pedido VARCHAR(10),
    paqueteria VARCHAR(30),
    estado_envio VARCHAR(20),
    fecha_entrega DATE,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido)
);

CREATE TABLE RESENA (
    id_resena VARCHAR(10) PRIMARY KEY,
    id_cliente VARCHAR(10),
    id_producto VARCHAR(10),
    calificacion INT,
    comentario TEXT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);