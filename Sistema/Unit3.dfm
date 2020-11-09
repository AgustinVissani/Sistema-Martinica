object Form3: TForm3
  Left = 547
  Top = 145
  Width = 499
  Height = 378
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Caja Diaria'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object Button1: TButton
    Left = 120
    Top = 16
    Width = 233
    Height = 57
    Caption = 'Cerrar Caja Diaria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 465
    Height = 241
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from caja_diaria order by id_cd desc')
    Left = 8
    Top = 8
    object ADOQuery1fecha: TWideStringField
      FieldName = 'fecha'
      Size = 10
    end
    object ADOQuery1efectivo: TFloatField
      FieldName = 'efectivo'
    end
    object ADOQuery1tarjeta: TFloatField
      FieldName = 'tarjeta'
    end
    object ADOQuery1acumulado: TFloatField
      FieldName = 'acumulado'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 8
    Top = 48
  end
end
