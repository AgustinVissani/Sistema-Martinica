unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm15 = class(TForm)
    Label1: TLabel;
    fechaInicio: TEdit;
    Label2: TLabel;
    fechaFin: TEdit;
    Label3: TLabel;
    ListBox1: TListBox;
    consultarDiez: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

procedure TForm15.FormCreate(Sender: TObject);
var
hMenuHandle: Integer;
begin
hMenuHandle := GetSystemMenu(Handle, False);
if (hMenuHandle <> 0) then
DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;
end.
