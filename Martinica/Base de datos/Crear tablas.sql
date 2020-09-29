 use Martinica_Decoraciones

 /*
  CREATE TABLE Clientes(C�digo_Cliente int not null, 
 DNI int not null, 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Tel�fono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL,
 PRIMARY KEY ( C�digo_Cliente,DNI) );*/ 

  CREATE TABLE Proveedor( C�digo_Proveedor int not null, 
 C�digo_Cliente INT CONSTRAINT FK_C�digo_Cliente FOREIGN KEY(C�digo_Cliente) REFERENCES dbo.Clientes(C�digo_Cliente), 
 Nombre varchar(30) NOT NULL,
 Apellido varchar(30) NOT NULL,
 Tel�fono varchar(20) NOT NULL,
 Domicilio varchar(30) NOT NULL,
 CUIT varchar(30) NOT NULL,
 PRIMARY KEY (C�digo_Proveedor) );


