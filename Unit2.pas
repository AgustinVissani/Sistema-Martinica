unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls,jpeg,Buttons;
type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Ventas1: TMenuItem;
    Strock1: TMenuItem;
    Ventas2: TMenuItem;
    Clientes1: TMenuItem;
    CajaDiaria1: TMenuItem;
    Proveedores1: TMenuItem;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure CajaDiaria1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses  Unit1, Unit3, Unit4;

{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
begin
//////////
end;




procedure TForm2.CajaDiaria1Click(Sender: TObject);
begin
form2.Hide;
Form3.Show;
Form3.FormCreate(Self);
end;

procedure TForm2.Proveedores1Click(Sender: TObject);
begin
form2.Hide;
Form4.ShowModal;
//Form4.FormCreate(Self);
end;

end.

