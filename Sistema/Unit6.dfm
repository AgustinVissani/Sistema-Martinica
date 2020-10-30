object Form6: TForm6
  Left = 81
  Top = 14
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 480
    Top = 24
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
  object BitBtn1: TBitBtn
    Left = 160
    Top = 56
    Width = 105
    Height = 49
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object DBGrid1: TDBGrid
    Left = 176
    Top = 344
    Width = 993
    Height = 233
    DataSource = DataSource2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object GroupBox1: TGroupBox
    Left = 464
    Top = 112
    Width = 361
    Height = 177
    Caption = 'Busqueda de pedidos por cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label7: TLabel
      Left = 88
      Top = 88
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
    object Label2: TLabel
      Left = 8
      Top = 40
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 40
      Width = 241
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
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 88
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
      TabOrder = 1
    end
    object Button3: TButton
      Left = 136
      Top = 128
      Width = 83
      Height = 33
      Caption = 'Ver todos'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel1: TPanel
    Left = 1008
    Top = 104
    Width = 145
    Height = 153
    TabOrder = 3
    object Button2: TButton
      Left = 16
      Top = 8
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
    object Button1: TButton
      Left = 16
      Top = 64
      Width = 113
      Height = 65
      Caption = 'Cambiar estado del pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = Button1Click
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Clientes')
    Left = 56
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
        'alle as [Estado], Pedidos.Observaciones'
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
      DisplayWidth = 25
      FieldName = 'Proveedor'
      Size = 30
    end
    object ADOQuery2Cliente: TStringField
      DisplayWidth = 21
      FieldName = 'Cliente'
      Size = 30
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 14
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Detalle: TStringField
      DisplayWidth = 37
      FieldName = 'Detalle'
      Size = 100
    end
    object ADOQuery2Estado: TStringField
      DisplayWidth = 14
      FieldName = 'Estado'
    end
    object ADOQuery2Observaciones: TStringField
      FieldName = 'Observaciones'
      Size = 30
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
    Left = 176
    Top = 120
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
    Left = 216
    Top = 120
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Clientes')
    Left = 304
    Top = 120
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 352
    Top = 120
  end
end
