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
 C�digo_Estado INT CONSTRAINT FK_id_Estado FOREIGN KEY(C�digo_Estado) REFERENCES Estados(C�digo_Estado) );
 */

