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
    ADOQuery1DNI: TIntegerField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    Button3: TButton;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
ADOQuery1.Append;
end;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
    Form9.Hide;
    Form2.Show;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
ADOQuery1.Edit;
end;

procedure TForm9.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
end;

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
  ADOQuery1.Post;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  ADOQuery1.Delete;
end;

end.
