unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls,jpeg,Buttons;
type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Martinica: TMenuItem;
    Ventas2: TMenuItem;
    Clientes1: TMenuItem;
    CajaDiaria1: TMenuItem;
    Proveedores1: TMenuItem;
    Image1: TImage;
    Salir1: TMenuItem;
    Cerrarsesin1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure CajaDiaria1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Cerrarsesin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses  Unit1, Unit3, Unit4, Unit8, Unit9;

{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;




procedure TForm2.CajaDiaria1Click(Sender: TObject);
begin
form2.Hide;
Form3.Show;
end;

procedure TForm2.Proveedores1Click(Sender: TObject);
begin
form2.Hide;
Form4.Show;  //proveedores
end;

procedure TForm2.Clientes1Click(Sender: TObject);
begin
form2.Hide;
Form9.Show;  //clientes
end;



procedure TForm2.Salir1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm2.Cerrarsesin1Click(Sender: TObject);
begin
form2.Hide;
form1.Show;
end;

end.

