unit Unit1;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2,Unit3, Unit4,Unit5;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Usuarios where Usuario='''+Edit1.Text+''' and Contraseña=''' +Edit2.Text + ''' ' );
ADOQuery1.Open;


if not ADOQuery1.Eof then
  begin
  form1.Hide;
  Form2.Show;
  Form2.FormCreate(Self);
  end
  else
  ShowMessage('Usuario o contraseña incorrecto');
end;



procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key in [#13] then
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Usuarios where Usuario='''+Edit1.Text+''' and Contraseña=''' +Edit2.Text + ''' ' );
ADOQuery1.Open;


if not ADOQuery1.Eof then
  begin
  form1.Hide;
  Form2.Show;
  Form2.FormCreate(Self);
  end
  else
  ShowMessage('Usuario o contraseña incorrecto');
 end; 
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key in [#13] then
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Usuarios where Usuario='''+Edit1.Text+''' and Contraseña=''' +Edit2.Text + ''' ' );
ADOQuery1.Open;


if not ADOQuery1.Eof then
  begin
  form1.Hide;
  Form2.Show;
  Form2.FormCreate(Self);
  end
  else
  ShowMessage('Usuario o contraseña incorrecto');
end;
end;

end.
