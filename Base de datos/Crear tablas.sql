 use Martinica_Decoraciones
 /*
 
  CREATE TABLE Clientes(Código_Cliente int not null identity(1, 1) primary key, 
 DNI int not null, 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Teléfono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL);
 
  CREATE TABLE Proveedores( Código_Proveedor int not null identity(1, 1) primary key,
-- Código_Cliente INT CONSTRAINT FK_Código_Cliente FOREIGN KEY(Código_Cliente) REFERENCES dbo.Clientes(Código_Cliente), 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Teléfono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL,
 CUIT varchar(30) NOT NULL );


 CREATE TABLE Usuarios( idUsuario int not null, 
 Usuario varchar(50) NOT NULL,
 Contraseña varchar(50) NOT NULL,
 PRIMARY KEY (idUsuario) );


  CREATE TABLE Estados(Código_Estado int not null identity(1, 1) primary key, 
 Detalle varchar(20) NOT NULL);

 */


-- SELECT * FROM Usuarios where Usuario='Usuario' and Contraseña='1234';

/*
  CREATE TABLE Pedidos( Código_Pedidos int not null identity(1, 1) primary key,
 Código_Proveedor INT CONSTRAINT FK_Código_Proveedor FOREIGN KEY(Código_Proveedor) REFERENCES Proveedores(Código_Proveedor), 
 Fecha date NOT NULL,
 Detalle varchar(100) NOT NULL,
 Código_Estado INT CONSTRAINT FK_Código_Estado FOREIGN KEY(Código_Estado) REFERENCES Estados(Código_Estado), 
 Observaciones varchar(30) NOT NULL );

 */
 
 /*
   CREATE TABLE Pedidos_Clientes( Código_Pedidos_Clientes int not null identity(1, 1) primary key, 
 Código_Proveedor INT CONSTRAINT FK_id_Proveedor FOREIGN KEY(Código_Proveedor) REFERENCES Proveedores(Código_Proveedor), 
 Código_Cliente INT CONSTRAINT FK_id_Cliente FOREIGN KEY(Código_Cliente) REFERENCES Clientes(Código_Cliente) );



 SELECT * 
FROM Pedidos,Pedidos_Clientes
WHERE (Código_Cliente= Pedidos_Clientes.Código_Cliente);

CREATE TABLE Pagos( Código_Pago int not null identity(1, 1) primary key,
 Código_Pedido INT CONSTRAINT FK_Código_Pedidos FOREIGN KEY(Código_Pedido) REFERENCES Pedidos(Código_Pedidos),
 Código_Cliente INT CONSTRAINT FK_id_Cliente FOREIGN KEY(Código_Cliente) REFERENCES Clientes(Código_Cliente), 
 Fecha date NOT NULL,
 Monto int NOT NULL );

*/

CREATE TABLE Alertas( Código_Alerta int not null identity(1, 1) primary key,
 Código_Pedido INT CONSTRAINT FK_Código_Pedido FOREIGN KEY(Código_Pedido) REFERENCES Pedidos(Código_Pedidos), 
 Fecha date NOT NULL,
Detalle varchar (100) NOT NULL );