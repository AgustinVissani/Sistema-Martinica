object Form6: TForm6
  Left = 59
  Top = 15
  Width = 1244
  Height = 729
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
    Left = 384
    Top = 144
    Width = 145
    Height = 25
    Caption = 'Apellido Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 568
    Top = 248
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
    Left = 88
    Top = 248
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
    Left = 1080
    Top = 240
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
  object Label7: TLabel
    Left = 520
    Top = 184
    Width = 36
    Height = 25
    Caption = 'DNI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 768
    Top = 248
    Width = 64
    Height = 25
    Caption = 'Detalle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 304
    Top = 248
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
  object Button2: TButton
    Left = 1032
    Top = 96
    Width = 105
    Height = 41
    Caption = 'Nuevo pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 96
    Width = 105
    Height = 49
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 288
    Width = 1113
    Height = 369
    DataSource = DataSource2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object DBEdit1: TDBEdit
    Left = 576
    Top = 184
    Width = 121
    Height = 27
    DataField = 'DNI'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 560
    Top = 136
    Width = 241
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'DNI'
    ListField = 'Apellido'
    ListSource = DataSource1
    ParentFont = False
    TabOrder = 4
    OnClick = DBLookupComboBox1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Clientes')
    Left = 48
    Top = 88
    object ADOQuery1Apellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object ADOQuery1DNI: TIntegerField
      FieldName = 'DNI'
    end
    object ADOQuery1Cdigo_Cliente: TAutoIncField
      FieldName = 'C'#243'digo_Cliente'
      ReadOnly = True
    end
    object ADOQuery1Nombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object ADOQuery1Telfono: TStringField
      FieldName = 'Tel'#233'fono'
    end
    object ADOQuery1Domicilio: TStringField
      FieldName = 'Domicilio'
      Size = 30
    end
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT Proveedores.Apellido as [Proveedor], Clientes.Ap' +
        'ellido as [Cliente], Pedidos.Fecha, Pedidos.Detalle, Estados.Det' +
        'alle as [Estado]'
      'FROM  Pedidos '
      
        'LEFT JOIN Proveedores ON Proveedores.C'#243'digo_Proveedor = Pedidos.' +
        'C'#243'digo_Proveedor'
      
        'LEFT JOIN Estados ON Estados.C'#243'digo_Estado = Pedidos.C'#243'digo_Esta' +
        'do'
      
        'LEFT JOIN Clientes ON Clientes.C'#243'digo_Cliente = Pedidos.C'#243'digo_C' +
        'liente')
    Left = 56
    Top = 200
    object ADOQuery2Proveedor: TStringField
      DisplayWidth = 35
      FieldName = 'Proveedor'
      Size = 30
    end
    object ADOQuery2Cliente: TStringField
      DisplayWidth = 35
      FieldName = 'Cliente'
      Size = 30
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 27
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Detalle: TStringField
      DisplayWidth = 45
      FieldName = 'Detalle'
      Size = 100
    end
    object ADOQuery2Estado: TStringField
      DisplayWidth = 33
      FieldName = 'Estado'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 104
    Top = 200
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT Proveedores.Apellido as [Proveedor], Clientes.Ap' +
        'ellido as [Cliente], Pedidos.Fecha, Pedidos.Detalle, Estados.Det' +
        'alle as [Estado]'
      'FROM  Pedidos '
      
        'LEFT JOIN Proveedores ON Proveedores.C'#243'digo_Proveedor = Pedidos.' +
        'C'#243'digo_Proveedor'
      
        'LEFT JOIN Estados ON Estados.C'#243'digo_Estado = Pedidos.C'#243'digo_Esta' +
        'do'
      
        'LEFT JOIN Clientes ON Clientes.C'#243'digo_Cliente = Pedidos.C'#243'digo_C' +
        'liente')
    Left = 248
    Top = 200
    object ADOQuery3Proveedor: TStringField
      FieldName = 'Proveedor'
      Size = 30
    end
    object ADOQuery3Cliente: TStringField
      FieldName = 'Cliente'
      Size = 30
    end
    object ADOQuery3Fecha: TWideStringField
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery3Detalle: TStringField
      FieldName = 'Detalle'
      Size = 100
    end
    object ADOQuery3Estado: TStringField
      FieldName = 'Estado'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 288
    Top = 200
  end
  object ADOQuery4: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Clientes')
    Left = 376
    Top = 200
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 424
    Top = 200
  end
end
