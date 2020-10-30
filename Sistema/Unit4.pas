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
    Button3: TButton;
    Button1: TButton;
    Button4: TButton;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery1Cdigo_Proveedor: TAutoIncField;
    DBEdit6: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  NoEliminarProveedor: string;
  ProveedorAModificar: string;
  AgregarProveedor:boolean;

implementation

uses Unit2,Unit1, Unit5, Unit6, Unit7;

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
        Label8.Visible:=true;
        Label9.Visible:=true;
        Label10.Visible:=true;
        Label11.Visible:=true;
        Label12.Visible:=true;
        Label13.Visible:=true;
        DBEdit1.Enabled:=true;
        DBEdit2.Enabled:=true;
        DBEdit3.Enabled:=true;
        DBEdit4.Enabled:=true;
        DBEdit5.Enabled:=true;
        ADOQuery1.Append;
        BitBtn2.Enabled:=true;
        BitBtn3.Enabled:=true;
        AgregarProveedor:=true;
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
        ProveedorAModificar:=DBEdit6.Text;
        DBEdit1.Enabled:=true;
        DBEdit2.Enabled:=true;
        DBEdit3.Enabled:=true;
        DBEdit4.Enabled:=true;
        DBEdit5.Enabled:=true;
        ADOQuery1.Edit;
        BitBtn2.Enabled:=true;
        BitBtn3.Enabled:=true;
        DBGrid1.Refresh;
        AgregarProveedor:=false;
   end
   else
    if buttonSelected = mrCancel then
end;



procedure TForm4.Button4Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    proveedorCuit:string;
    codigoProveedor:string;
    query:string;
begin
  DBGrid1.Enabled:=true;
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

    if (AgregarProveedor = true) then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;

      ADOQuery2.SQL.add('SELECT * FROM Proveedores WHERE Proveedores.CUIT='''+DBEdit5.Text+'''');
      ADOQuery2.Open;
      proveedorCuit:=ADOQuery2.FieldByname('C�digo_Proveedor').AsString;
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;
      if proveedorCuit <> '' then
      begin
        showmessage('No se puede agregar un proveedor con mismo CUIT.');
        ADOQuery1.CancelUpdates;
        DBEdit1.Clear;
        DBEdit1.SetFocus;
      end
      else
      begin
        ADOQuery1.Post;
        ShowMessage(Saved);
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
        Label8.Visible:=false;
        Label9.Visible:=false;
        Label10.Visible:=false;
        Label11.Visible:=false;
        Label12.Visible:=false;
        Label13.Visible:=false;
      end;
    end
    else  // MODIFICANDO 
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;

      query:='SELECT C�digo_Proveedor, DNI FROM Proveedores WHERE Proveedores.CUIT='''+DBEdit5.Text+'''';

      ADOQuery2.SQL.add(query);
      ADOQuery2.Open;
      proveedorCuit:=ADOQuery2.FieldByname('CUIT').AsString;
      codigoProveedor:=ADOQuery2.FieldByname('C�digo_Proveedor').AsString;
      ADOQuery2.SQL.Clear;

      if (proveedorCuit <> '') then
      begin
        if codigoProveedor = ProveedorAModificar then // Modificando al mismo proveedor
        begin
          ADOQuery1.Post;
          ShowMessage(Saved);
          DBEdit1.Refresh;
          BitBtn2.Enabled:=false;
          BitBtn3.Enabled:=false;
        end
        else
        begin
          showmessage('No se puede modificar el CUIT de otro ya cargado.');
          DBEdit1.Clear;
          DBEdit1.SetFocus;
          DBEdit1.Refresh;
          ADOQuery1.CancelUpdates;
          BitBtn3.Enabled:=true;;
        end;
      end
      else
      begin //Modificando al proveedor con nuevo cuit
        ADOQuery1.Post;
        ShowMessage(Saved);
        DBEdit1.Refresh;
        DBEdit1.Enabled:=false;
        DBEdit2.Enabled:=false;
        DBEdit3.Enabled:=false;
        DBEdit4.Enabled:=false;
        DBEdit5.Enabled:=false;
        BitBtn2.Enabled:=false;
        BitBtn3.Enabled:=false;
        end;
    end;


 end;
end;






procedure TForm4.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
  DBEdit1.Enabled:=false;
  DBEdit2.Enabled:=false;
  DBEdit3.Enabled:=false;
  DBEdit4.Enabled:=false;
  DBEdit5.Enabled:=false;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
  Label8.Visible:=false;
  Label9.Visible:=false;
  Label10.Visible:=false;
  Label11.Visible:=false;
  Label12.Visible:=false;
  Label13.Visible:=false;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
var
    proveedorCuit:string;
    codigoProveedor:string;
    query:string;
begin
  DBGrid1.Enabled:=true;
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

    if (AgregarProveedor = true) then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;

      ADOQuery2.SQL.add('SELECT * FROM Proveedores WHERE Proveedores.CUIT='''+DBEdit5.Text+'''');
      ADOQuery2.Open;
      proveedorCuit:=ADOQuery2.FieldByname('C�digo_Proveedor').AsString;
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;
      if proveedorCuit <> '' then
      begin
        showmessage('No se puede agregar un proveedor con mismo CUIT.');
        DBEdit5.SetFocus;

      end
      else
      begin
        ADOQuery1.Post;
        ShowMessage(Saved);
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
        Label8.Visible:=false;
        Label9.Visible:=false;
        Label10.Visible:=false;
        Label11.Visible:=false;
        Label12.Visible:=false;
        Label13.Visible:=false;
      end;
    end
    else  // MODIFICANDO 
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;

      query:='SELECT C�digo_Proveedor, CUIT FROM Proveedores WHERE Proveedores.CUIT='''+DBEdit5.Text+'''';

      ADOQuery2.SQL.add(query);
      ADOQuery2.Open;
      proveedorCuit:=ADOQuery2.FieldByname('CUIT').AsString;
      codigoProveedor:=ADOQuery2.FieldByname('C�digo_Proveedor').AsString;
      ADOQuery2.SQL.Clear;

      if (proveedorCuit <> '') then
      begin
        if codigoProveedor = ProveedorAModificar then // Modificando al mismo proveedor
        begin
          ADOQuery1.Post;
          ShowMessage(Saved);
          DBEdit1.Refresh;
          BitBtn2.Enabled:=false;
          BitBtn3.Enabled:=false;
        end
        else
        begin
          showmessage('No se puede modificar el CUIT de otro ya cargado.');
          DBEdit5.Clear;
          DBEdit5.SetFocus;
          DBEdit5.Refresh;
          ADOQuery1.CancelUpdates;
          BitBtn3.Enabled:=true;
        end;
      end
      else
      begin //Modificando al proveedor con nuevo CUIT
        ADOQuery1.Post;
        ShowMessage(Saved);
        DBEdit1.Refresh;
        DBEdit1.Enabled:=false;
        DBEdit2.Enabled:=false;
        DBEdit3.Enabled:=false;
        DBEdit4.Enabled:=false;
        DBEdit5.Enabled:=false;
        BitBtn2.Enabled:=false;
        BitBtn3.Enabled:=false;
        end;
    end;
 end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

  NuevoProveedor:='�Quiere agregar un proveedor?';
  QuiereEliminar:='�Quiere eliminar un proveedor?';
  QuiereEditar:='�Quiere editar un proveedor?';
  SiElimino:= 'Se elimin� correctamente';
  NoElimino:= 'No se elimin� el proveedor';
  CompletarCampos:= 'Complete todos los campos';
  NoEliminarProveedor:='No se puede eliminar un proveedor con pedidos asociados.';
  ProveedorAModificar:='';
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
  end;
end;



procedure TForm4.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin

if Key in ['a'..'z', 'A'..'Z'] then
  begin
   messagedlg('Error debe ingresar solo numeros',mterror,[mbretry],0);
   Key := #0;
  end;
end;


end.
