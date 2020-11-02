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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  contrasenaErronea:string;

implementation

uses Unit2,Unit3, Unit4,Unit5,unit6,unit7,unit9,unit11;

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
  Form2.Martinica.Caption:='Martinica system';
  Form2.Proveedores1.Caption:='Suppliers';
  Form2.Ventas2.Caption:='Sales';
  Form2.Clientes1.Caption:='Customers';
  Form2.CajaDiaria1.Caption:='Cash counts';
  Form2.Cerrarsesin1.Caption:='Log out';
  Form2.Salir1.Caption:='Exit';

  // FORM 3
  Form3.Label1.Caption:='Cash counts';
  Form3.BitBtn1.Caption:='Go back';
  Form3.Label2.Caption:='Start date';
  Form3.Label3.Caption:='End date';
  Form3.Label4.Caption:='Sales';
  Form3.Label5.Caption:='Cash';
  Form3.Label6.Caption:='Credit card';
  Form3.Label7.Caption:='Debit card';
  Form3.Label9.Caption:='Sales';
  Form3.Button1.Caption:='Payment';

  // FORM 4
  Form4.BitBtn1.Caption:='Go back';
  Form4.BitBtn3.Caption:='Cancel';
  Form4.BitBtn2.Caption:='Accept';
  Form4.Button1.Caption:='Edit';
  Form4.Button2.Caption:='New supplier';
  Form4.Button4.Caption:='Delete';
  Form4.Button3.Caption:='Orders of suppliers';
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
  Unit4.ProveedorMismoCuit:='There is a Provider with the same CUIT.';
  Unit4.NoSePuedeBorrar:='Can not delete provider with orders.';
  Unit4.NoEliminarProveedor:='Can not delete provider with orders.';
  Unit4.NoSePuedeModificar:='There is a provider with the same CUIT.';
  Form4.Label13.Caption:='* Required';
  Form4.GroupBox1.Caption:='Provider data';
  Unit4.ErrorSoloNumeros:='Error. Only numbers are allowed.';
  Unit4.CompletarCampos:='Fill all required fields';

    // FORM 6
  Form6.BitBtn1.Caption:='Go back';
  Form6.Button2.Caption:='New order';
  Form6.Label1.Caption:='ORDERS TO SUPPLIERS';
  Form6.Label2.Caption:='Customer';
  Form6.GroupBox1.Caption:='Search by customer';
  Form6.Button3.Caption:='See all';
  Form6.Button1.Caption:='Change order''s state';

    // FORM 7
  Form7.BitBtn1.Caption:='Go back';
  Form7.BitBtn2.Caption:='Cancel';
  Form7.BitBtn3.Caption:='Accept';
  Form7.Label1.Caption:='NEW ORDER';
  Form7.Label2.Caption:='Observations';
  Form7.Label4.Caption:='Detail';
  Form7.Label5.Caption:='Supplier';
  Form7.Label10.Caption:='* Required';
  Form7.Label6.Caption:='Customer';
  Unit7.NuevoPedido:='New order?';
  Unit7.Saved:='Saved succesfully';

  // FORM 9
  Form9.BitBtn1.Caption:='Go back';
  Form9.BitBtn3.Caption:='Cancel';
  Form9.BitBtn2.Caption:='Accept';
  Form9.Button1.Caption:='New client';
  Form9.Button2.Caption:='Delete';
  Form9.Button3.Caption:='Edit';
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
  Unit9.ClienteMismoDni:='There is a customer with the same DNI.';
  Form9.GroupBox1.Caption:='Customer data';
  Unit9.NoSePuedeBorrar:='Can not delete customer with orders.';
  Unit9.NoSePuedeModificar:='There is a customer with the same DNI.';
  Form9.Label13.Caption:='* Required';

  // Form 10
  Unit11.NuevoEstado:='Change order''s state?';
  Form10.Label1.Caption:='STATE OF ORDERS';
  Form10.Label10.Caption:='Customer';
  Form10.GroupBox1.Caption:='Provider data';
  Form10.Button2.Caption:='See all';
  Form10.Label9.Caption:='Order''s code';
  Form10.Label2.Caption:='Supplier';
  Form10.Label10.Caption:='Customer';
  Form10.Label4.Caption:='Customer';
  Form10.Label2.Caption:='Supplier';
  Form10.Label5.Caption:='Date';
  Form10.Label6.Caption:='Detail';
  Form10.Label7.Caption:='Observations';
  Form10.Label8.Caption:='Current state';
  Form10.GroupBox2.Caption:='Change state';
  Form10.BitBtn1.Caption:='Go back';
  Form10.Button1.Caption:='Change state';
  Form10.Label12.Caption:='Required';
  Form10.Label3.Caption:='New state';
  Unit11.SeleccioneEstado:='Select new state';


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
  Form2.Martinica.Caption:='Martinica';
  Form2.Proveedores1.Caption:='Proveedores';
  Form2.Ventas2.Caption:='Ventas';
  Form2.Clientes1.Caption:='Clientes';
  Form2.CajaDiaria1.Caption:='Caja diaria';
  Form2.Cerrarsesin1.Caption:='Cerrar sesión';
  Form2.Salir1.Caption:='Salir';

  // FORM 3
  Form3.Label1.Caption:='Caja diaria';
  Form3.BitBtn1.Caption:='Volver';
  Form3.Label2.Caption:='Fecha inicio';
  Form3.Label3.Caption:='Fecha fin';
  Form3.Label4.Caption:='Ventas';
  Form3.Label5.Caption:='Efectivo';
  Form3.Label6.Caption:='Tarjeta de crédito';
  Form3.Label7.Caption:='Tarjeta de débito';
  Form3.Label9.Caption:='Ventas';
  Form3.Button1.Caption:='Formas de pago';

  // FORM 4
  Form4.BitBtn1.Caption:='Volver';
  Form4.BitBtn3.Caption:='Cancelar';
  Form4.BitBtn2.Caption:='Confirmar';
  Form4.Button1.Caption:='Modificar';
  Form4.Button2.Caption:='Nuevo proveedor';
  Form4.Button4.Caption:='Borrar';
  Form4.Button3.Caption:='Pedido a proveedores';
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
  Unit4.ProveedorMismoCuit:='No se puede agregar un proveedor con mismo CUIT.';
  Unit4.NoSePuedeBorrar:='No se puede eliminar un proveedor con pedidos asociados.';
  Unit4.NoEliminarProveedor:='No se puede eliminar un proveedor con pedidos asociados.';
  Unit4.NoSePuedeModificar:='No se puede modificar el CUIT de otro ya cargado.';
  Form4.Label13.Caption:='* Obligatorio';
  Form4.GroupBox1.Caption:='Datos proveedor';
  Unit4.ErrorSoloNumeros:='Error. Debe ingresar solo números';

  // FORM 6
  Form6.BitBtn1.Caption:='Volver';
  Form6.Button2.Caption:='Nuevo pedido';
  Form6.Label1.Caption:='PEDIDOS A PROVEEDORES';
  Form6.Label2.Caption:='Cliente';
  Form6.GroupBox1.Caption:='Búsqueda de pedidos por cliente';
  Form6.Button3.Caption:='Ver todos';
  Form6.Button1.Caption:='Cambiar ordel del pedido';


  // FORM 7
  Form7.BitBtn1.Caption:='Volver';
  Form7.BitBtn2.Caption:='Cancelar';
  Form7.BitBtn3.Caption:='Confirmar';
  Form7.Label1.Caption:='NUEVO PEDIDO';
  Form7.Label2.Caption:='Observaciones';
  Form7.Label4.Caption:='Detalle';
  Form7.Label5.Caption:='Proveedor';
  Form7.Label10.Caption:='* Obligatorio';
  Form7.Label6.Caption:='Cliente';
  Unit7.NuevoPedido:='¿Quiere agregar un nuevo pedido?';
  Unit7.Saved:='Se guardó con éxito';

  // FORM 9
  Form9.BitBtn1.Caption:='Volver';
  Form9.BitBtn3.Caption:='Cancelar';
  Form9.BitBtn2.Caption:='Confirmar';
  Form9.Button1.Caption:='Nuevo cliente';
  Form9.Button2.Caption:='Borrar';
  Form9.Button3.Caption:='Modificar';
  Form9.Label1.Caption:='CLIENTES';
  Form9.Label3.Caption:='Nombre';
  Form9.Label4.Caption:='Apellido';
  Form9.Label5.Caption:='Teléfono';
  Form9.Label6.Caption:='Dirección';
  Form9.Label7.Caption:='DNI';
  Unit9.ClienteMismoDni:='No se puede agregar un cliente con mismo DNI.';
  Unit9.NuevoCliente:='¿Quiere agregar un cliente?';
  Unit9.QuiereEliminar:='¿Quiere eliminar un cliente?';
  Unit9.QuiereEditar:='¿Quiere editar un cliente?';
  Unit9.SiElimino:= 'Se eliminó correctamente';
  Unit9.NoElimino:= 'No se eliminó el cliente';
  Form9.GroupBox1.Caption:='Datos cliente';
  Unit9.NoSePuedeBorrar:='No se puede eliminar un cliente con pedidos asociados.';
  Unit9.NoSePuedeModificar:='No se puede modificar el DNI de otro ya cargado.';
  Form9.Label13.Caption:='* Obligatorio';

  // Form 10
  Unit11.NuevoEstado:='¿Quiere cambiar el estado del pedido?';
  Form10.Label1.Caption:='ESTADOS DE PEDIDOS';
  Form10.Label10.Caption:='Cliente';
  Form10.GroupBox1.Caption:='Datos cliente';
  Form10.Button2.Caption:='Ver todos';
  Form10.Label9.Caption:='Cód. Pedido';
  Form10.Label2.Caption:='Proveedor';
  Form10.Label10.Caption:='Cliente';
  Form10.Label4.Caption:='Cliente';
  Form10.Label2.Caption:='Proveedor';
  Form10.Label5.Caption:='Fecha';
  Form10.Label6.Caption:='Detalle';
  Form10.Label7.Caption:='Observaciones';
  Form10.Label8.Caption:='Estado actual';
  Form10.GroupBox2.Caption:='Cambiar el estado actual';
  Form10.BitBtn1.Caption:='Volver';
  Form10.Button1.Caption:='Cambiar estado';
  Form10.Label12.Caption:='Obligatorio';
  Form10.Label3.Caption:='Nuevo estado';
  Unit11.SeleccioneEstado:='Seleccione un nuevo estado';




end;
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
