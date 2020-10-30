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
    ADOQuery2: TADOQuery;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    ADOQuery1Cdigo_Cliente: TAutoIncField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
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
  AgregarCliente: boolean;
  ClienteAModificar: string;

implementation
uses  Unit1, Unit2, Unit8, Unit4, Unit7;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);

const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   AgregarCliente:=true;
   buttonSelected := MessageDlg(NuevoCliente,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
        Label8.Visible:=true;
        Label9.Visible:=true;
        Label10.Visible:=true;
        Label11.Visible:=true;
        Label12.Visible:=true;
        Label13.Visible:=true;
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
        DBGrid1.Refresh;
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
  AgregarCliente:=false;
  ClienteAModificar:='';

end;



procedure TForm9.Button3Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
begin
   DBGrid1.Enabled:=false;
   AgregarCliente:=false;
   buttonSelected := MessageDlg(QuiereEditar,mtConfirmation, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
        ClienteAModificar:=DBEdit6.Text;
        DBEdit1.Enabled:=true;
        DBEdit2.Enabled:=true;
        DBEdit3.Enabled:=true;
        DBEdit4.Enabled:=true;
        DBEdit5.Enabled:=true;
        ADOQuery1.Edit;
        BitBtn2.Enabled:=true;
        BitBtn3.Enabled:=true;
        DBGrid1.Refresh;
   end
   else
    if buttonSelected = mrCancel then
end;



procedure TForm9.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
  DBEdit1.Enabled:=false;
  DBEdit2.Enabled:=false;
  DBEdit3.Enabled:=false;
  DBEdit4.Enabled:=false;
  DBEdit5.Enabled:=false;
  DBGrid1.Enabled:=true;
  Label8.Visible:=false;
  Label9.Visible:=false;
  Label10.Visible:=false;
  Label11.Visible:=false;
  Label12.Visible:=false;
  Label13.Visible:=false;
end;



procedure TForm9.BitBtn2Click(Sender: TObject);
var
    clienteDNI:string;
    codigoCliente:string;
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

    if (AgregarCliente = true) then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;

      ADOQuery2.SQL.add('SELECT * FROM Clientes WHERE Clientes.DNI='''+DBEdit1.Text+'''');
      ADOQuery2.Open;
      clienteDNI:=ADOQuery2.FieldByname('Código_Cliente').AsString;
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;
      if clienteDNI <> '' then
      begin
        showmessage('No se puede agregar un cliente con mismo DNI.');
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

      query:='SELECT Código_Cliente, DNI FROM Clientes WHERE Clientes.DNI='''+DBEdit1.Text+'''';

      ADOQuery2.SQL.add(query);
      ADOQuery2.Open;
      clienteDNI:=ADOQuery2.FieldByname('DNI').AsString;
      codigoCliente:=ADOQuery2.FieldByname('Código_Cliente').AsString;
      ADOQuery2.SQL.Clear;

      if (clienteDNI <> '') then
      begin
        if codigoCliente = ClienteAModificar then // Modificando al mismo cliente
        begin
          ADOQuery1.Post;
          ShowMessage(Saved);
          DBEdit1.Refresh;
          BitBtn2.Enabled:=false;
          BitBtn3.Enabled:=false;
        end
        else
        begin
          showmessage('No se puede modificar el DNI de otro ya cargado.');
          DBEdit1.Clear;
          DBEdit1.SetFocus;
          DBEdit1.Refresh;
          ADOQuery1.CancelUpdates;
          BitBtn3.Enabled:=true;
        end;
      end
      else
      begin //Modificando al cliente con nuevo dni
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



procedure TForm9.Button2Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
    buttonSelected : Integer;
    cliente:string;
begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.add('SELECT Pedidos.Código_Cliente FROM Pedidos WHERE Pedidos.Código_Cliente = '+DBEdit6.Text);
    ADOQuery2.Open;
    ADOQuery2.ExecSQL;

    cliente:=ADOQuery2.FieldByname('Código_Cliente').AsString;
    
    if cliente <> '' then
    begin
      showmessage('No se puede eliminar un cliente con pedidos asociados.');
    end
    else
    begin
   buttonSelected := MessageDlg(QuiereEliminar,mtWarning, mbOKCancel, 0);
   if buttonSelected = mrOK then
   begin
      ShowMessage(SiElimino);
      ADOQuery1.Delete;
      BitBtn2.Enabled:=true;
      BitBtn3.Enabled:=true;
    end;
      BitBtn2.Enabled:=false;
      BitBtn3.Enabled:=false;
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
