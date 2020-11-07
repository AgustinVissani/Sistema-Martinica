unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm16 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

procedure TForm16.FormCreate(Sender: TObject);
begin
//se muestra la lista de todas las ventas
//por cliente, al hacer clic en cargar venta
//se carga el detalle en la ventana principal
  Form16.StringGrid1.Cells[1, 0] := 'Nro. Venta';
  Form16.StringGrid1.Cells[2, 0] := 'Fecha';
  Form16.StringGrid1.Cells[3, 0] := 'Total';
  Form16.StringGrid1.Cells[4, 0] := 'Deuda';
end;

end.
