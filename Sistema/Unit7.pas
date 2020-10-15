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
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    Label6: TLabel;
    Button2: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  NuevoPedido: string;
  apellidoProveedor:integer;


implementation
uses unit4;

{$R *.dfm}

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Form7.Hide;
Form4.Show;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

  NuevoPedido:='¿Quiere agregar un pedido?';
  DBLookupComboBox2.Visible:=false;
  Label6.Visible:=false;

end;



procedure TForm7.Button3Click(Sender: TObject);

const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
  detalle,observaciones: string;
  buttonSelected : Integer;
begin

begin
   buttonSelected := MessageDlg(NuevoPedido,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
          begin //relacion de tabla Pedidos
          detalle:= RichEdit1.Text;
          observaciones:= RichEdit2.Text;
          apellidoProveedor:= ADOQuery2.SQL.add('SELECT Código_Proveedor FROM Proveedores WHERE Provedores.Apellido='''+DBLookupComboBox1.Text);

          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;

          ADOQuery2.SQL.Add('INSERT INTO Pedidos (Código_Proveedor,Fecha, Detalle, Observaciones, ');
          ADOQuery2.SQL.Add('Código_Estado) VALUES (');
      //    ADOQuery2.SQL.Add('1');

          ADOQuery2.SQL.Add(inttostr(apellidoProveedor)); //Código proveedor
          ADOQuery2.SQL.Add(',GETDATE(),'); //Fecha actual
          ADOQuery2.SQL.Add(''''+detalle+''',');  //Detalle
          ADOQuery2.SQL.Add(''''+observaciones+''',');  //Observaciones
          ADOQuery2.SQL.Add('1)');  //Código estado
          ADOQuery2.ExecSQL;

          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
                       {
          begin   //relacion de tabla Pedidos_clientes EN PROCESO!!!!!!!!!!!!!!!!!!!!!!
           ShowMessage('Selecciones cliente para guardar el pedido');
           Label6.Visible:=false;

           ADOQuery4.Close;
           ADOQuery4.SQL.Clear;

           DBLookupComboBox2.Visible:=true;
           ADOQuery4.SQL.Add('INSERT INTO Pedidos_Clientes (Código_Proveedor,Código_Cliente ');
           ADOQuery4.SQL.Add('1, '); //Código proveedor
           ADOQuery4.SQL.Add('1)');  //Código cliente
           ADOQuery4.ExecSQL;

           ADOQuery4.Close;
           ADOQuery4.SQL.Clear;

         end;                    }
   end
     

   else
    if buttonSelected = mrCancel then

end;


end;



procedure TForm7.Button1Click(Sender: TObject);
begin
ADOQuery2.Cancel;
end;


end.
