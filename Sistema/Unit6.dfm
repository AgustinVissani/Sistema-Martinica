object Form6: TForm6
  Left = 61
  Top = 11
  Width = 1244
  Height = 720
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pedidos a Proveedores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 520
    Top = 56
    Width = 323
    Height = 33
    Caption = 'PEDIDOS A PROVEEDORES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 376
    Top = 192
    Width = 133
    Height = 25
    Caption = 'Buscar pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 544
    Top = 264
    Width = 64
    Height = 25
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 696
    Top = 264
    Width = 55
    Height = 25
    Caption = 'Fecha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 352
    Top = 264
    Width = 94
    Height = 25
    Caption = 'Proveedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 856
    Top = 264
    Width = 62
    Height = 25
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 864
    Top = 176
    Width = 97
    Height = 57
    Caption = 'BUSCAR CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
  end
  object Button2: TButton
    Left = 1024
    Top = 112
    Width = 105
    Height = 41
    Caption = 'Nuevo pedido'
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
    Left = 224
    Top = 104
    Width = 105
    Height = 49
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
  object DBComboBox1: TDBComboBox
    Left = 560
    Top = 184
    Width = 225
    Height = 33
    DataField = 'Apellido'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 25
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 176
    Top = 304
    Width = 969
    Height = 369
    DataSource = DataSource2
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
      'SELECT Apellido'
      'FROM Clientes')
    Left = 48
    Top = 88
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource2
    Parameters = <>
    SQL.Strings = (
      
        'SELECT C'#243'digo_Proveedor, Fecha, C'#243'digo_Estado, Detalle, Observac' +
        'iones '
      'FROM Pedidos')
    Left = 56
    Top = 192
    object ADOQuery2Cdigo_Pedidos: TAutoIncField
      DisplayWidth = 24
      FieldName = 'C'#243'digo_Pedidos'
      ReadOnly = True
    end
    object ADOQuery2Cdigo_Proveedor: TIntegerField
      DisplayWidth = 28
      FieldName = 'C'#243'digo_Proveedor'
    end
    object ADOQuery2Cdigo_Cliente: TIntegerField
      DisplayWidth = 37
      FieldName = 'C'#243'digo_Cliente'
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 22
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Cdigo_Pedidos_Clientes: TAutoIncField
      DisplayWidth = 29
      FieldName = 'C'#243'digo_Pedidos_Clientes'
      ReadOnly = True
    end
    object ADOQuery2Cdigo_Proveedor_1: TIntegerField
      DisplayWidth = 24
      FieldName = 'C'#243'digo_Proveedor_1'
    end
    object ADOQuery2Cdigo_Estado: TIntegerField
      DisplayWidth = 42
      FieldName = 'C'#243'digo_Estado'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = Form7.ADOQuery2
    Left = 104
    Top = 192
  end
end
