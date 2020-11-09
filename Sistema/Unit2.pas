unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls,jpeg,Buttons, Grids, DB, ADODB,
  DBGrids, Mask, DBCtrls;
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
    Cliente: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Productos: TLabel;
    Formadepago: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    altaCliente: TLabel;
    ingresarPago: TButton;
    agregarProducto: TLabel;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Cdigo_Cliente: TAutoIncField;
    ADOQuery1DNI: TIntegerField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    DNI: TDBEdit;
    Nombre: TDBEdit;
    Apellido: TDBEdit;
    calcularTotal: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBText1: TDBText;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2id_prod: TAutoIncField;
    ADOQuery2descripcion: TStringField;
    ADOQuery2precio_unitario: TFloatField;
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button5: TButton;
    StringGrid1: TStringGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
    procedure consultarEgresosClick(Sender: TObject);
    procedure consultarCajaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure egresosClick(Sender: TObject);
    procedure cajadiariaClick(Sender: TObject);
    procedure estadisticasClick(Sender: TObject);
    procedure DNIEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  col, row: Integer;

implementation

uses  Unit1, Unit3, Unit4, Unit8, Unit9, Unit12, Unit14, Unit13, Unit15,
  Unit16;

{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
var
hMenuHandle: Integer;
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
  hMenuHandle := GetSystemMenu(Handle, False);
  if (hMenuHandle <> 0) then
    DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

    {los nombres se ingresan con las tablas}
  Form2.StringGrid1.Cells[0, 0] := 'Descripción';
  Form2.StringGrid1.Cells[1, 0] := 'P. Unitario';
  Form2.StringGrid1.Cells[2, 0] := 'Cantidad';
  Form2.StringGrid1.Cells[3, 0] := 'Total';
  //Form2.StringGrid2.Cells[1, 0] := 'Forma de pago';
  //Form2.StringGrid2.Cells[2, 0] := 'Monto';
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
Form9.Show;  //clientes
end;

procedure TForm2.proveedoresClick(Sender: TObject);
begin
Form4.Show;  //proveedores
end;

procedure TForm2.altaClienteClick(Sender: TObject);
begin
  Form9.Show;  //clientes
end;

procedure TForm2.consultarEgresosClick(Sender: TObject);
begin
  Form14.Show;
end;

procedure TForm2.consultarCajaClick(Sender: TObject);
begin
  Form13.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form16.Show;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  ADOQuery2.Append;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  ADOQuery2.Edit;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  ADOQuery2.Delete;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  If (StrToInt(DBEdit3.Text) < 0) Then
    Begin
      ShowMessage('ingrese un precio unitario positivo.');
      ADOQuery2.Cancel;
    End
  Else
    ADOQuery2.Post;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  ADOQuery2.Cancel;
end;

procedure TForm2.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
  var R: TRect;
begin
  col := ACol;
  row := ARow;
  if (ACol = 0) and (ARow <> 0) then
    begin
      R := StringGrid1.CellRect(ACol, ARow);
      R.Left := R.Left + StringGrid1.Left;
      R.Right := R.Right + StringGrid1.Left;
      R.Top := R.Top + StringGrid1.Top;
      R.Bottom := R.Bottom + StringGrid1.Top;
      ComboBox1.Left := R.Left + 1;
      ComboBox1.Top := R.Top + 1;
      ComboBox1.Width := (R.Right + 1) - R.Left;
      ComboBox1.Height := (R.Bottom + 1) - R.Top;
      ComboBox1.Visible := true;
      ComboBox1.DroppedDown := true;
    end;
end;

procedure TForm2.ComboBox1CloseUp(Sender: TObject);
begin
  StringGrid1.Cells[col, row] := ComboBox1.Items[ComboBox1.ItemIndex];
  StringGrid1.Cells[1, row] := inttostr(ComboBox1.ItemIndex);
  ComboBox1.Visible := false;
end;

procedure TForm2.egresosClick(Sender: TObject);
begin
  Form12.Show;
end;

procedure TForm2.cajadiariaClick(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.estadisticasClick(Sender: TObject);
begin
  Form15.Show;
end;

procedure TForm2.DNIEnter(Sender: TObject);
begin
  ADOQuery1.Edit;
  // select * from clientes where dni = '35140762';
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;

  ADOQuery1.SQL.add('select * from clientes where dni = ' + Edit2.Text);
  ADOQuery1.Open;
  ADOQuery1.ExecSQL;

  Edit3.Text := ADOQuery1.FieldByname('Nombre').AsString;
  //apellidoCliente:=StrToInt(ADOQuery4.FieldByname('Código_Cliente').AsString);
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;

end;

end.

