object Form6: TForm6
  Left = 170
  Top = 106
  Width = 930
  Height = 518
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
    Left = 16
    Top = 24
    Width = 258
    Height = 23
    Caption = 'PEDIDOS A PROVEEDORES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 104
    Width = 111
    Height = 19
    Caption = 'Apellido Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 440
    Top = 104
    Width = 28
    Height = 19
    Caption = 'DNI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button2: TButton
    Left = 648
    Top = 16
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
    Left = 792
    Top = 416
    Width = 97
    Height = 41
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
    Left = 16
    Top = 152
    Width = 873
    Height = 249
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
    Left = 496
    Top = 96
    Width = 145
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
    Left = 184
    Top = 96
    Width = 225
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'C'#243'digo_Cliente'
    ListField = 'Apellido'
    ListSource = DataSource1
    ParentFont = False
    TabOrder = 4
    OnClick = DBLookupComboBox1Click
  end
  object Button1: TButton
    Left = 776
    Top = 16
    Width = 113
    Height = 65
    Caption = 'Cambiar estado del pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Clientes')
    Left = 264
    Top = 416
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
    Left = 376
    Top = 416
    object ADOQuery2Proveedor: TStringField
      DisplayWidth = 23
      FieldName = 'Proveedor'
      Size = 30
    end
    object ADOQuery2Cliente: TStringField
      DisplayWidth = 20
      FieldName = 'Cliente'
      Size = 30
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 16
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Detalle: TStringField
      DisplayWidth = 45
      FieldName = 'Detalle'
      Size = 100
    end
    object ADOQuery2Estado: TStringField
      DisplayWidth = 15
      FieldName = 'Estado'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 312
    Top = 416
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 424
    Top = 416
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
    Left = 16
    Top = 416
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
    Left = 56
    Top = 416
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Clientes')
    Left = 144
    Top = 416
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 192
    Top = 416
  end
end
