unit Unit10;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Unit2,Unit3,Unit4,Unit5,Unit6,Unit7,Unit8,Unit9;

var
  idiomaActual: integer;

implementation

procedure CambiarIdioma(idioma:integer);
begin
  idiomaActual:=idioma;
  showmessage(inttostr(idiomaActual));
end;

end.
 