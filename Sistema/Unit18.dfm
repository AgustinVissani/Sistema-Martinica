object Form18: TForm18
  Left = 439
  Top = 315
  Width = 563
  Height = 209
  Caption = 'Form18'
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
    Top = 48
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object Label2: TLabel
    Left = 144
    Top = 48
    Width = 39
    Height = 13
    Caption = 'Efectivo'
  end
  object Label3: TLabel
    Left = 280
    Top = 48
    Width = 35
    Height = 13
    Caption = 'Tarjeta'
  end
  object Label4: TLabel
    Left = 416
    Top = 48
    Width = 52
    Height = 13
    Caption = 'Acumulado'
  end
  object Button1: TButton
    Left = 224
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Cerrar Caja Diaria'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 144
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 280
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 416
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cajaDiaria')
    Left = 16
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 56
    Top = 8
  end
end
