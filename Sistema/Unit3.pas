unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons,
  Mask, DBCtrls,
  DB, ADODB, Grids, DBGrids;


type
  TForm3 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1fecha: TWideStringField;
    ADOQuery1efectivo: TFloatField;
    ADOQuery1tarjeta: TFloatField;
    ADOQuery1acumulado: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses  Unit2,Unit1;


{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;



procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  form3.Hide;
  form2.Show;
end;

procedure TForm3.Button1Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
  buttonSelected : Integer;
begin
  buttonSelected := MessageDlg('¿Desea cerrar la caja diaria?', mtConfirmation, mbOKCancel, 0);
  if buttonSelected = mrOK then
    begin
    end

end;

end.
