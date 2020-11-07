object Form16: TForm16
  Left = 605
  Top = 384
  Width = 553
  Height = 347
  Caption = 'Ventas anteriores'
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
    Width = 18
    Height = 13
    Caption = 'DNI'
  end
  object Label2: TLabel
    Left = 144
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label3: TLabel
    Left = 280
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Apellido'
  end
  object Label4: TLabel
    Left = 144
    Top = 72
    Width = 121
    Height = 13
    Caption = 'Lista de ventas sin saldar'
  end
  object Edit1: TEdit
    Left = 8
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 144
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 280
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 104
    Width = 345
    Height = 120
    DefaultColWidth = 32
    RowCount = 2
    TabOrder = 3
    ColWidths = (
      32
      65
      65
      65
      72)
  end
  object Button1: TButton
    Left = 368
    Top = 104
    Width = 75
    Height = 49
    Caption = 'Cargar Venta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
  end
end
