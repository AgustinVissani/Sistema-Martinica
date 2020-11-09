object Form3: TForm3
  Left = 251
  Top = 171
  Width = 894
  Height = 470
  Caption = 'Form3'
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
    Left = 40
    Top = 78
    Width = 705
    Height = 161
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 760
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 760
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 760
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 3
    OnClick = Button4Click
  end
  object BitBtn1: TBitBtn
    Left = 760
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 760
    Top = 238
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 264
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from productos')
    Left = 640
    Top = 320
    object ADOQuery1id_prod: TAutoIncField
      FieldName = 'id_prod'
      ReadOnly = True
    end
    object ADOQuery1descripcion: TStringField
      FieldName = 'descripcion'
      Size = 50
    end
    object ADOQuery1precio_unitario: TFloatField
      FieldName = 'precio_unitario'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 416
    Top = 344
  end
end
