unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DBCtrls, DB, ADODB;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    Button3: TButton;
    BitBtn1: TBitBtn;
    ListBox2: TListBox;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TForm7.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;

end.
