unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ListBox1: TListBox;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
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

procedure TForm4.FormCreate(Sender: TObject);
begin
////////////////
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
form4.Hide;
Form5.ShowModal;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Form4.Hide;
Form2.ShowModal;
end;



procedure TForm4.Button3Click(Sender: TObject);
begin
form4.Hide;
Form6.ShowModal;
end;

end.
