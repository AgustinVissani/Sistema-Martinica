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

uses Unit2,Unit3, Unit4,Unit5,unit6,unit7,unit9;

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
  Form2.cargarEgresos.Caption:='Add expenditures';
  Form2.consultarEgresos.Caption:='Check expenditures';
  Form2.cajadiaria.Caption:='Cash';
  Form2.cerrarCajaDiaria.Caption:='Close cash desk';
  Form2.consultarCaja.Caption:='Check cash desk';
  Form2.clientes.Caption:='Customers';
  Form2.proveedores.Caption:='Suppliers';
  Form2.estadisticas.Caption:='Statistics';
  Form2.diezMasVendidos.Caption:='Top ten sold products';

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

    // FORM 6
  Form6.BitBtn1.Caption:='Go back';
 // Form6.Button1.Caption:='Search order';
  Form6.Button2.Caption:='New order';
  Form6.Label1.Caption:='ORDERS TO SUPPLIERS';
  Form6.Label2.Caption:='Lastname Customer';
  Form6.Label4.Caption:='Lastname';
  Form6.Label5.Caption:='Supplier';
  //Form6.Label3.Caption:='Customer';
  Form6.Label4.Caption:='Date';
  Form6.Label6.Caption:='State';

    // FORM 7
  Form7.BitBtn1.Caption:='Go back';
  Form7.Button1.Caption:='Cancel';
  Form7.Button3.Caption:='Save';
  Form7.Label1.Caption:='NEW ORDER';
  Form7.Label2.Caption:='Observations';
  Form7.Label4.Caption:='Detail';
  Form7.Label5.Caption:='Supplier';

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
  Form2.cargarEgresos.Caption:='Cargar egresos';
  Form2.consultarEgresos.Caption:='Consultar egresos';
  Form2.cajadiaria.Caption:='Caja diaria';
  Form2.cerrarCajaDiaria.Caption:='Cerrar caja diaria';
  Form2.consultarCaja.Caption:='Consultar caja';
  Form2.clientes.Caption:='Clientes';
  Form2.proveedores.Caption:='Proveedores';
  Form2.estadisticas.Caption:='Estadísticas';
  Form2.diezMasVendidos.Caption:='10 productos más vendidos';

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

  // FORM 6
  Form6.BitBtn1.Caption:='Volver';
//  Form6.Button1.Caption:='Buscar Cliente';
  Form6.Button2.Caption:='Nuevo pedido';
  Form6.Label1.Caption:='PEDIDOS A PROVEEDORES';
  Form6.Label2.Caption:='Apellido Cliente';
  Form6.Label4.Caption:='Apellido';
  Form6.Label5.Caption:='Proveedor';
  //Form6.Label3.Caption:='Cliente';
  Form6.Label4.Caption:='Fecha';
  Form6.Label6.Caption:='Estado';

  // FORM 7
  Form7.BitBtn1.Caption:='Volver';
  Form7.Button1.Caption:='Cancelar';
  Form7.Button3.Caption:='Guardar';
  Form7.Label1.Caption:='NUEVO PEDIDO';
  Form7.Label2.Caption:='Observaciones';
  Form7.Label4.Caption:='Detalle';
  Form7.Label5.Caption:='Proveedor';

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

end;
end;


end.
