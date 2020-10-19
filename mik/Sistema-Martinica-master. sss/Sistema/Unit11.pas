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
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery2Proveedor: TStringField;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
 //   procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
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
  apellidoCliente,estado,indicador:integer;
  NuevoEstado:string;
implementation

uses Unit6;

{$R *.dfm}

procedure TForm10.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
  NuevoEstado:='�Quiere cambiar el estado del pedido?';
end;


procedure TForm10.BitBtn1Click(Sender: TObject);
begin
Form10.Hide;
Form6.Show;
end;







procedure TForm10.Button1Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
  var
  buttonSelected : Integer;

begin
   buttonSelected := MessageDlg(NuevoEstado,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
         begin
          indicador:=StrToInt(ADOQuery2.FieldByname('C�digo_Pedidos').AsString);


          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.Add('UPDATE Pedidos SET ');
          ADOQuery2.SQL.Add('Pedidos.C�digo_Estado='+IntToStr(estado));
          ADOQuery2.SQL.Add('WHERE Pedidos.C�digo_Pedidos='+IntToStr(indicador));


           ADOQuery2.ExecSQL;

           ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
         end
   else
    if buttonSelected = mrCancel then
end;




procedure TForm10.DBLookupComboBox2Click(Sender: TObject);
begin
          ADOQuery4.Close;
         ADOQuery4.SQL.Clear;

          ADOQuery4.SQL.add('SELECT C�digo_Estado FROM Estados WHERE Estados.Detalle='''+DBLookupComboBox2.Text+'''');
         ADOQuery4.Open;
         ADOQuery4.ExecSQL;

          estado:=StrToInt(ADOQuery4.FieldByname('C�digo_Estado').AsString);
          ADOQuery4.Close;
          ADOQuery4.SQL.Clear;

          ADOQuery4.Close;
          ADOQuery4.SQL.Clear;




end;

procedure TForm10.DBLookupComboBox1Click(Sender: TObject);
begin

          ADOQuery5.Close;
          ADOQuery5.SQL.Clear;

          ADOQuery5.SQL.add('SELECT C�digo_Cliente FROM Clientes WHERE Clientes.Apellido='''+DBLookupComboBox1.Text+'''');
          ADOQuery5.Open;
          ADOQuery5.ExecSQL;

          apellidoCliente:=StrToInt(ADOQuery5.FieldByname('C�digo_Cliente').AsString);
          ADOQuery5.Close;
          ADOQuery5.SQL.Clear;

          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.add('SELECT DISTINCT C�digo_Pedidos, Proveedores.Apellido as [Proveedor], Clientes.Apellido as [Cliente],  ');
          ADOQuery2.SQL.add('Pedidos.Fecha, Pedidos.Detalle,Pedidos.Observaciones ,Estados.Detalle as [Estado] ');
          ADOQuery2.SQL.add('FROM  Pedidos ');
          ADOQuery2.SQL.add('LEFT JOIN Proveedores ON Proveedores.C�digo_Proveedor = Pedidos.C�digo_Proveedor ');
          ADOQuery2.SQL.add('LEFT JOIN Estados ON Estados.C�digo_Estado = Pedidos.C�digo_Estado ');
          ADOQuery2.SQL.add('LEFT JOIN Clientes ON Clientes.C�digo_Cliente = Pedidos.C�digo_Cliente ');
          ADOQuery2.SQL.add('WHERE Pedidos.C�digo_Cliente='+IntToStr(apellidoCliente));



          ADOQuery2.Open;
          ADOQuery2.ExecSQL;
          DBGrid1.DataSource:=DataSource2;

          DBGrid1.Refresh;

end;

end.
