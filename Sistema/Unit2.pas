unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls,jpeg,Buttons, Grids;
type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    sesion: TMenuItem;
    salir: TMenuItem;
    cerrarSesion: TMenuItem;
    egresos: TMenuItem;
    cajadiaria: TMenuItem;
    clientes: TMenuItem;
    proveedores: TMenuItem;
    estadisticas: TMenuItem;
    cargarEgresos: TMenuItem;
    consultarEgresos: TMenuItem;
    cerrarCajaDiaria: TMenuItem;
    consultarCaja: TMenuItem;
    diezMasVendidos: TMenuItem;
    Cliente: TLabel;
    DNI: TLabel;
    Apellido: TLabel;
    Nombre: TLabel;
    Productos: TLabel;
    Formadepago: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    altaCliente: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    ingresarPago: TButton;
    agregarProducto: TLabel;
    agregarFormaPago: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure CajaDiaria1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure salirClick(Sender: TObject);
    procedure cerrarSesionClick(Sender: TObject);
    procedure cerrarCajaDiariaClick(Sender: TObject);
    procedure clientesClick(Sender: TObject);
    procedure proveedoresClick(Sender: TObject);
    procedure altaClienteClick(Sender: TObject);
    procedure cargarEgresosClick(Sender: TObject);
    procedure consultarEgresosClick(Sender: TObject);
    procedure consultarCajaClick(Sender: TObject);
    procedure diezMasVendidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses  Unit1, Unit3, Unit4, Unit8, Unit9, Unit12, Unit14, Unit13, Unit15;

{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;




procedure TForm2.CajaDiaria1Click(Sender: TObject);
begin
form2.Hide;
Form3.Show;
end;

procedure TForm2.Proveedores1Click(Sender: TObject);
begin
form2.Hide;
Form4.Show;  //proveedores
end;

procedure TForm2.Clientes1Click(Sender: TObject);
begin
form2.Hide;
Form9.Show;  //clientes
end;



procedure TForm2.salirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm2.cerrarSesionClick(Sender: TObject);
begin
form2.Hide;
form1.Show;
// FALTA modificar campo activo en tabla usuarios
end;

procedure TForm2.cerrarCajaDiariaClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.clientesClick(Sender: TObject);
begin
Form2.Hide;
Form9.Show;  //clientes
end;

procedure TForm2.proveedoresClick(Sender: TObject);
begin
form2.Hide;
Form4.Show;  //proveedores
end;

procedure TForm2.altaClienteClick(Sender: TObject);
begin
Form9.Show;  //clientes
end;

procedure TForm2.cargarEgresosClick(Sender: TObject);
begin
Form12.Show;  //clientes
end;

procedure TForm2.consultarEgresosClick(Sender: TObject);
begin
  Form14.Show;
end;

procedure TForm2.consultarCajaClick(Sender: TObject);
begin
  Form13.Show;
end;

procedure TForm2.diezMasVendidosClick(Sender: TObject);
begin
  Form15.Show;
end;

end.

