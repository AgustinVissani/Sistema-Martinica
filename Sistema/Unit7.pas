unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DBCtrls, DB, ADODB, ActnList, Mask;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery1Cdigo_Proveedor: TAutoIncField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    ADOQuery1CUIT: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery3Apellido: TStringField;
    ADOQuery3Cdigo_Cliente: TAutoIncField;
    ADOQuery3DNI: TIntegerField;
    ADOQuery3Nombre: TStringField;
    ADOQuery3Telfono: TStringField;
    ADOQuery3Domicilio: TStringField;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  NuevoPedido: string;
  apellidoProveedor:integer;
  apellidoCliente:integer;


implementation
uses unit4, Unit6;

{$R *.dfm}

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Form7.Hide;
Form6.Show;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

  NuevoPedido:='¿Quiere agregar un pedido?';

end;



procedure TForm7.Button3Click(Sender: TObject);

const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
  detalle,observaciones: string;
  buttonSelected : Integer;


begin
   buttonSelected := MessageDlg(NuevoPedido,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
          begin //relacion de tabla Pedidos
          detalle:= RichEdit1.Text;
          observaciones:= RichEdit2.Text;

          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.Add('INSERT INTO Pedidos (Código_Proveedor,Código_Cliente, Fecha, Detalle, Observaciones, ');
          ADOQuery2.SQL.Add('Código_Estado) VALUES (');

          ADOQuery2.SQL.Add(inttostr(apellidoProveedor)); //Código proveedor
          ADOQuery2.SQL.Add(','+inttostr(apellidoCliente)); //Código cliente
          ADOQuery2.SQL.Add(',GETDATE(),'); //Fecha actual
          ADOQuery2.SQL.Add(''''+detalle+''',');  //Detalle
          ADOQuery2.SQL.Add(''''+observaciones+''',');  //Observaciones
          ADOQuery2.SQL.Add('1)');  //Código estado
          ADOQuery2.ExecSQL;

          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;


   end

   else
    if buttonSelected = mrCancel then

end;




procedure TForm7.Button1Click(Sender: TObject);
begin
ADOQuery2.Cancel;
end;


procedure TForm7.Button2Click(Sender: TObject);
begin
  ShowMessage(IntToStr(apellidoProveedor));
end;

procedure TForm7.DBLookupComboBox1Click(Sender: TObject);
begin

          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.add('SELECT Código_Proveedor FROM Proveedores WHERE Proveedores.Apellido='''+DBLookupComboBox1.Text+'''');
          ADOQuery2.Open;
          apellidoProveedor:=StrToInt(ADOQuery2.FieldByname('Código_Proveedor').AsString);
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

end;

procedure TForm7.DBLookupComboBox2Click(Sender: TObject);
begin
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.add('SELECT Código_Cliente FROM Clientes WHERE Clientes.Apellido='''+DBLookupComboBox2.Text+'''');
          ADOQuery2.Open;
          apellidoCliente:=StrToInt(ADOQuery2.FieldByname('Código_Cliente').AsString);
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Application.Terminate;
end;

end.
