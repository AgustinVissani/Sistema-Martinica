unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label4: TLabel;
    ListBox1: TListBox;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
Form4.ShowModal;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form6.Hide;
Form7.ShowModal;
end;

end.
