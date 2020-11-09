unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids,
  DBGrids,
  DB, ADODB, Buttons, Mask, DBCtrls;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1fecha: TWideStringField;
    ADOQuery1descripcion: TStringField;
    ADOQuery1monto: TFloatField;
    procedure agregarEgresoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.agregarEgresoClick(Sender: TObject);
begin
  //Form12.StringGrid1.RowCount := Form12.StringGrid1.RowCount + 1;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit3.Text := '';
  DBEdit1.Enabled := false;
  DBEdit2.Enabled := false;
  DBEdit3.Enabled := false;
end;

procedure TForm12.Button1Click(Sender: TObject);
begin
  ADOQuery1.Append;
  DBEdit1.Enabled := true;
  DBEdit2.Enabled := true;
  DBEdit3.Enabled := true;
  DBEdit1.Text := DateToStr(Now);
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  ADOQuery1.Edit;
  DBEdit1.Enabled := true;
  DBEdit2.Enabled := true;
  DBEdit3.Enabled := true;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
  ADOQuery1.Delete;
end;

procedure TForm12.BitBtn1Click(Sender: TObject);
begin
  If (StrToInt(DBEdit3.Text) <= 0)
    and (DBEdit1.Text <> '')
    and (DBEdit2.Text <> '')
    and (DBEdit3.Text <> '') Then
    Begin
      ShowMessage('Ingrese todos los valores correctamente.');
      ADOQuery1.Cancel;
    End
  Else
    begin
      ADOQuery1.Post;
      DBEdit1.Text := '';
      DBEdit2.Text := '';
      DBEdit3.Text := '';
      DBEdit1.Enabled := false;
      DBEdit2.Enabled := false;
      DBEdit3.Enabled := false;
    end;
end;

procedure TForm12.BitBtn2Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit3.Text := '';
  DBEdit1.Enabled := false;
  DBEdit2.Enabled := false;
  DBEdit3.Enabled := false;
end;


end.
