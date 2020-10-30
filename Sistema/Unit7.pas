unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DBCtrls, DB, ADODB, ActnList, Mask,
  ExtCtrls;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery1Cdigo_Proveedor: TAutoIncField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    ADOQuery1CUIT: TStringField;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3Apellido: TStringField;
    ADOQuery3Cdigo_Cliente: TAutoIncField;
    ADOQuery3DNI: TIntegerField;
    ADOQuery3Nombre: TStringField;
    ADOQuery3Telfono: TStringField;
    ADOQuery3Domicilio: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    Label9: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
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
  Saved: string;


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

  NuevoPedido:='�Quiere agregar un pedido?';
  Saved:= 'Se guard� con �xito.';
  RichEdit1.Text:='';
  RichEdit2.Text:='';
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

          ADOQuery2.SQL.add('SELECT C�digo_Proveedor FROM Proveedores WHERE Proveedores.Apellido='''+DBLookupComboBox1.Text+'''');
          ADOQuery2.Open;
          apellidoProveedor:=StrToInt(ADOQuery2.FieldByname('C�digo_Proveedor').AsString);
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

end;

procedure TForm7.DBLookupComboBox2Click(Sender: TObject);
begin
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.add('SELECT C�digo_Cliente FROM Clientes WHERE Clientes.Apellido='''+DBLookupComboBox2.Text+'''');
          ADOQuery2.Open;
          apellidoCliente:=StrToInt(ADOQuery2.FieldByname('C�digo_Cliente').AsString);
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Application.Terminate;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
  ADOQuery2.Cancel;
  RichEdit1.Clear;
  RichEdit2.Clear;
end;

procedure TForm7.BitBtn3Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
  detalle,observaciones: string;
  buttonSelected : Integer;


begin
   buttonSelected := MessageDlg(NuevoPedido,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
          begin //relacion de tabla Pedidos
          if (apellidoProveedor = 0) or (apellidoCliente = 0)
             or (RichEdit1.Text = '') then
            showmessage(CompletarCampos)
          else
          begin
            detalle:= RichEdit1.Text;
            observaciones:= RichEdit2.Text;
            ADOQuery2.Close;
            ADOQuery2.SQL.Clear;

            ADOQuery2.SQL.Add('INSERT INTO Pedidos (C�digo_Proveedor,C�digo_Cliente, Fecha, Detalle, Observaciones, ');
            ADOQuery2.SQL.Add('C�digo_Estado) VALUES (');

            ADOQuery2.SQL.Add(inttostr(apellidoProveedor)); //C�digo proveedor
            ADOQuery2.SQL.Add(','+inttostr(apellidoCliente)); //C�digo cliente
            ADOQuery2.SQL.Add(',GETDATE(),'); //Fecha actual
            ADOQuery2.SQL.Add(''''+detalle+''',');  //Detalle
            ADOQuery2.SQL.Add(''''+observaciones+''',');  //Observaciones
            ADOQuery2.SQL.Add('1)');  //C�digo estado
            ADOQuery2.ExecSQL;

            ADOQuery2.Close;
            ADOQuery2.SQL.Clear;
            RichEdit1.Text:='';
            RichEdit2.Text:='';
            showmessage(Saved);
          end;  //else
   end

   else
    if buttonSelected = mrCancel then

end;

end.
