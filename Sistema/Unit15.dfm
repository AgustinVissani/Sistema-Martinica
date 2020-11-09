object Form15: TForm15
  Left = 143
  Top = 305
  Width = 444
  Height = 317
  Caption = '10 productos m'#225's vendidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 409
    Height = 217
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    TOP 10 descripcion AS '#39'Descripci'#243'n'#39','
      '  SUM(cantidad) AS Cantidad'
      'FROM'
      '    det_prod_ven '
      'GROUP BY'
      '    descripcion '
      'ORDER BY'
      '    Cantidad DESC')
    Left = 8
    Top = 8
    object ADOQuery1Descripcin: TStringField
      FieldName = 'Descripci'#243'n'
      Size = 50
    end
    object ADOQuery1Cantidad: TFloatField
      FieldName = 'Cantidad'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 8
  end
end
