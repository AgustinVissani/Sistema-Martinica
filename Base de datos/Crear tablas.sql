 use Martinica_Decoraciones
 /*
 
  CREATE TABLE Clientes(C�digo_Cliente int not null identity(1, 1) primary key, 
 DNI int not null, 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Tel�fono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL);
 
  CREATE TABLE Proveedores( C�digo_Proveedor int not null identity(1, 1) primary key,
-- C�digo_Cliente INT CONSTRAINT FK_C�digo_Cliente FOREIGN KEY(C�digo_Cliente) REFERENCES dbo.Clientes(C�digo_Cliente), 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Tel�fono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL,
 CUIT varchar(30) NOT NULL );


 CREATE TABLE Usuarios( idUsuario int not null, 
 Usuario varchar(50) NOT NULL,
 Contrase�a varchar(50) NOT NULL,
 PRIMARY KEY (idUsuario) );


  CREATE TABLE Estados(C�digo_Estado int not null identity(1, 1) primary key, 
 Detalle varchar(20) NOT NULL);

 */


-- SELECT * FROM Usuarios where Usuario='Usuario' and Contrase�a='1234';

/*
  CREATE TABLE Pedidos( C�digo_Pedidos int not null identity(1, 1) primary key,
 C�digo_Proveedor INT CONSTRAINT FK_C�digo_Proveedor FOREIGN KEY(C�digo_Proveedor) REFERENCES Proveedores(C�digo_Proveedor), 
 Fecha date NOT NULL,
 Detalle varchar(100) NOT NULL,
 C�digo_Estado INT CONSTRAINT FK_C�digo_Estado FOREIGN KEY(C�digo_Estado) REFERENCES Estados(C�digo_Estado), 
 Observaciones varchar(30) NOT NULL );

 */
 
 /*
   CREATE TABLE Pedidos_Clientes( C�digo_Pedidos_Clientes int not null identity(1, 1) primary key, 
 C�digo_Proveedor INT CONSTRAINT FK_id_Proveedor FOREIGN KEY(C�digo_Proveedor) REFERENCES Proveedores(C�digo_Proveedor), 
 C�digo_Cliente INT CONSTRAINT FK_id_Cliente FOREIGN KEY(C�digo_Cliente) REFERENCES Clientes(C�digo_Cliente) );



 SELECT * 
FROM Pedidos,Pedidos_Clientes
WHERE (C�digo_Cliente= Pedidos_Clientes.C�digo_Cliente);

CREATE TABLE Pagos( C�digo_Pago int not null identity(1, 1) primary key,
 C�digo_Pedido INT CONSTRAINT FK_C�digo_Pedidos FOREIGN KEY(C�digo_Pedido) REFERENCES Pedidos(C�digo_Pedidos),
 C�digo_Cliente INT CONSTRAINT FK_id_Cliente FOREIGN KEY(C�digo_Cliente) REFERENCES Clientes(C�digo_Cliente), 
 Fecha date NOT NULL,
 Monto int NOT NULL );

*/

CREATE TABLE Alertas( C�digo_Alerta int not null identity(1, 1) primary key,
 C�digo_Pedido INT CONSTRAINT FK_C�digo_Pedido FOREIGN KEY(C�digo_Pedido) REFERENCES Pedidos(C�digo_Pedidos), 
 Fecha date NOT NULL,
Detalle varchar (100) NOT NULL );