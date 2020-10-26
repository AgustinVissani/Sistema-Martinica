unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls,
  Mask;
type THackDBGrid = class(TDBGrid);
type
  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ADOQuery1Nombre: TStringField;
    ADOQuery1Apellido: TStringField;
    ADOQuery1Telfono: TStringField;
    ADOQuery1Domicilio: TStringField;
    ADOQuery1CUIT: TStringField;
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
    BitBtn4: TBitBtn;
    Button3: TButton;
    Button1: TButton;
    Button4: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  NuevoProveedor: string;
  QuiereEliminar: string;
  QuiereEditar: string;
  SiElimino: string;
  NoElimino: string;
  CompletarCampos: string;

implementation

uses Unit2,Unit1, Unit5, Unit6;

{$R *.dfm}



procedure TForm4.Button2Click(Sender: TObject);

//form4.Hide;
//Form5.Show;
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   buttonSelected := MessageDlg(NuevoProveedor,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
        DBEdit1.Enabled:=true;
        DBEdit2.Enabled:=true;
        DBEdit3.Enabled:=true;
        DBEdit4.Enabled:=true;
        DBEdit5.Enabled:=true;
        ADOQuery1.Append;
   end
   else
    if buttonSelected = mrCancel then
end;


procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Form4.Hide;
Form2.Show;
end;



procedure TForm4.Button3Click(Sender: TObject);
begin
form4.Hide;
Form6.Show;
end;



procedure TForm4.Button1Click(Sender: TObject);
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
   end
   else
    if buttonSelected = mrCancel then
end;



procedure TForm4.Button4Click(Sender: TObject);
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
   end
   else
    if buttonSelected = mrCancel then
     begin
       ShowMessage(NoElimino);
     end;
end;






procedure TForm4.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
      {
      //Validaciones
      if DBEdit1.Text='' or
        DBEdit2.Text='' or
        DBEdit3.Text='' or
        DBEdit4.Text='' or
        DBEdit5.Text=''
      then
        showmessage(CompletarCampos)
      else
      begin

      end;  //else
      }

      ADOQuery1.Post;
      DBEdit1.Enabled:=false;
      DBEdit2.Enabled:=false;
      DBEdit3.Enabled:=false;
      DBEdit4.Enabled:=false;
      DBEdit5.Enabled:=false;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

  NuevoProveedor:='¿Quiere agregar un proveedor?';
  QuiereEliminar:='¿Quiere eliminar un proveedor?';
  QuiereEditar:='¿Quiere editar un proveedor?';
  SiElimino:= 'Se eliminó correctamente';
  NoElimino:= 'No se eliminó el proveedor';
  CompletarCampos:= 'Complete todos los campos';

end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
      ADOQuery1.Prior;
end;



procedure TForm4.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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



procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Application.Terminate;
end;



procedure TForm4.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['a'..'z', 'A'..'Z'] then
  begin
   messagedlg('Error debe ingresar solo numeros',mterror,[mbretry],0);
   Key := #0;
   DBEdit3.clear;
  end;
end;



procedure TForm4.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin

if Key in ['a'..'z', 'A'..'Z'] then
  begin
   messagedlg('Error debe ingresar solo numeros',mterror,[mbretry],0);
   Key := #0;
   DBEdit5.clear;
  end;
end;


end.
