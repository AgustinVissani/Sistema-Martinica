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

uses Unit2,Unit3, Unit4,Unit5;

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
  Form4.Button1.Caption:='Editar';
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
end;
end;


end.
