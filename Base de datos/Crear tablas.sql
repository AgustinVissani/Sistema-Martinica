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
 */


-- SELECT * FROM Usuarios where Usuario='Usuario' and Contraseña='1234';