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
 */


-- SELECT * FROM Usuarios where Usuario='Usuario' and Contrase�a='1234';