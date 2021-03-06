use Martinica_decoraciones
/*usuarios
	... rol   activo
	    admin
		user*/
select * from usuarios
/*productos
	productos
		id_prod descripcion precio_unitario*/

CREATE TABLE productos (
    id_prod int IDENTITY(1,1) PRIMARY KEY,
    descripcion varchar(50),
    precio_unitario real NOT NULL
);

insert into productos (descripcion, precio_unitario) values ('cortina',40)
select * from productos

-- aca está!!! query para top 10 de productos más vendidos desde tabla det_prod_ven
select * from productos
select top 10 sum(precio_unitario) as cant, descripcion from productos group by descripcion order by cant desc

/*ventas
	ventas
		id_venta id_cliente id_det_prod_ven id_det_pag fecha total saldada
select * from ventas order by id_venta desc
/*
ventas
id_venta	Código_Cliente	fecha		total	saldada
1			23				2020-11-08	1000	0

det_prod_ven
id_det_prod_ven id_venta	id_producto cantidad	descripcion
1				1			4			7			almohadas
2				1			2			3			frazadas

det_pag
id_det_pag	id_venta	tipo_form_pag	monto	fecha
1			1			0				100		2020-11-08
2			1			1				900		2020-11-15

*/
-- Hay que ver si tenemos tiempo de cambiar los tildes y demas porque tenemos cosas enlazadas de sus tablas como el id del cliente que es el codigo_cliente de su tabla de clientes*/
ALTER TABLE ventas
ALTER COLUMN fecha varchar(10);
CREATE TABLE ventas ( 
	id_venta int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Código_Cliente INT CONSTRAINT FK_Código_Cliente_ventas FOREIGN KEY(Código_Cliente) REFERENCES Clientes(Código_Cliente),
	fecha varchar(10),
	total real,
	saldada int --saldada puse int porq facu habia dicho que podiamos ponerle -1 a falso y 0 a verdadero o algo asi, sino ponemos boolean
);
/*
detalle de productos de ventas
	det_prod_ven
		id_det_prod_ven id_venta id_producto cantidad descripcion
*/
CREATE TABLE det_prod_ven(
	id_det_prod_ven int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	id_venta INT CONSTRAINT FK_id_venta_1 FOREIGN KEY (id_venta) REFERENCES ventas (id_venta), 
	id_prod INT CONSTRAINT FK_id_prod_1 FOREIGN KEY (id_prod) REFERENCES productos (id_prod),
	cantidad real,
	descripcion varchar(50)
);
--select top 10 sum(precio_unitario) as cant, descripcion from productos group by descripcion order by cant desc
insert into det_prod_ven (cantidad, descripcion) values (1,'p1') 
insert into det_prod_ven (cantidad, descripcion) values (4,'p3') 
insert into det_prod_ven (cantidad, descripcion) values (2,'p5') 
insert into det_prod_ven (cantidad, descripcion) values (5,'p7') 
insert into det_prod_ven (cantidad, descripcion) values (3,'p9') 
insert into det_prod_ven (cantidad, descripcion) values (6,'p2') 
insert into det_prod_ven (cantidad, descripcion) values (4,'p4') 
insert into det_prod_ven (cantidad, descripcion) values (7,'p6') 
insert into det_prod_ven (cantidad, descripcion) values (5,'p8') 
insert into det_prod_ven (cantidad, descripcion) values (8,'p10') 
insert into det_prod_ven (cantidad, descripcion) values (6,'p11') 
insert into det_prod_ven (cantidad, descripcion) values (9,'p1') 
insert into det_prod_ven (cantidad, descripcion) values (7,'p2') 
insert into det_prod_ven (cantidad, descripcion) values (8,'p3') 
insert into det_prod_ven (cantidad, descripcion) values (1,'p4') 
SELECT
    TOP 10 descripcion AS 'Descripción',
	SUM(cantidad) AS Cantidad
FROM
    det_prod_ven 
GROUP BY
    descripcion 
ORDER BY
    Cantidad DESC

insert into clientes (DNI,Nombre,Apellido) values (35140762,'facu','rozada')
insert into clientes (DNI,Nombre,Apellido) values (40015783,'mate','dspablo')
insert into clientes (DNI,Nombre,Apellido) values (40190395,'mik','sensino')

/*detalles de pagos de las ventas
	det_pag
		id_det_pag id_venta tipo_form_pag monto fecha*/
ALTER TABLE det_pag
ALTER COLUMN fecha varchar(10);
CREATE TABLE det_pag(
	id_det_pag int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	id_venta INT CONSTRAINT FK_id_venta_2 FOREIGN KEY(id_venta) REFERENCES ventas (id_venta),
	tipo_form_pag INT CONSTRAINT FK_tipo_form_pag FOREIGN KEY(tipo_form_pag) REFERENCES form_pag(tipo_form_pag),
	monto real,
	fecha varchar(10)
);
/*caja diaria
	caja_diaria
		id_cd fecha efectivo tarjeta acumulado*/

drop table caja_diaria
CREATE TABLE cajaDiaria(
	id_cd int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	fecha varchar(10), 
	efectivo real,
	tarjeta real, 
	acumulado real
);
insert into cajaDiaria (fecha,efectivo,tarjeta,acumulado) values ('9/11/2020',0,0,15000)
/*egresos
	id_egreso fecha descripcion monto*/

CREATE TABLE egresos(
	id_egreso int IDENTITY(1,1) PRIMARY KEY NOT NULL, 
	fecha varchar(10), 
	descripcion varchar(50),
	monto real
);
select * from ventas
/*Y forma de pagos no lo entendi 
form_pag
	tipo_form_pag	descripcion 
	1				efectivo	
	2				tarjeta		
	*/

CREATE TABLE form_pag (
	tipo_form_pag INT PRIMARY KEY,
	descripcion VARCHAR(10)
);
insert into form_pag (tipo_form_pag,descripcion) values (0,'Efectivo')
insert into form_pag (tipo_form_pag,descripcion) values (1,'Tarjeta')
/*
				se�a
					ingresar pago
					insert a tabla
					total = x
					si total <= sum(forma de pago) entonces saldada = true
				pago final
					si no saldada, 
						si nueva forma de pago + suma(pagos anteriores) >= total
							insertar en detalles de forma de pago, relacionado por numero de comprobante
							update
							saldada true*/

/*
INSERT INTO Usuarios
VALUES (1,'a','a');
PENDIENTE AGREGAR CAMPOS admin (true/false) Y activo (true/false)
*/

select * from caja_diaria order by id_cd desc
select * from ventas where id_venta =       42
select * from det_prod_ven where id_venta = 42
select * from det_pag where id_venta =      42
select * from egresos
select * from productos

insert into productos (descripcion,precio_unitario) values ('tela',123)
insert into productos (descripcion,precio_unitario) values ('almohadón',234)
insert into productos (descripcion,precio_unitario) values ('cortina',345)
insert into productos (descripcion,precio_unitario) values ('fierro',456)
insert into productos (descripcion,precio_unitario) values ('cosito',567)
select * from det_pag
SELECT SUM(monto) AS total FROM det_pag WHERE tipo_form_pag = 0 and fecha = '9/11/2020'
--update det_pag set fecha = '8/11/2020' where id_det_pag in (2,3,4)

/*caja diaria
	caja_diaria
		id_cd fecha efectivo tarjeta acumulado*/
/*egresos
	id_egreso fecha descripcion monto*/
SELECT SUM(monto) AS total FROM egresos WHERE fecha = '9/11/2020'

select * from caja_diaria

SELECT TOP 1 acumulado AS acumuladoEfectivo FROM caja_diaria ORDER BY id_cd DESC
SELECT SUM(monto) AS ingresosEfectivo FROM det_pag WHERE tipo_form_pag = 0 and fecha = 

SELECT TOP 1 acumulado AS acumuladoEfectivo FROM caja_diaria ORDER BY id_cd DESC
select * from det_pag
SELECT SUM(monto) AS ingresosEfectivo FROM det_pag WHERE tipo_form_pag = 0 and fecha = '9/11/2020'
SELECT SUM(monto) AS ingresosTarjeta FROM det_pag WHERE tipo_form_pag = 1 and fecha = '9/11/2020'
SELECT SUM(monto) AS egresosEfectivo FROM egresos WHERE fecha = '9/11/2020'

select * from cajaDiaria
update cajaDiaria set fecha = '8/11/2020' where id_cd = 1
SELECT * FROM det_pag WHERE tipo_form_pag = 0 and fecha = '9/11/2020'
SELECT TOP 1 acumulado FROM cajaDiaria
UPDATE det_pag SET tipo_form_pag = 1 where id_det_pag > 9

SELECT COUNT(fecha) AS registrosDeHoy FROM cajaDiaria	WHERE fecha = '9/11/2020'
select * from det_prod_ven