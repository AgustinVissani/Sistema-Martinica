unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1id_prod: TAutoIncField;
    ADOQuery1descripcion: TStringField;
    ADOQuery1precio_unitario: TFloatField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
  ADOQuery1.Append;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  ADOQuery1.Edit;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  ADOQuery1.Delete;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
If (DBEdit1.Text <> '') or (StrToInt(DBEdit2.Text) < 0)
Then
Begin
ShowMessage('Reingrese los datos.');
ADOQuery1.Cancel;
End
Else
ADOQuery1.Post;
end;

end.
