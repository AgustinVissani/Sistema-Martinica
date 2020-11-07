unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    fechaInicio: TEdit;
    Label2: TLabel;
    fechaFin: TEdit;
    consultarCaja: TButton;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.FormCreate(Sender: TObject);
begin
  Form13.StringGrid1.Cells[1, 0] := 'Fecha';
  Form13.StringGrid1.Cells[2, 0] := 'Tarjeta';
  Form13.StringGrid1.Cells[3, 0] := 'Efectivo';
  Form13.StringGrid1.Cells[4, 0] := 'Acumulado';
end;

end.
 