-- ====================================================
-- INSERTS DE CATEGORÍAS (10 registros)
-- ====================================================
INSERT INTO CATEGORIA VALUES ('K01','Computo','Equipos de computo');
INSERT INTO CATEGORIA VALUES ('K02','Accesorios','Perifericos y accesorios');
INSERT INTO CATEGORIA VALUES ('K03','Audio','Audio personal');
INSERT INTO CATEGORIA VALUES ('K04','Componentes','Almacenamiento y componentes');
INSERT INTO CATEGORIA VALUES ('K05','Muebles','Mobiliario');
INSERT INTO CATEGORIA VALUES ('K06','Redes','Conectividad');
INSERT INTO CATEGORIA VALUES ('K07','Oficina','Articulos de oficina');
INSERT INTO CATEGORIA VALUES ('K08','Impresion','Impresoras');
INSERT INTO CATEGORIA VALUES ('K09','Energia','No-breaks y cargadores');
INSERT INTO CATEGORIA VALUES ('K10','Gaming','Productos para jugadores');

-- ====================================================
-- INSERTS DE PROVEEDORES (10 registros)
-- ====================================================
INSERT INTO PROVEEDOR VALUES ('A01','TechMayor','Computo','CDMX','contacto@tech.com');
INSERT INTO PROVEEDOR VALUES ('A02','Perifericos MX','Accesorios','Puebla','ventas@perimx.com');
INSERT INTO PROVEEDOR VALUES ('A03','AudioPlus','Audio','Monterrey','hola@audioplus.com');
INSERT INTO PROVEEDOR VALUES ('A04','StoragePro','Componentes','Guadalajara','info@storage.com');
INSERT INTO PROVEEDOR VALUES ('A05','MueblesPro','Muebles','Toluca','ventas@muebles.com');
INSERT INTO PROVEEDOR VALUES ('A06','Gadgets YA','Accesorios','Queretaro','soporte@gadgets.com');
INSERT INTO PROVEEDOR VALUES ('A07','RedesNet','Redes','CDMX','redes@net.com');
INSERT INTO PROVEEDOR VALUES ('A08','OfficeMaxi','Oficina','Puebla','office@maxi.com');
INSERT INTO PROVEEDOR VALUES ('A09','PrintWorld','Impresion','CDMX','print@world.com');
INSERT INTO PROVEEDOR VALUES ('A10','EnergiaPC','Energia','Toluca','energia@pc.com');

-- ====================================================
-- INSERTS DE CLIENTES (13 registros - Añadidos C011-C013 para volumen)
-- ====================================================
INSERT INTO CLIENTE VALUES ('C001','Ana Torres','ana@correo.com','CDMX','2024-01-15','Premium');
INSERT INTO CLIENTE VALUES ('C002','Luis Ramos','luis@correo.com','Puebla','2024-02-03','Regular');
INSERT INTO CLIENTE VALUES ('C003','Marta Diaz','marta@correo.com','CDMX','2024-03-11','Premium');
INSERT INTO CLIENTE VALUES ('C004','Diego Lopez','diego@correo.com','Toluca','2024-04-01','Regular');
INSERT INTO CLIENTE VALUES ('C005','Sofia Cruz','sofia@correo.com','Guadalajara','2024-05-22','Premium');
INSERT INTO CLIENTE VALUES ('C006','Pablo Mena','pablo@correo.com','CDMX','2024-06-19','Regular');
INSERT INTO CLIENTE VALUES ('C007','Elena Ruiz','elena@correo.com','Queretaro','2024-07-09','Regular');
INSERT INTO CLIENTE VALUES ('C008','Raul Vega','raul@correo.com','Monterrey','2024-08-30','Premium');
INSERT INTO CLIENTE VALUES ('C009','Ivonne Leon','ivonne@correo.com','CDMX','2024-09-12','Regular');
INSERT INTO CLIENTE VALUES ('C010','Oscar Luna', NULL,'Puebla','2024-10-05','Regular');
INSERT INTO CLIENTE VALUES ('C011','Carlos Slim','carlos@correo.com','CDMX','2024-11-01','Premium');
INSERT INTO CLIENTE VALUES ('C012','Diana Avendaño','diana@correo.com','CDMX','2024-11-15','Premium');
INSERT INTO CLIENTE VALUES ('C013','Hector Gomez','hector@correo.com','Puebla','2024-12-01','Regular');

-- ====================================================
-- INSERTS DE PRODUCTOS (12 registros - Añadidos P011-P012)
-- ====================================================
INSERT INTO PRODUCTO VALUES ('P001','Laptop Nova','Computo',14500.00,8,'A01');
INSERT INTO PRODUCTO VALUES ('P002','Mouse Optico','Accesorios',180.00,70,'A02');
INSERT INTO PRODUCTO VALUES ('P003','Teclado Mecanico','Accesorios',950.00,35,'A02');
INSERT INTO PRODUCTO VALUES ('P004','Monitor 24','Computo',3200.00,14,'A01');
INSERT INTO PRODUCTO VALUES ('P005','Audifonos Air','Audio',1250.00,20,'A03');
INSERT INTO PRODUCTO VALUES ('P006','Bocina Mini','Audio',650.00,40,'A03');
INSERT INTO PRODUCTO VALUES ('P007','SSD 1TB','Componentes',1700.00,17,'A04');
INSERT INTO PRODUCTO VALUES ('P008','Memoria USB 64GB','Accesorios',160.00,100,'A04');
INSERT INTO PRODUCTO VALUES ('P009','Silla Gamer','Muebles',3800.00,6,'A05');
INSERT INTO PRODUCTO VALUES ('P010','Camara Web HD','Accesorios',720.00,25,'A02');
INSERT INTO PRODUCTO VALUES ('P011','Router WiFi 6','Redes',2100.00,15,'A07');
INSERT INTO PRODUCTO VALUES ('P012','No-Break 1000VA','Energia',1850.00,10,'A10');

-- ====================================================
-- INSERTS DE PEDIDOS (11 registros - Añadido O011)
-- ====================================================
INSERT INTO PEDIDO VALUES ('O001','C001','2025-01-10','Pagado',15130.00);
INSERT INTO PEDIDO VALUES ('O002','C002','2025-01-11','Enviado',1130.00);
INSERT INTO PEDIDO VALUES ('O003','C003','2025-01-12','Pagado',4900.00);
INSERT INTO PEDIDO VALUES ('O004','C004','2025-01-20','Cancelado',650.00);
INSERT INTO PEDIDO VALUES ('O005','C005','2025-02-02','Pagado',3980.00);
INSERT INTO PEDIDO VALUES ('O006','C006','2025-02-15','Pendiente',1700.00);
INSERT INTO PEDIDO VALUES ('O007','C007','2025-03-05','Pagado',2160.00);
INSERT INTO PEDIDO VALUES ('O008','C008','2025-03-18','Enviado',18300.00);
INSERT INTO PEDIDO VALUES ('O009','C009','2025-04-01','Pagado',880.00);
INSERT INTO PEDIDO VALUES ('O010','C010','2025-04-06','Pendiente',3200.00);
INSERT INTO PEDIDO VALUES ('O011','C012','2025-04-10','Pagado',2100.00);

-- ====================================================
-- INSERTS DE DETALLE_PEDIDO (19 registros - Añadidos D018-D019)
-- ====================================================
INSERT INTO DETALLE_PEDIDO VALUES ('D001','O001','P001',1,14500.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D002','O001','P002',2,180.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D003','O002','P003',1,950.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D004','O002','P002',1,180.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D005','O003','P004',1,3200.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D006','O003','P007',1,1700.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D007','O004','P006',1,650.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D008','O005','P009',1,3800.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D009','O005','P002',1,180.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D010','O006','P007',1,1700.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D011','O007','P010',3,720.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D012','O008','P001',1,14500.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D013','O008','P009',1,3800.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D014','O009','P008',2,160.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D015','O009','P002',2,180.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D016','O009','P010',1,720.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D017','O010','P004',1,3200.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D018','O011','P011',1,2100.00);
INSERT INTO DETALLE_PEDIDO VALUES ('D019','O001','P003',1,950.00);

-- ====================================================
-- INSERTS DE PAGOS (11 registros)
-- ====================================================
INSERT INTO PAGO VALUES ('G001','O001','Tarjeta','Aprobado',15130.00);
INSERT INTO PAGO VALUES ('G002','O002','Transferencia','Aprobado',1130.00);
INSERT INTO PAGO VALUES ('G003','O003','Tarjeta','Aprobado',4900.00);
INSERT INTO PAGO VALUES ('G004','O004','Tarjeta','Reembolsado',650.00);
INSERT INTO PAGO VALUES ('G005','O005','PayPal','Aprobado',3980.00);
INSERT INTO PAGO VALUES ('G006','O006','Efectivo','Pendiente',1700.00);
INSERT INTO PAGO VALUES ('G007','O007','Tarjeta','Aprobado',2160.00);
INSERT INTO PAGO VALUES ('G008','O008','Tarjeta','Aprobado',18300.00);
INSERT INTO PAGO VALUES ('G009','O009','Transferencia','Aprobado',880.00);
INSERT INTO PAGO VALUES ('G010','O010','Efectivo','Pendiente',3200.00);
INSERT INTO PAGO VALUES ('G011','O011','Tarjeta','Aprobado',2100.00);

-- ====================================================
-- INSERTS DE ENVÍOS (11 registros)
-- ====================================================
INSERT INTO ENVIO VALUES ('E001','O001','DHL','Entregado','2025-01-14');
INSERT INTO ENVIO VALUES ('E002','O002','FedEx','En transito','2025-01-16');
INSERT INTO ENVIO VALUES ('E003','O003','DHL','Entregado','2025-01-17');
INSERT INTO ENVIO VALUES ('E004','O005','Estafeta','Entregado','2025-02-07');
INSERT INTO ENVIO VALUES ('E005','O007','DHL','Entregado','2025-03-09');
INSERT INTO ENVIO VALUES ('E006','O008','FedEx','En transito','2025-03-25');
INSERT INTO ENVIO VALUES ('E007','O009','Estafeta','Entregado','2025-04-05');
INSERT INTO ENVIO VALUES ('E008','O010','DHL','Pendiente',NULL);
INSERT INTO ENVIO VALUES ('E009','O006','DHL','Pendiente',NULL);
INSERT INTO ENVIO VALUES ('E010','O004','N/A','Cancelado',NULL);
INSERT INTO ENVIO VALUES ('E011','O011','DHL','En transito','2025-04-12');

-- ====================================================
-- INSERTS DE RESEÑAS (11 registros)
-- ====================================================
INSERT INTO RESENA VALUES ('R001','C001','P001',5,'Excelente');
INSERT INTO RESENA VALUES ('R002','C002','P003',4,'Bueno');
INSERT INTO RESENA VALUES ('R003','C003','P004',5,'Muy claro');
INSERT INTO RESENA VALUES ('R004','C005','P009',4,'Comoda');
INSERT INTO RESENA VALUES ('R005','C006','P007',5,'Rapido');
INSERT INTO RESENA VALUES ('R006','C007','P010',3,'Regular');
INSERT INTO RESENA VALUES ('R007','C008','P001',5,'Potente');
INSERT INTO RESENA VALUES ('R008','C009','P008',4,'Util');
INSERT INTO RESENA VALUES ('R009','C010','P004',3,'Pendiente');
INSERT INTO RESENA VALUES ('R010','C001','P002',4,'Funciona');
INSERT INTO RESENA VALUES ('R011','C012','P011',5,'Excelente velocidad');