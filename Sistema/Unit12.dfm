object Form12: TForm12
  Left = 424
  Top = 272
  Width = 345
  Height = 207
  Caption = 'Carga de egresos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object agregarEgreso: TLabel
    Left = 288
    Top = 8
    Width = 30
    Height = 25
    AutoSize = False
    Caption = ' +'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = agregarEgresoClick
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 265
    Height = 120
    ColCount = 3
    DefaultColWidth = 32
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    ColWidths = (
      32
      136
      68)
  end
  object Button1: TButton
    Left = 128
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Ingresar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
