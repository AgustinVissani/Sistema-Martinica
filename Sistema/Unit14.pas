unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    fechaInicio: TEdit;
    fechaFin: TEdit;
    consultarEgresos: TButton;
    StringGrid1: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

end.
