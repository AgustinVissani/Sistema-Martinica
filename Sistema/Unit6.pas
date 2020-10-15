unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DBCtrls, DB, ADODB, Grids, DBGrids,
  Mask;

type
TADOSQLThread = class(TThread);
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
    ADOQuery2Apellido: TStringField;
    ADOQuery2CUIT: TStringField;
    ADOQuery2DNI: TIntegerField;
    ADOQuery2Apellido_1: TStringField;
    ADOQuery2Fecha: TWideStringField;
    ADOQuery2Cdigo_Estado: TIntegerField;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    ADOQuery1DNI: TIntegerField;
    ADOQuery1Apellido: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery2Detalle: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    


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
     





end.
