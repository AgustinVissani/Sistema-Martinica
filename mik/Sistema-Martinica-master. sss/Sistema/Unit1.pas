unit Unit1;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Unit10;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  contrasenaErronea:string;

implementation

uses Unit2,Unit3, Unit4,Unit5,unit6,unit7,unit9, unit12, unit18,
  Unit8,
  Unit11,
  Unit13,
  Unit14,
  Unit15,
  Unit16;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Usuarios where Usuario='''+Edit1.Text+''' and Contraseña=''' +Edit2.Text + ''' ' );
ADOQuery1.Open;

if not ADOQuery1.Eof then
  begin
  form1.Hide;
  Form2.Show;
  Form2.FormCreate(Self);
  end
else
  ShowMessage(contrasenaErronea);
// FALTA modificar campo activo en tabla usuarios
end;



procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key in [#13] then
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Usuarios where Usuario='''+Edit1.Text+''' and Contraseña=''' +Edit2.Text + ''' ' );
ADOQuery1.Open;


if not ADOQuery1.Eof then
  begin
  form1.Hide;
  Form2.Show;
  Form2.FormCreate(Self);
  end
  else
  ShowMessage(contrasenaErronea);
 end; 
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key in [#13] then
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Usuarios where Usuario='''+Edit1.Text+''' and Contraseña=''' +Edit2.Text + ''' ' );
ADOQuery1.Open;


if not ADOQuery1.Eof then
  begin
  form1.Hide;
  Form2.Show;
  Form2.FormCreate(Self);
  end
  else
  ShowMessage('Usuario o contraseña incorrecto');
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
  contrasenaErronea:='Usuario o contraseña incorrecto';
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin


if ComboBox1.ItemIndex = 1 then //English
begin
  contrasenaErronea:='Wrong user or password.';

  // FORM 1
  Label1.Caption:='Martinica Decoraciones';
  Label2.Caption:='User';
  Label3.Caption:='Password';
  Button1.Caption:='Log In';

  // FORM 2
  Form2.sesion.Caption:='Session';
  Form2.cerrarSesion.Caption:='Log out';
  Form2.salir.Caption:='Exit';
  Form2.egresos.Caption:='Expenditures';
  Form2.cajadiaria.Caption:='Cash';
  Form2.clientes.Caption:='Customers';
  Form2.proveedores.Caption:='Suppliers';
  Form2.estadisticas.Caption:='Statistics';
  form2.Cliente.Caption:='Customer';
form2.Label1.Caption:='DNI';
form2.Label2.Caption:='Name';  
form2.Label1.Caption:='Lastname'; 
form2.Productos.Caption:='Products';
form2.calcularTotal.Caption:='Calculate totals';
 form2.Label7.Caption:='I.V.A';
form2.Label9.Caption:='Discount.(%)';
 form2.Label8.Caption:='Totals';
form2.Button1.Caption:='Load previous sale';
 Form2.Formadepago.Caption:='Payment method';
form2.ingresarPago.Caption:='Enter payment';

  form2.StringGrid1.Cells[0,0]:=  'Description';

  form2.StringGrid1.Cells[1,0]:= 'Quantity';
  form2.StringGrid1.Cells[2,0]:=  'U. price';
  form2.StringGrid1.Cells[3,0]:=  'Totals';

  form2.StringGrid2.Cells[0,0]:= 'Payment method';
  form2.StringGrid2.Cells[1,0]:= 'Amount';

  // FORM 4
  Form4.BitBtn1.Caption:='Go back';
  Form4.BitBtn3.Caption:='Cancel';
  Form4.BitBtn2.Caption:='Accept';
  Form4.Button1.Caption:='Edit';
  Form4.Button2.Caption:='New supplier';
  Form4.Button4.Caption:='Delete';
  Form4.Button3.Caption:='Orders of suppliers';
  Form4.BitBtn4.Caption:='Step back';
  Form4.Label1.Caption:='SUPPLIERS';
  Form4.Label3.Caption:='Name';
  Form4.Label4.Caption:='Lastname';
  Form4.Label5.Caption:='Phone';
  Form4.Label6.Caption:='Address';
  Form4.Label7.Caption:='CUIT';
  Unit4.NuevoProveedor:='New supplier?';
  Unit4.QuiereEliminar:='Remove supplier?';
  Unit4.QuiereEditar:='Edit supplier?';
  Unit4.SiElimino:= 'Supplier removed';
  Unit4.NoElimino:= 'Supplier wasn not removed';
  //Form 5
  
form5.Label2.Caption:='Code';

  form5.Label3.Caption:='Name'; 
form5.Label4.Caption:='Lastname';
  form5.Label5.Caption:='Phone';
 form5.Label6.Caption:='Address';
  form5.Label7.Caption:='CUIT';
form5.GroupBox1.Caption:='New supplier';
 
 form5.Caption:='New supplier';
    // FORM 6
  Form6.BitBtn1.Caption:='Go back';
 Form6.Button2.Caption:='New order';
 Form6.Label1.Caption:='ORDERS TO SUPPLIERS';
 form6.Caption:='Supplier order';
 
 Form6.Label2.Caption:='Lastname Customer';
 form6.Label7.Caption:='DNI';
 
 form6.Button1.Caption:='Change order status';


    // FORM 7
 Form7.BitBtn1.Caption:='Go back';  
Form7.Button1.Caption:='Cancel';
 Form7.Button3.Caption:='Save';
 form7.GroupBox1.Caption:='NEW ORDER';
 form7.Caption:='New Order'; 
 Form7.Label2.Caption:='Observations'; 
 Form7.Label4.Caption:='Detail';
 Form7.Label5.Caption:='Supplier';
  form7.Label3.Caption:='CUIT';
  
form7.Label6.Caption:='Customer';
 
 form7.Label3.Caption:='DNI';
 //Form 8

  form8.Caption:='Customer';
 
 form8.GroupBox1.Caption:='NEW CUSTOMER';
 
 form8.Label2.Caption:='Code';
 
 form8.Label3.Caption:='DNI';
 
 form8.Label4.Caption:='Name';
 
 form8.Label5.Caption:='Lastname';
 
 form8.Label6.Caption:='Phone';

 form8.Label7.Caption:='Address';
 
 form8.Button1.Caption:='Save'; 
 form8.Button2.Caption:='Cancel';
 
 form8.BitBtn1.Caption:='Go back';
  // FORM 9
  Form9.BitBtn1.Caption:='Go back';
  Form9.BitBtn3.Caption:='Cancel';
  Form9.BitBtn2.Caption:='Accept';
  Form9.Button1.Caption:='New client';
  Form9.Button2.Caption:='Delete';
  Form9.Button3.Caption:='Edit';
  Form9.BitBtn4.Caption:='Step back';
  Form9.Label1.Caption:='CUSTOMERS';
  Form9.Label3.Caption:='Name';
  Form9.Label4.Caption:='Lastname';
  Form9.Label5.Caption:='Phone';
  Form9.Label6.Caption:='Address';
  Form9.Label7.Caption:='DNI';
  Unit9.NuevoCliente:='New client?';
  Unit9.QuiereEliminar:='Remove client?';
  Unit9.QuiereEditar:='Edit client?';
  Unit9.SiElimino:= 'Client removed';
  Unit9.NoElimino:= 'Client wasn not removed';
//Form 10
form10.Caption:='States';

  form10.Label1.Caption:='ORDER STATUS';
 
 form10.Label3.Caption:='State';
 
 form10.Label4.Caption:='Customer';
  
form10.Label5.Caption:='Date';
  
form10.Label2.Caption:='Supplier';
 
 form10.Label10.Caption:='Customer';
  
form10.Label9.Caption:='Order Code';
 
 form10.Label6.Caption:='Detail';
 form10.Label7.Caption:='Observations'; 
 form10.Label8.Caption:='States';
 
 form10.BitBtn1.Caption:='Go back';
 form10.Button1.Caption:='Change state';
 //Form 12
  form12.Caption:='Egresos';
  form12.Button1.Caption:='New';
  form12.Button2.Caption:='Modify';
  form12.Button3.Caption:='delete';
  form12.Label1.Caption:='date';
  form12.Label2.Caption:='Detail';
  form12.Label3.Caption:='Amount';

  form12.DBGrid1.Columns[0].Title.caption:='Detail';
  form12.DBGrid1.Columns[1].Title.caption:='Amount';
  //Form 13
 form13.Caption:='Check cash desk';
 form13.Label1.Caption:='Starting date';

form13.Label2.Caption:='End date';

  form13.consultarCaja.Caption:='Consult';

form13.DBGrid1.Columns[0].Title.caption:='Date';

 form13.DBGrid1.Columns[1].Title.caption:='Card';
  form13.DBGrid1.Columns[2].Title.caption:='Cash';
  form13.DBGrid1.Columns[3].Title.caption:='Accumulated';
   //Form14
form14.Label1.Caption:='Starting date';

 form14.Label2.Caption:='End date';
 form14.consultarEgresos.Caption:='Consult';
 
 form14.Caption:='Check expenditures'; 
 form14.DBGrid1.Columns[0].Title.caption:='Date';

  form14.DBGrid1.Columns[1].Title.caption:='Description';

  form14.DBGrid1.Columns[2].Title.caption:='Amount';
//Form 15
 form15.Caption:='Top ten sold products';
//Form 16
   //Form 16
 
 form16.Label1.Caption:='DNI';
 
 form16.Label2.Caption:='Name';
 
 form16.Label3.Caption:='Lastname';
  
form16.Button1.Caption:='Charge sale';
 
 form16.Caption:='Previous sales';
 
 form16.Label4.Caption:='List of outstanding sales';
 
 form16.DBGrid1.Columns[0].Title.caption:='Sales number';
 
 form16.DBGrid1.Columns[1].Title.caption:='Date';
  form16.DBGrid1.Columns[2].Title.caption:='Total';
  form16.DBGrid1.Columns[3].Title.caption:='Debt';



 //form 18
 form18.Caption:='Daily box';
 form18.Label1.Caption:='date';
 form18.Label1.Caption:='Cash';
 form18.Label1.Caption:='Card';
 form18.Label1.Caption:='Accumulated';
 form18.Button1.Caption:='Check cash desk';
 


end
else  // ESPAÑOL

begin
  // FORM 1
  contrasenaErronea:='Usuario o contraseña incorrecto';

  Label1.Caption:='Martinica Decoraciones';
  Label2.Caption:='Usuario';
  Label3.Caption:='Contraseña';
  Button1.Caption:='Iniciar sesión';

  // FORM 2
  Form2.sesion.Caption:='Sesión';
  Form2.cerrarSesion.Caption:='Cerrar sesión';
  Form2.salir.Caption:='Salir';
  Form2.egresos.Caption:='Egresos';
  Form2.cajadiaria.Caption:='Caja diaria';
  Form2.clientes.Caption:='Clientes';
  Form2.proveedores.Caption:='Proveedores';
  Form2.estadisticas.Caption:='Estadísticas';
  //
  form2.Cliente.Caption:='Cliente';
  form2.Label1.Caption:='DNI';
  form2.Label2.Caption:='Nombre';
  form2.Label1.Caption:='Apellido';
  form2.Productos.Caption:='Productos';
  form2.calcularTotal.Caption:='Calcular total';
  form2.Label7.Caption:='I.V.A';
  form2.Label9.Caption:='Dcto.(%)';
  form2.Label8.Caption:='Total';
  form2.StringGrid1.Cells[0,0]:=  'Descripcion';
  form2.StringGrid1.Cells[1,0]:=  'Cantidad';
  form2.StringGrid1.Cells[2,0]:=  'P. Unitario';
  form2.StringGrid1.Cells[3,0]:=  'Total';

  form2.StringGrid2.Cells[0,0]:= 'Forma de pago';
  form2.StringGrid2.Cells[1,0]:= 'Monto';


  // FORM 4
  Form4.BitBtn1.Caption:='Volver';
  Form4.BitBtn3.Caption:='Cancelar';
  Form4.BitBtn2.Caption:='Confirmar';
  Form4.Button1.Caption:='Modificar';
  Form4.Button2.Caption:='Nuevo proveedor';
  Form4.Button4.Caption:='Borrar';
  Form4.Button3.Caption:='Pedido a proveedores';
  Form4.BitBtn4.Caption:='Paso atrás';
  Form4.Label1.Caption:='PROVEEDORES';
  Form4.Label3.Caption:='Nombre';
  Form4.Label4.Caption:='Apellido';
  Form4.Label5.Caption:='Teléfono';
  Form4.Label6.Caption:='Dirección';
  Form4.Label7.Caption:='CUIT';
  Unit4.NuevoProveedor:='¿Quiere agregar un proveedor?';
  Unit4.QuiereEliminar:='¿Quiere eliminar un proveedor?';
  Unit4.QuiereEditar:='¿Quiere editar un proveedor?';
  Unit4.SiElimino:= 'Se eliminó correctamente';
  Unit4.NoElimino:= 'No se eliminó el proveedor';

  //form 5
   form5.Label2.Caption:='Codigo';
   form5.Label3.Caption:='Nombre';
   form5.Label4.Caption:='Apellido';
   form5.Label5.Caption:='Telefono';
   form5.Label6.Caption:='Domicilio';
   form5.Label7.Caption:='CUIT';
   form5.GroupBox1.Caption:='NUEVO PROVEEDOR';
   form5.Caption:='Nuevo proveedor';

  // FORM 6
 Form6.BitBtn1.Caption:='Volver';
 Form6.Button2.Caption:='Nuevo pedido';
 Form6.Label1.Caption:='PEDIDOS A PROVEEDORES';
 form6.Caption:='Pedido a proveedores';
 Form6.Label2.Caption:='Apellido Cliente';
 form6.Label7.Caption:='DNI';
 form6.Button1.Caption:='Cambiar estado del pedido';

  // FORM 7
 Form7.BitBtn1.Caption:='Volver';
 Form7.Button1.Caption:='Cancelar';
 Form7.Button3.Caption:='Guardar';
 form7.GroupBox1.Caption:='NUEVO PEDIDO';
 form7.Caption:='Nuevo pedido';
 Form7.Label2.Caption:='Observaciones';
 Form7.Label4.Caption:='Detalle';
 Form7.Label5.Caption:='Proveedor';
 form7.Label3.Caption:='CUIT';
 form7.Label6.Caption:='Cliente';
 form7.Label3.Caption:='DNI';

 //Form 8
 form8.Caption:='Clientes';
 form8.GroupBox1.Caption:='NUEVO CLIENTE';
 form8.Label2.Caption:='Codigo';
 form8.Label3.Caption:='DNI';
 form8.Label4.Caption:='Nombre';
 form8.Label5.Caption:='Apellido';
 form8.Label6.Caption:='Telefono';
 form8.Label7.Caption:='Domicilio';
 form8.Button1.Caption:='Guardar';
 form8.Button2.Caption:='Cancelar';
 form8.BitBtn1.Caption:='Volver';

  // FORM 9
  Form9.BitBtn1.Caption:='Volver';
  Form9.BitBtn3.Caption:='Cancelar';
  Form9.BitBtn2.Caption:='Confirmar';
  Form9.Button1.Caption:='Nuevo cliente';
  Form9.Button2.Caption:='Borrar';
  Form9.Button3.Caption:='Modificar';
  Form9.BitBtn4.Caption:='Paso atrás';
  Form9.Label1.Caption:='CLIENTES';
  Form9.Label3.Caption:='Nombre';
  Form9.Label4.Caption:='Apellido';
  Form9.Label5.Caption:='Teléfono';
  Form9.Label6.Caption:='Dirección';
  Form9.Label7.Caption:='DNI';
  Unit9.NuevoCliente:='¿Quiere agregar un cliente?';
  Unit9.QuiereEliminar:='¿Quiere eliminar un cliente?';
  Unit9.QuiereEditar:='¿Quiere editar un cliente?';
  Unit9.SiElimino:= 'Se eliminó correctamente';
  Unit9.NoElimino:= 'No se eliminó el cliente';
  //Form 10
 form10.Caption:='Estados';
 form10.Label1.Caption:='ESTADOS DE PEDIDOS';
 form10.Label3.Caption:='Estado';
 form10.Label4.Caption:='Cliente';
 form10.Label5.Caption:='Fecha';
 form10.Label2.Caption:='Proveedor';
 form10.Label10.Caption:='Cliente';
 form10.Label9.Caption:='Cod. Pedido';
 form10.Label6.Caption:='Detalle';
 form10.Label7.Caption:='Observaciones';
 form10.Label8.Caption:='Estados';
 form10.BitBtn1.Caption:='Volver';
 form10.Button1.Caption:='Cambiar estado';
 //Form 12
  form12.Caption:='Egresos';
  form12.Button1.Caption:='Nuevo';
  form12.Button2.Caption:='Modificar';
  form12.Button3.Caption:='Borrar';
  form12.Label1.Caption:='Fecha';
  form12.Label2.Caption:='Descripcion';
  form12.Label3.Caption:='Monto';

  form12.DBGrid1.Columns[0].Title.caption:='Descripcion';
  form12.DBGrid1.Columns[1].Title.caption:='Monto';
  //Form 13
  form13.Caption:='Consulta caja diaria';
  form13.Label1.Caption:='Fecha Inicio';
  form13.Label2.Caption:='Fecha fin';
  form13.consultarCaja.Caption:='Consular';
  form13.DBGrid1.Columns[0].Title.caption:='Fecha';
  form13.DBGrid1.Columns[1].Title.caption:='Tarjeta';
  form13.DBGrid1.Columns[2].Title.caption:='Efectivo';
  form13.DBGrid1.Columns[3].Title.caption:='Acumulado';
   //Form14

 form14.Label1.Caption:='Fecha Inicio';
 form14.Label2.Caption:='Fecha fin';
 form14.consultarEgresos.Caption:='Consular';
 form14.Caption:='Consulta de egresos';
 form14.DBGrid1.Columns[0].Title.caption:='Fecha';
 form14.DBGrid1.Columns[1].Title.caption:='Descripción';
 form14.DBGrid1.Columns[2].Title.caption:='Monto';
//Form 15
  form15.Caption:='10 productos mas vendidos';
//Form 16
  form16.Label1.Caption:='DNI';
  form16.Label2.Caption:='Nombre';
  form16.Label3.Caption:='Apellido';
  form16.Button1.Caption:='Cargar venta';
  form16.Caption:='Ventas anteriores';
  form16.Label4.Caption:='Lista de ventas sin saldar';
  form16.DBGrid1.Columns[0].Title.caption:='Nro. Venta';
  form16.DBGrid1.Columns[1].Title.caption:='Fecha';
  form16.DBGrid1.Columns[2].Title.caption:='Total';
  form16.DBGrid1.Columns[3].Title.caption:='Deuda';

 //form 18
 form18.Caption:='Caja Diaria';
 form18.Label1.Caption:='Fecha';
 form18.Label1.Caption:='Efectivo';
 form18.Label1.Caption:='Tarjeta';
 form18.Label1.Caption:='Acumulado';
 form18.Button1.Caption:='Cerrar caja diaria';
end;
end;


end.
