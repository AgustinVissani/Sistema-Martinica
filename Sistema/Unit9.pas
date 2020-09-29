unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB;

type
  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1Cdigo_Cliente: TIntegerField;
    ADOQuery1DNI: TIntegerField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses  Unit1, Unit2, Unit8;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
begin
form9.Hide;
Form8.Show;
end;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
    Form9.Hide;
    Form2.Show;
end;

end.
