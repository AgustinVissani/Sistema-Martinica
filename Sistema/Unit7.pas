unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DBCtrls, DB, ADODB, ActnList;

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
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TForm7.FormShow(Sender: TObject);
begin
  ADOQuery1.Active:= True;
while not ADOQuery1.Eof do
  begin
    DBComboBox1.Items.Add(ADOQuery1.Fields[0].Text);
    ADOQuery1.Next;
  end;
end;


procedure TForm7.Button3Click(Sender: TObject);
var
  query: string;
begin

  query:='INSERT INTO Pedidos (idProveedor, Detalle, Observaciones, Código_Estado) VALUES (123, "14/10/2020", "Detalle de prueba", "Detalle de observaciones")';


  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;


  ADOQuery2.SQL.Add('INSERT INTO Pedidos (Código_Proveedor, Detalle, Observaciones, ');
  ADOQuery2.SQL.Add('Código_Estado) VALUES (1, ''Detalle de prueba'', ');
  ADOQuery2.SQL.Add('''Detalle de observaciones'', 1)');
  ADOQuery2.ExecSQL;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  
end;

end.
