/*
use Martinica_decoraciones
select * from usuarios

usuarios
	... rol   activo
	    admin
		user

productos
	productos
		id_prod descripcion precio_unitario

ventas
	ventas
		id_venta id_cliente id_det_prod_ven id_det_pag fecha total saldada

detalle de productos de ventas
	det_prod_ven
		id_det_prod_ven id_venta id_producto cantidad

detalles de pagos de las ventas
	det_pag
		id_det_pag id_venta tipo_form_pag monto fecha

caja diaria (ingresos y egresos)
	caja_diaria
		id_cd fecha efectivo tarjeta acumulado

egresos
	id_egreso fecha descripcion monto

form_pag
	tipo_form_pag descripcion
	1             efectivo
	2             tarjeta

				seña
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