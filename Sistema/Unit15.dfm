object Form15: TForm15
  Left = -749
  Top = 93
  Width = 556
  Height = 251
  Caption = '10 productos m'#225's vendidos'
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 61
    Height = 13
    Caption = 'Fecha Inicio:'
  end
  object Label2: TLabel
    Left = 240
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Fecha Fin:'
  end
  object Label3: TLabel
    Left = 120
    Top = 40
    Width = 189
    Height = 13
    Caption = 'Los 10 productos m'#225's vendidos fueron:'
  end
  object fechaInicio: TEdit
    Left = 88
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object fechaFin: TEdit
    Left = 304
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 48
    Top = 64
    Width = 345
    Height = 137
    ItemHeight = 13
    TabOrder = 2
  end
  object consultarDiez: TButton
    Left = 440
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 3
  end
end
