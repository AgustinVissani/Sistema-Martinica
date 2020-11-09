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
    Productos: TLabel;
    Formadepago: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    altaCliente: TLabel;
    ingresarPago: TButton;
    Button1: TButton;
    calcularTotal: TButton;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2id_prod: TAutoIncField;
    ADOQuery2descripcion: TStringField;
    ADOQuery2precio_unitario: TFloatField;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button5: TButton;
    StringGrid1: TStringGrid;
    ComboBox1: TComboBox;
    dni: TEdit;
    nombre: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Cdigo_Cliente: TAutoIncField;
    ADOQuery1DNI: TIntegerField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    apellido: TEdit;
    id_cliente: TEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    StringGrid2: TStringGrid;
    Label5: TLabel;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    id_venta: TEdit;
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
    procedure agregarProductoClick(Sender: TObject);
    procedure consultarEgresosClick(Sender: TObject);
    procedure consultarCajaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure egresosClick(Sender: TObject);
    procedure cajadiariaClick(Sender: TObject);
    procedure estadisticasClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure calcularTotalClick(Sender: TObject);
    procedure ingresarPagoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  col, row, fila: Integer;

implementation

uses  Unit1, Unit3, Unit4, Unit8, Unit9, Unit12, Unit14, Unit13, Unit15,
  Unit16;

{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
var
hMenuHandle: Integer;
begin
  fila := 1;
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
  Form2.StringGrid2.Cells[0, 0] := 'Forma de pago';
  Form2.StringGrid2.Cells[1, 0] := 'Monto';
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('select * from productos');
  ADOQuery2.Open;
  while not ADOQuery2.Eof do
    begin
      ComboBox1.Items.Add(ADOQuery2.FieldByname('id_prod').AsString + '.' + ADOQuery2.FieldByname('descripcion').AsString);
      ADOQuery2.Next;
    end;

//  StringGrid1.Cells[0, row] := ADOQuery1.FieldByname('precio_unitario').AsString;
  //nombre.Text := ADOQuery1.FieldByname('Nombre').AsString;
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

procedure TForm2.agregarProductoClick(Sender: TObject);
begin
  Form2.StringGrid1.RowCount := Form2.StringGrid1.RowCount + 1;
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

procedure TForm2.Button5Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from clientes where dni = ' + QuotedStr(dni.Text));
  ADOQuery1.Open;
  nombre.Text := ADOQuery1.FieldByname('Nombre').AsString;
  apellido.Text := ADOQuery1.FieldByname('Apellido').AsString;
  id_cliente.Text := ADOQuery1.FieldByname('Código_Cliente').AsString;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('select * from productos where id_prod = ' + QuotedStr(Copy(ComboBox1.Text, 1, AnsiPos('.', ComboBox1.Text) - 1)));
  ADOQuery2.Open;
  StringGrid1.Cells[0, row] := ADOQuery2.FieldByname('descripcion').AsString;
  StringGrid1.Cells[1, row] := ADOQuery2.FieldByname('precio_unitario').AsString;
  //nombre.Text := ADOQuery1.FieldByname('Nombre').AsString;
end;

procedure TForm2.Label4Click(Sender: TObject);
begin
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
end;

procedure TForm2.calcularTotalClick(Sender: TObject);
var
  acumulado, iva, descuento, total: real;
  i, j: integer;
begin
  acumulado := 0;
  i := 1;
  if (StringGrid1.Cells[1, i] <> '') and (StringGrid1.Cells[2, i] <> '') then
    for i := 1 to (StringGrid1.RowCount - 1) do
      begin
        StringGrid1.Cells[3, i] := floattostr(strtofloat(StringGrid1.Cells[1, i]) * strtofloat(StringGrid1.Cells[2, i]));
        acumulado := acumulado + strtofloat(StringGrid1.Cells[3, i]);
      end;
  iva := acumulado * 0.21;
  descuento := strtofloat(Edit2.Text);
  total := (acumulado + iva) * (100 - descuento) / 100;
  Edit1.Text := floattostr(iva);
  Edit3.Text := floattostr(total);
end;

procedure TForm2.ingresarPagoClick(Sender: TObject);
var
  acumulado: real;
  i, saldada, inserto: integer;
begin
  inserto := 0;
  if (ComboBox2.Text <> '')
  and (Edit4.Text <> '')
  and (strtofloat(Edit4.Text) > 0)
  and (Label5.Caption = 'ADEUDA') then
    begin
      saldada := 0;
      acumulado := 0;
      if (StringGrid2.Cells[0, 1] = '') then
        inserto := -1;
      StringGrid2.Cells[0, StringGrid2.RowCount - 1] := ComboBox2.Text;
      StringGrid2.Cells[1, StringGrid2.RowCount - 1] := Edit4.Text;
      for i := 1 to fila do
        begin
          acumulado := acumulado + strtofloat(StringGrid2.Cells[1, i]);
        end;
      if (acumulado >= strtofloat(Edit3.Text)) then
        begin
          Label5.Caption := 'SALDADA';
          Label5.Color := clGreen;
          saldada := -1;
          ingresarPago.Enabled := false;
        end
      else
        begin
          StringGrid2.RowCount := StringGrid2.RowCount + 1;
          fila := fila + 1;
        end;
      if (inserto = -1) then
        begin
          // inserto en la tabla ventas
          ADOQuery3.SQL.Clear;
          ADOQuery3.SQL.Add('insert into ventas (Código_Cliente, fecha, total, saldada) values (');
          ADOQuery3.SQL.Add(id_cliente.Text + ',');
          ADOQuery3.SQL.Add(DateToStr(Now) + ',');
          ADOQuery3.SQL.Add(Edit3.Text + ',');
          ADOQuery3.SQL.Add(inttostr(saldada) + ')');
          ADOQuery3.ExecSQL;
          ADOQuery3.SQL.Clear;
          ADOQuery3.SQL.Add('select top 1 id_venta from ventas order by id_venta desc');
          ADOQuery3.Open;
          id_venta.Text := ADOQuery3.FieldByname('id_venta').AsString;
        end
      else
        begin
          if (saldada = -1) then
            begin
              // actualizo en la tabla ventas
              ADOQuery3.SQL.Clear;
              ADOQuery3.SQL.Add('update ventas set saldada = -1 where id_venta = ' + id_venta.Text);
              ADOQuery3.ExecSQL;
            end;
        end;
    end


end;

end.

