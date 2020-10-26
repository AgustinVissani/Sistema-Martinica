unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB, Mask, DBCtrls,
  ExtCtrls;
type THackDBGrid = class(TDBGrid);
type
  TForm9 = class(TForm)
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
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
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
    Panel1: TPanel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  NuevoCliente: string;
  QuiereEliminar: string;
  QuiereEditar: string;
  SiElimino: string;
  NoElimino: string;

implementation
uses  Unit1, Unit2, Unit8, Unit4, Unit7;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
//form9.Hide;
//Form8.Show;
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   buttonSelected := MessageDlg(NuevoCliente,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
        DBEdit1.Enabled:=true;
        DBEdit1.SetFocus;
        DBEdit2.Enabled:=true;
        DBEdit3.Enabled:=true;
        DBEdit4.Enabled:=true;
        DBEdit5.Enabled:=true;
        BitBtn2.Enabled:=true;
        ADOQuery1.Append;
        BitBtn2.Enabled:=true;
        BitBtn3.Enabled:=true;
   end
   else
    if buttonSelected = mrCancel then
    begin
    end;

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

  NuevoCliente:='¿Quiere agregar un cliente?';
  QuiereEliminar:='¿Quiere eliminar un cliente?';
  QuiereEditar:='¿Quiere editar un cliente?';
  SiElimino:= 'Se eliminó correctamente';
  NoElimino:= 'No se eliminó el cliente';

end;



procedure TForm9.Button3Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   buttonSelected := MessageDlg(QuiereEditar,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
        DBEdit1.Enabled:=true;
        DBEdit2.Enabled:=true;
        DBEdit3.Enabled:=true;
        DBEdit4.Enabled:=true;
        DBEdit5.Enabled:=true;
        ADOQuery1.Edit;
        BitBtn2.Enabled:=true;
        BitBtn3.Enabled:=true;
   end
   else
    if buttonSelected = mrCancel then
end;



procedure TForm9.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
end;



procedure TForm9.BitBtn2Click(Sender: TObject);
begin
  if (DBEdit1.Text='') or
    (DBEdit2.Text='') or
    (DBEdit3.Text='') or
    (DBEdit4.Text='') or
    (DBEdit5.Text='') then
  begin
    showmessage(CompletarCampos)
  end
  else
  begin
    ADOQuery1.Post;
    DBEdit1.Enabled:=false;
    DBEdit1.Text:='';
    DBEdit2.Enabled:=false;
    DBEdit2.Text:='';
    DBEdit3.Enabled:=false;
    DBEdit3.Text:='';
    DBEdit4.Enabled:=false;
    DBEdit4.Text:='';
    DBEdit5.Enabled:=false;
    DBEdit5.Text:='';
    BitBtn2.Enabled:=false;
    BitBtn3.Enabled:=false;
    ShowMessage(Saved);
  end;

end;



procedure TForm9.Button2Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   buttonSelected := MessageDlg(QuiereEliminar,mtWarning, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
      ShowMessage(SiElimino);
      ADOQuery1.Delete;
      BitBtn2.Enabled:=true;
      BitBtn3.Enabled:=true;
   end
   else
    if buttonSelected = mrCancel then
     begin
       ShowMessage(NoElimino);
     end;
end;
              
procedure TForm9.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (THackDBGrid(DBGrid1).DataLink.ActiveRecord + 1 = THackDBGrid(DBGrid1).Row)
 or (gdFocused in State) or (gdSelected in State) then
 begin
 DBGrid1.Canvas.Brush.Color := clSkyBlue;
 DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
 DBGrid1.Canvas.Font.Color := clGreen;
 end;
end;


procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Application.Terminate;
end;

procedure TForm9.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['a'..'z', 'A'..'Z'] then
  begin
   messagedlg('Error debe ingresar solo numeros',mterror,[mbretry],0);
   Key := #0;
  end;

end;

procedure TForm9.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key in ['a'..'z', 'A'..'Z'] then
  begin
   messagedlg('Error debe ingresar solo numeros',mterror,[mbretry],0);
   Key := #0;
  end;
end;

end.
