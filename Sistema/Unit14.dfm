object Form14: TForm14
  Left = 358
  Top = 284
  Width = 537
  Height = 219
  Caption = 'Consulta de egresos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 61
    Height = 13
    Caption = 'Fecha Inicio:'
  end
  object Label2: TLabel
    Left = 232
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Fecha Fin:'
  end
  object fechaInicio: TEdit
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object fechaFin: TEdit
    Left = 296
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object consultarEgresos: TButton
    Left = 432
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
  end
  object StringGrid1: TStringGrid
    Left = 96
    Top = 48
    Width = 320
    Height = 120
    FixedCols = 0
    TabOrder = 3
  end
end
