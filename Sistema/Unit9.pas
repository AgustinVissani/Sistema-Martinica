unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB, Mask, DBCtrls;

type
  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1DNI: TIntegerField;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    Button3: TButton;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn4: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses  Unit1, Unit2, Unit8;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
//form9.Hide;
//Form8.Show;
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   buttonSelected := MessageDlg('¿Desea agregar un cliente?',mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
        ShowMessage('Puede agregar un nuevo cliente');
        ADOQuery1.Append;
   end
   else
    if buttonSelected = mrCancel then
end;



procedure TForm9.BitBtn1Click(Sender: TObject);
begin
    Form9.Hide;
    Form2.Show;
end;



procedure TForm9.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;



procedure TForm9.Button3Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   buttonSelected := MessageDlg('¿Desea modificar?',mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
        ShowMessage('Puede modificar');
        ADOQuery1.Edit;
   end
   else
    if buttonSelected = mrCancel then
end;



procedure TForm9.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
end;



procedure TForm9.BitBtn2Click(Sender: TObject);
begin
  ADOQuery1.Post;
end;



procedure TForm9.Button2Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   buttonSelected := MessageDlg('¿Desea eliminar?',mtWarning, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
      ShowMessage('El elemento se elimino correctamente');
      ADOQuery1.Delete;
   end
   else
    if buttonSelected = mrCancel then
     begin
       ShowMessage('No se eliminaron elementos');
     end;
end;

end.
