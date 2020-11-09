unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm18 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

procedure TForm18.Button1Click(Sender: TObject);
const
  mbYesNoCancel = [mbYes, mbNO, mbCancel];
var
  registrosDeHoy, buttonSelected : Integer;
  acumuladoEfectivo, ingresosEfectivo, ingresosTarjeta, egresosEfectivo: real;
begin
  buttonSelected := MessageDlg('¿Desea cerrar la caja diaria?', mtConfirmation, mbOKCancel, 0);
  if buttonSelected = mrOK then
    begin
      Form18.ADOQuery1.Close;
      Form18.ADOQuery1.SQL.Clear;
      Form18.ADOQuery1.SQL.Add('SELECT TOP 1 acumulado FROM cajaDiaria WHERE fecha <> ' + QuotedStr(DateToStr(Now)) + ' ORDER BY id_cd DESC');
      Form18.ADOQuery1.Open;
      acumuladoEfectivo := strtofloat(ADOQuery1.FieldByname('acumulado').AsString);

      Form18.ADOQuery1.Close;
      Form18.ADOQuery1.SQL.Clear;
      Form18.ADOQuery1.SQL.Add('SELECT SUM(monto) AS ingresosEfectivo FROM det_pag WHERE tipo_form_pag = 0 and fecha = ' + QuotedStr(DateToStr(Now)));
      Form18.ADOQuery1.Open;
      ingresosEfectivo := strtofloat(ADOQuery1.FieldByname('ingresosEfectivo').AsString);

      Form18.ADOQuery1.Close;
      Form18.ADOQuery1.SQL.Clear;
      Form18.ADOQuery1.SQL.Add('SELECT SUM(monto) AS ingresosTarjeta FROM det_pag WHERE tipo_form_pag = 1 and fecha = ' + QuotedStr(DateToStr(Now)));
      Form18.ADOQuery1.Open;
      ingresosTarjeta := strtofloat(ADOQuery1.FieldByname('ingresosTarjeta').AsString);

      Form18.ADOQuery1.Close;
      Form18.ADOQuery1.SQL.Clear;
      Form18.ADOQuery1.SQL.Add('SELECT SUM(monto) AS egresosEfectivo FROM egresos WHERE fecha = ' + QuotedStr(DateToStr(Now)));
      Form18.ADOQuery1.Open;
      egresosEfectivo := strtofloat(ADOQuery1.FieldByname('egresosEfectivo').AsString);

//	caja_diaria
	//	id_cd fecha efectivo tarjeta acumulado*/
// si en caja hay la fecha de hoy, recupero el id y updateo los valores, sino, inserto

      Form18.ADOQuery1.Close;
      Form18.ADOQuery1.SQL.Clear;
      Form18.ADOQuery1.SQL.Add('SELECT COUNT(fecha) AS registrosDeHoy FROM cajaDiaria	WHERE fecha = ' + QuotedStr(DateToStr(Now)));
      Form18.ADOQuery1.Open;
      registrosDeHoy := strtoint(ADOQuery1.FieldByname('registrosDeHoy').AsString);

      Form18.ADOQuery1.SQL.Clear;
      if (registrosDeHoy > 0) then
        begin
          Form18.ADOQuery1.SQL.Clear;
          Form18.ADOQuery1.SQL.Add('update cajaDiaria set ');
          Form18.ADOQuery1.SQL.Add('efectivo = ' + floattostr(ingresosEfectivo - egresosEfectivo) + ', ');
          Form18.ADOQuery1.SQL.Add('tarjeta = ' + floattostr(ingresosTarjeta) + ', ');
          Form18.ADOQuery1.SQL.Add('acumulado = ' + floattostr(acumuladoEfectivo + ingresosEfectivo - egresosEfectivo) + ' ');
          Form18.ADOQuery1.SQL.Add('where fecha = ' + QuotedStr(DateToStr(Now)));
          Form18.ADOQuery1.ExecSQL;
        end
      else
        begin
          Form18.ADOQuery1.SQL.Clear;
          Form18.ADOQuery1.SQL.Add('insert into cajaDiaria (fecha, efectivo, tarjeta, acumulado) values (');
          Form18.ADOQuery1.SQL.Add(QuotedStr(DateToStr(Now)) + ',');
          Form18.ADOQuery1.SQL.Add(floattostr(ingresosEfectivo - egresosEfectivo) + ',');
          Form18.ADOQuery1.SQL.Add(floattostr(ingresosTarjeta) + ',');
          Form18.ADOQuery1.SQL.Add(floattostr(acumuladoEfectivo + ingresosEfectivo - egresosEfectivo) + ')');
          Form18.ADOQuery1.ExecSQL;
        end;
      Edit1.Text := DateToStr(Now);
      Edit2.Text := floattostr(ingresosEfectivo - egresosEfectivo);
      Edit3.Text := floattostr(ingresosTarjeta);
      Edit4.Text := floattostr(acumuladoEfectivo + ingresosEfectivo - egresosEfectivo);


    end

end;

procedure TForm18.FormCreate(Sender: TObject);
begin
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;

end.
