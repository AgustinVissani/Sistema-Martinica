unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    ListBox1: TListBox;
    Button3: TButton;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses unit4;

{$R *.dfm}

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Form7.Hide;
Form4.Show;
end;

end.
