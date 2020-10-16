unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBCtrls, ADODB, StdCtrls, Buttons, Mask;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery2Proveedor: TStringField;
    ADOQuery2Cliente: TStringField;
    ADOQuery2Fecha: TWideStringField;
    ADOQuery2Estado: TStringField;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ADOQuery2Detalle: TStringField;
    ADOQuery2Observaciones: TStringField;
    Button1: TButton;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    ADOQuery2Cdigo_Pedidos: TAutoIncField;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
 //   procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
//    procedure Label8Click(Sender: TObject);
//    procedure DBEdit6Change(Sender: TObject);
   // procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  apellidoCliente:integer;
implementation

uses Unit6;

{$R *.dfm}

procedure TForm10.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;

procedure TForm10.DBLookupComboBox1Click(Sender: TObject);
begin           {
          ADOQuery5.Close;
          ADOQuery5.SQL.Clear;

          ADOQuery5.SQL.add('SELECT Código_Cliente FROM Clientes WHERE Clientes.Apellido='''+DBLookupComboBox1.Text+'''');
          ADOQuery5.Open;
          ADOQuery5.ExecSQL;

          apellidoCliente:=StrToInt(ADOQuery5.FieldByname('Código_Cliente').AsString);
          ADOQuery5.Close;
          ADOQuery5.SQL.Clear;

          ADOQuery4.SQL.Clear;

          ADOQuery4.SQL.add('SELECT DISTINCT  Proveedores.Apellido as [Proveedor],Clientes.Apellido as [Cliente], ');
          ADOQuery4.SQL.add('Pedidos.Fecha, Estados.Detalle as [Estado] ');
          ADOQuery4.SQL.add('FROM  Pedidos ');
          ADOQuery4.SQL.add('LEFT JOIN Proveedores ON Proveedores.Código_Proveedor = Pedidos.Código_Proveedor ');
          ADOQuery4.SQL.add('LEFT JOIN Estados ON Estados.Código_Estado = Pedidos.Código_Estado ');
          ADOQuery4.SQL.add('LEFT JOIN Clientes ON Clientes.Código_Cliente = Pedidos.Código_Cliente ');
          ADOQuery4.SQL.add('WHERE Pedidos.Código_Cliente='+IntToStr(apellidoCliente));


          ADOQuery4.Open;
          ADOQuery4.ExecSQL;
          DBGrid1.DataSource:=DataSource4;

          DBGrid1.Refresh;    }
end;

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
Form10.Hide;
Form6.Show;
end;







procedure TForm10.Button1Click(Sender: TObject);
begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;

        ADOQuery1.SQL.Add('UPDATE Pedidos SET ');
        ADOQuery1.SQL.Add('Pedidos.Código_Estado=4 ');
        ADOQuery1.SQL.Add('WHERE Pedidos.Código_Pedidos=1');   //cambiar el 1 por el valor id del dbcombobox de estados

        ADOQuery1.ExecSQL;

        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;


end;





end.
