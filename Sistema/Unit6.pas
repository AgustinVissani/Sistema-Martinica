unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DBCtrls, DB, ADODB, Grids, DBGrids,
  Mask;

type
TADOSQLThread = class(TThread);
type THackDBGrid = class(TDBGrid);
type

  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    ADOQuery1DNI: TIntegerField;
    ADOQuery1Apellido: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label8: TLabel;
    ADOQuery1Cdigo_Cliente: TAutoIncField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    ADOQuery2Proveedor: TStringField;
    ADOQuery2Cliente: TStringField;
    ADOQuery2Fecha: TWideStringField;
    ADOQuery2Detalle: TStringField;
    ADOQuery2Estado: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBLookupComboBox1Click(Sender: TObject);
    


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit4, Unit7;

{$R *.dfm}

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Form6.Hide;
Form4.Show;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form6.Hide;
Form7.Show;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;
     





procedure TForm6.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (THackDBGrid(DBGrid1).DataLink.ActiveRecord + 1 = THackDBGrid(DBGrid1).Row)
 or (gdFocused in State) or (gdSelected in State) then
 begin
 DBGrid1.Canvas.Brush.Color := clSkyBlue;
 DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
 DBGrid1.Canvas.Font.Color := clGreen;
 end;
end;




procedure TForm6.DBLookupComboBox1Click(Sender: TObject);
begin
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.add('SELECT Código_Cliente FROM Clientes WHERE Clientes.Apellido='''+DBLookupComboBox1.Text+'''');
          ADOQuery2.Open;
          apellidoCliente:=StrToInt(ADOQuery2.FieldByname('Código_Cliente').AsString);
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.add('SELECT DISTINCT Proveedores.Apellido as [Proveedor], Clientes.Apellido as [Cliente], ');
          ADOQuery2.SQL.add('Pedidos.Fecha, Pedidos.Detalle, Estados.Detalle as [Estado] ');
          ADOQuery2.SQL.add('FROM  Pedidos ');
          ADOQuery2.SQL.add('LEFT JOIN Proveedores ON Proveedores.Código_Proveedor = Pedidos.Código_Proveedor ');
          ADOQuery2.SQL.add('LEFT JOIN Estados ON Estados.Código_Estado = Pedidos.Código_Estado ');
          ADOQuery2.SQL.add('LEFT JOIN Clientes ON Clientes.Código_Cliente = Pedidos.Código_Cliente ');
          ADOQuery2.SQL.add('WHERE Pedidos.Código_Cliente='+IntToStr(apellidoCliente));
          ADOQuery2.ExecSQL;

          ADOQuery2.Refresh;



  {
  SELECT DISTINCT Proveedores.Apellido as [Proveedor], Clientes.Apellido as [Cliente], Pedidos.Fecha, Pedidos.Detalle,Estados.Detalle as [Estado]
FROM  Pedidos
LEFT JOIN Proveedores ON Proveedores.Código_Proveedor = Pedidos.Código_Proveedor
LEFT JOIN Estados ON Estados.Código_Estado = Pedidos.Código_Estado
LEFT JOIN Clientes ON Clientes.Código_Cliente = Pedidos.Código_Cliente

  }
end;

end.
