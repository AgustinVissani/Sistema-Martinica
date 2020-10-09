unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB, Mask, DBCtrls;
type THackDBGrid = class(TDBGrid);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
   buttonSelected := MessageDlg(NuevoCliente,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
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

procedure TForm9.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 gc: TGridCoord;
begin
 gc:= DBGrid1.MouseCoord(x, y);
 if (gc.X > 0) AND (gc.Y > 0) then
 begin
 DBGrid1.DataSource.DataSet.MoveBy (gc.Y - THackDBGrid(DBGrid1).Row);
 end;
end;

end.
