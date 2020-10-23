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
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3Proveedor: TStringField;
    ADOQuery3Cliente: TStringField;
    ADOQuery3Fecha: TWideStringField;
    ADOQuery3Detalle: TStringField;
    ADOQuery3Estado: TStringField;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    
    


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit4, Unit7,Unit11;

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
          ADOQuery4.Close;
          ADOQuery4.SQL.Clear;

          ADOQuery4.SQL.add('SELECT Código_Cliente FROM Clientes WHERE Clientes.Apellido='''+DBLookupComboBox1.Text+'''');
          ADOQuery4.Open;
          ADOQuery4.ExecSQL;

          apellidoCliente:=StrToInt(ADOQuery4.FieldByname('Código_Cliente').AsString);
          ADOQuery4.Close;
          ADOQuery4.SQL.Clear;

          ADOQuery3.SQL.Clear;

          ADOQuery3.SQL.add('SELECT DISTINCT Proveedores.Apellido as [Proveedor], Clientes.Apellido as [Cliente], ');
          ADOQuery3.SQL.add('Pedidos.Fecha, Pedidos.Detalle, Estados.Detalle as [Estado] ');
          ADOQuery3.SQL.add('FROM  Pedidos ');
          ADOQuery3.SQL.add('LEFT JOIN Proveedores ON Proveedores.Código_Proveedor = Pedidos.Código_Proveedor ');
          ADOQuery3.SQL.add('LEFT JOIN Estados ON Estados.Código_Estado = Pedidos.Código_Estado ');
          ADOQuery3.SQL.add('LEFT JOIN Clientes ON Clientes.Código_Cliente = Pedidos.Código_Cliente ');
          ADOQuery3.SQL.add('WHERE Pedidos.Código_Cliente='+IntToStr(apellidoCliente));


          ADOQuery3.Open;
          ADOQuery3.ExecSQL;
          DBGrid1.DataSource:=DataSource3;

          DBGrid1.Refresh;



end;

procedure TForm6.FormShow(Sender: TObject);
begin
  ADOQuery2.Open;
  ADOQuery2.ExecSQL;
  DBGrid1.DataSource:=DataSource2;
  DBGrid1.Refresh;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Hide;
Form10.Show;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
