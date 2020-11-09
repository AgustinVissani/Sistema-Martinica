unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls,
  Mask, DBCtrls,
  DBGrids;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    consultarEgresos: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.FormCreate(Sender: TObject);
begin
  //StringGrid1.Cells[1, 0] := 'Fecha';
  //StringGrid1.Cells[2, 0] := 'Descripción';
  //StringGrid1.Cells[3, 0] := 'Monto';
end;

end.
