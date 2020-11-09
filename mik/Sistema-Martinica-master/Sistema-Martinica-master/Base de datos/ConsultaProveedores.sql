use Martinica_Decoraciones

/*
INSERT INTO Proveedores
VALUES ('Proveedor1','Apellido',1111111,'Domicilio',11-11111111-1),
 ('Proveedor2','Apellido2',2222222,'Domicilio2',22-2222222-2),
 ('Proveedor3','Apellido3',3333333,'Domicilio3',33-3333333-3),
 ('Proveedor3','Apellido3',4444444,'Domicilio3',4-4444444-4);

 */
 --select * from Proveedores


 //Pedidos a proveedores

SELECT DISTINCT Proveedores.Apellido AS Proveedor, Pedidos.Fecha, Pedidos.Detalle, Pedidos.Observaciones, Estados.Detalle 
FROM  Pedidos 
LEFT JOIN Proveedores ON (Proveedores.Código_Proveedor = Pedidos.Código_Proveedor)
LEFT JOIN Estados ON (Estados.Código_Estado = Pedidos.Código_Estado)