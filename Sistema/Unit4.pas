unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery1Codigo_Proveedor: TIntegerField;
    ADOQuery1Nombre: TWideStringField;
    ADOQuery1Apellido: TWideStringField;
    ADOQuery1Telfono: TWideStringField;
    ADOQuery1Domicilio: TWideStringField;
    ADOQuery1CUIT: TWideStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2,Unit1, Unit5, Unit6;

{$R *.dfm}



procedure TForm4.Button2Click(Sender: TObject);
begin
form4.Hide;
Form5.Show;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Form4.Hide;
Form2.Show;
end;



procedure TForm4.Button3Click(Sender: TObject);
begin
form4.Hide;
Form6.Show;
end;

end.
