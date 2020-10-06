unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Button3: TButton;
    Button4: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ADOQuery1Cdigo_Proveedor: TIntegerField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    ADOQuery1CUIT: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
//form4.Hide;
//Form5.Show;
ADOQuery1.Append;
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



procedure TForm4.Button1Click(Sender: TObject);
begin
  ADOQuery1.Edit;
end;




procedure TForm4.Button4Click(Sender: TObject);
begin
  ADOQuery1.Delete;
end;





procedure TForm4.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
      ADOQuery1.Post;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;

end.
