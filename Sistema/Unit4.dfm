object Form4: TForm4
  Left = 368
  Top = 196
  Width = 1279
  Height = 671
  Caption = 'Proveedores'
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
    Left = 568
    Top = 152
    Width = 143
    Height = 25
    Caption = 'PROVEEDORES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 592
    Top = 48
    Width = 89
    Height = 33
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button2: TButton
    Left = 752
    Top = 40
    Width = 89
    Height = 49
    Caption = 'Nuevo Proveedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 272
    Top = 48
    Width = 89
    Height = 33
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object Button3: TButton
    Left = 888
    Top = 40
    Width = 89
    Height = 49
    Caption = 'Nuevo Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 224
    Top = 280
    Width = 841
    Height = 137
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Proveedores')
    Left = 88
    Top = 112
    object ADOQuery1Codigo_Proveedor: TIntegerField
      FieldName = 'Codigo_Proveedor'
    end
    object ADOQuery1Nombre: TWideStringField
      FieldName = 'Nombre'
      FixedChar = True
      Size = 25
    end
    object ADOQuery1Apellido: TWideStringField
      FieldName = 'Apellido'
      FixedChar = True
      Size = 25
    end
    object ADOQuery1Telfono: TWideStringField
      FieldName = 'Tel'#233'fono'
      FixedChar = True
    end
    object ADOQuery1Domicilio: TWideStringField
      FieldName = 'Domicilio'
      FixedChar = True
      Size = 25
    end
    object ADOQuery1CUIT: TWideStringField
      FieldName = 'CUIT'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 144
    Top = 112
  end
end
