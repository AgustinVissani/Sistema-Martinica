unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm12 = class(TForm)
    agregarEgreso: TLabel;
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure agregarEgresoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Form12.StringGrid1.RowCount := Form12.StringGrid1.RowCount + 1;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  // [Columna, Fila]
  StringGrid1.Cells[1, 0] := 'Descripción';
  StringGrid1.Cells[2, 0] := 'Monto';
end;

procedure TForm12.Button1Click(Sender: TObject);
begin

  // FALTA BORRAR TODO EL STRINGGRID
  Form12.Close;

end;

end.
