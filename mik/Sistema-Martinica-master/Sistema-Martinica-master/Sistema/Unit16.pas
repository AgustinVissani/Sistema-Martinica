unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls,
  Mask, DBCtrls,
  DBGrids;

type
  TForm16 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
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
  //Form16.StringGrid1.Cells[1, 0] := 'Nro. Venta';
  //Form16.StringGrid1.Cells[2, 0] := 'Fecha';
  //Form16.StringGrid1.Cells[3, 0] := 'Total';
  //Form16.StringGrid1.Cells[4, 0] := 'Deuda';
end;

end.
