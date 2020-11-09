object Form3: TForm3
  Left = 228
  Top = 130
  Width = 497
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 465
    Height = 241
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 160
    Top = 16
    Width = 169
    Height = 57
    Caption = 'Cerrar Caja Diaria'
    TabOrder = 1
    WordWrap = True
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM cajaDiaria')
    Left = 8
    Top = 8
    object ADOQuery1id_cd: TAutoIncField
      FieldName = 'id_cd'
      ReadOnly = True
    end
    object ADOQuery1fecha: TStringField
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
