unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DBCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    ADOQuery1: TADOQuery;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2Cdigo_Pedidos: TAutoIncField;
    ADOQuery2Cdigo_Proveedor: TIntegerField;
    ADOQuery2Fecha: TWideStringField;
    ADOQuery2Cdigo_Estado: TIntegerField;
    ADOQuery2Cdigo_Pedidos_Clientes: TAutoIncField;
    ADOQuery2Cdigo_Proveedor_1: TIntegerField;
    ADOQuery2Cdigo_Cliente: TIntegerField;
    DataSource2: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TForm6.FormShow(Sender: TObject);
begin
ADOQuery1.Active:= True;
while not ADOQuery1.Eof do
  begin
    DBComboBox1.Items.Add(ADOQuery1.Fields[0].Text);
    ADOQuery1.Next;
  end;
end;


end.
