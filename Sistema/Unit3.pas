unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons,
  Mask, DBCtrls,
  DB, ADODB, Grids, DBGrids;


type
  TForm3 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ADOQuery1id_cd: TAutoIncField;
    ADOQuery1fecha: TStringField;
    ADOQuery1efectivo: TFloatField;
    ADOQuery1tarjeta: TFloatField;
    ADOQuery1acumulado: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses  Unit2,Unit1;


{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;



procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  form3.Hide;
  form2.Show;
end;

procedure TForm3.Button1Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
  buttonSelected : Integer;
  acumuladoEfectivo, ingresosEfectivo, ingresosTarjeta, egresosEfectivo: real;
begin
  buttonSelected := MessageDlg('¿Desea cerrar la caja diaria?', mtConfirmation, mbOKCancel, 0);
  if buttonSelected = mrOK then
    begin
//      Form3.ADOQuery1.Close;
//      Form3.ADOQuery1.SQL.Clear;
  //    Form3.ADOQuery1.SQL.Add('SELECT TOP 1 acumulado FROM cajaDiaria');
    //  Form3.ADOQuery1.Open;
      //acumuladoEfectivo := strtofloat(ADOQuery1.FieldByname('acumulado').AsString);

      Form3.ADOQuery1.Close;
      Form3.ADOQuery1.SQL.Clear;
      Form3.ADOQuery1.SQL.Add('SELECT SUM(monto) AS ingresosEfectivo FROM det_pag WHERE tipo_form_pag = 0 and fecha = ' + QuotedStr(DateToStr(Now)));
      Form3.ADOQuery1.Open;
      ingresosEfectivo := strtofloat(ADOQuery1.FieldByname('ingresosEfectivo').AsString);

      Form3.ADOQuery1.Close;
      Form3.ADOQuery1.SQL.Clear;
      Form3.ADOQuery1.SQL.Add('SELECT SUM(monto) AS ingresosTarjeta FROM det_pag WHERE tipo_form_pag = 1 and fecha = ' + QuotedStr(DateToStr(Now)));
      Form3.ADOQuery1.Open;
      ingresosTarjeta := strtofloat(ADOQuery1.FieldByname('ingresosTarjeta').AsString);

      Form3.ADOQuery1.Close;
      Form3.ADOQuery1.SQL.Clear;
      Form3.ADOQuery1.SQL.Add('SELECT SUM(monto) AS egresosEfectivo FROM egresos WHERE fecha = ' + QuotedStr(DateToStr(Now)));
      Form3.ADOQuery1.Open;
      egresosEfectivo := strtofloat(ADOQuery1.FieldByname('egresosEfectivo').AsString);

//	caja_diaria
	//	id_cd fecha efectivo tarjeta acumulado*/

      Form3.ADOQuery1.SQL.Clear;
      Form3.ADOQuery1.SQL.Add('insert into cajaDiaria (fecha, efectivo, tarjeta, acumulado) values (');
      Form3.ADOQuery1.SQL.Add(QuotedStr(DateToStr(Now)) + ',');
      Form3.ADOQuery1.SQL.Add(floattostr(ingresosEfectivo - egresosEfectivo) + ',');
      Form3.ADOQuery1.SQL.Add(floattostr(ingresosTarjeta) + ',');
      Form3.ADOQuery1.SQL.Add(floattostr(acumuladoEfectivo) + ')');
      Form3.ADOQuery1.ExecSQL;

    end

end;

end.
