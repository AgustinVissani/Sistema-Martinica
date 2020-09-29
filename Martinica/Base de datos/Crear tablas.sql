 use Martinica_Decoraciones

 /*
  CREATE TABLE Clientes(Código_Cliente int not null, 
 DNI int not null, 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Teléfono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL,
 PRIMARY KEY ( Código_Cliente,DNI) );*/ 

  CREATE TABLE Proveedor( Código_Proveedor int not null, 
 Código_Cliente INT CONSTRAINT FK_Código_Cliente FOREIGN KEY(Código_Cliente) REFERENCES dbo.Clientes(Código_Cliente), 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Teléfono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL,
 CUIT varchar(30) NOT NULL,
 PRIMARY KEY (Código_Proveedor) );


