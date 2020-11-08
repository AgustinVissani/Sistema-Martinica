/*
use Martinica_decoraciones
select * from usuarios

/*
usuarios
	... rol   activo
	    admin
		user

productos
	productos
		id_prod descripcion precio_unitario
*/		
CREATE TABLE productos (
    id_prod int NOT NULL,
    descripcion varchar(50),
    precio_unitario real NOT NULL
);

ventas
	ventas
		id_venta id_cliente id_det_prod_ven id_det_pag fecha total saldada

-- Hay que ver si tenemos tiempo de cambiar los tildes y demas porque tenemos cosas enlazadas de sus tablas como el id del cliente que es el codigo_cliente de su tabla de clientes
CREATE TABLE Ventas ( 
	id_venta int NOT NULL,
	Codigo_cliente INT CONSTRAINT FK_Código_Cliente FOREIGN KEY(Código_Cliente) REFERENCES Clientes(Código_Cliente),
	id_det_prod_ven INT CONSTRAINT FK_id_det_prod_ven FOREIGN KEY(id_det_prod_ven) REFERENCES det_prod_ven(id_det_prod_ven),
	id_det_pag INT CONSTRAINT FK_id_det_pag FOREIGN KEY(id_det_pag) REFERENCES det_prod_ven(id_det_pag),
	fecha --no se de que tipo es la fecha xd
	total real,
	saldada int --saldada puse int porq facu habia dicho que podiamos ponerle -1 a falso y 0 a verdadero o algo asi, sino ponemos boolean
);

detalle de productos de ventas
	det_prod_ven
		id_det_prod_ven id_venta id_producto cantidad

CREATE TABLE det_prod_ven(
	id_det_prod_ven int NOT NULL,
	id_venta INT CONSTRAINT FK_id_venta FOREIGN KEY(id_venta) REFERENCES Ventas(id_venta), 
	id_producto int,
	cantidad int
);

detalles de pagos de las ventas
	det_pag
		id_det_pag id_venta tipo_form_pag monto fecha

CREATE TABLE det_pag(
	id_det_pag int,
	id_venta INT CONSTRAINT FK_id_venta FOREIGN KEY(id_venta) REFERENCES Ventas(id_venta),
	tipo_form_pag INT CONSTRAINT FK_tipo_form_pag FOREIGN KEY(tipo_form_pag) REFERENCES form_pag(tipo_form_pag),
	monto real,
	fecha
);

caja diaria
	caja_diaria
		id_cd fecha efectivo tarjeta acumulado

CREATE TABLE caja_diaria(
	id_cd int NOT NULL,
	fecha , 
	efectivo real,
	tarjeta real, 
	acumulado real
);

egresos
	id_egreso fecha descripcion monto

CREATE TABLE Egresos(
	id_egreso int NOT NULL, 
	fecha, 
	descripcion varchar(200), 
	monto real
);

--Y forma de pagos no lo entendi 
form_pag
	tipo_form_pag descripcion
	1             efectivo
	2             tarjeta

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
							saldada true

CREATE TABLE roles(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rol_name VARCHAR(30) NOT NULL UNIQUE,
    rol_status TINYINT(1) NOT NULL
)ENGINE=INNODB;

CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    status_user TINYINT(1) NOT NULL,
    rol_id INT NOT NULL,
    CONSTRAINT fk_users_roles FOREIGN KEY(rol_id) REFERENCES roles(id)
);

*/

use Martinica_Decoraciones

/*
INSERT INTO Usuarios
VALUES (1,'a','a');
 


select * from proveedores

*/