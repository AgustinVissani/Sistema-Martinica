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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

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
end;



procedure TForm7.Button3Click(Sender: TObject);
var  
  detalle: string;
  observaciones: string;
begin

  detalle:= RichEdit1.Text;
  observaciones:= RichEdit2.Text;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;

  ADOQuery2.SQL.Add('INSERT INTO Pedidos (Código_Proveedor, Detalle, Observaciones, ');
  ADOQuery2.SQL.Add('Código_Estado) VALUES (');
  ADOQuery2.SQL.Add('1, '); //Código proveedor
  ADOQuery2.SQL.Add(''''+detalle+''',');  //Detalle
  ADOQuery2.SQL.Add(''''+observaciones+''',');  //Observaciones
  ADOQuery2.SQL.Add('1)');  //Código estado
  ADOQuery2.ExecSQL;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;

end;



end.
