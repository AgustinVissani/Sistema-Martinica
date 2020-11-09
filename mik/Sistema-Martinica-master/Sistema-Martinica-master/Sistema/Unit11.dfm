object Form10: TForm10
  Left = 214
  Top = 115
  Width = 1084
  Height = 630
  Caption = 'ESTADOS'
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
    Left = 16
    Top = 16
    Width = 273
    Height = 33
    Caption = 'ESTADOS DE PEDIDOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 352
    Top = 80
    Width = 47
    Height = 19
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 72
    Height = 19
    Caption = 'Proveedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 280
    Top = 128
    Width = 48
    Height = 19
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 552
    Top = 128
    Width = 40
    Height = 19
    Caption = 'Fecha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 280
    Top = 168
    Width = 48
    Height = 19
    Caption = 'Detalle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 208
    Width = 102
    Height = 19
    Caption = 'Observaciones'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 408
    Top = 208
    Width = 54
    Height = 19
    Caption = 'Estados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 168
    Width = 81
    Height = 19
    Caption = 'Cod Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 16
    Top = 80
    Width = 48
    Height = 19
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 256
    Width = 1033
    Height = 265
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 952
    Top = 536
    Width = 97
    Height = 33
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 416
    Top = 72
    Width = 217
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'C'#243'digo_Estado'
    ListField = 'Detalle'
    ListSource = DataSource3
    ParentFont = False
    TabOrder = 2
    OnClick = DBLookupComboBox2Click
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 120
    Width = 137
    Height = 27
    DataField = 'Proveedor'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 352
    Top = 120
    Width = 169
    Height = 27
    DataField = 'Cliente'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 608
    Top = 120
    Width = 137
    Height = 27
    DataField = 'Fecha'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 352
    Top = 160
    Width = 217
    Height = 27
    DataField = 'Detalle'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 136
    Top = 200
    Width = 241
    Height = 27
    DataField = 'Observaciones'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Button1: TButton
    Left = 928
    Top = 16
    Width = 105
    Height = 49
    Caption = 'Cambiar estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    WordWrap = True
    OnClick = Button1Click
  end
  object DBEdit6: TDBEdit
    Left = 480
    Top = 200
    Width = 161
    Height = 27
    DataField = 'Estado'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 112
    Top = 160
    Width = 137
    Height = 27
    DataField = 'C'#243'digo_Pedidos'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 96
    Top = 72
    Width = 217
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'C'#243'digo_Cliente'
    ListField = 'Cliente'
    ListSource = DataSource1
    ParentFont = False
    TabOrder = 11
    OnClick = DBLookupComboBox1Click
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT C'#243'digo_Pedidos, Proveedores.Apellido as [Proveed' +
        'or], Clientes.Apellido as [Cliente], Pedidos.Fecha, Pedidos.Deta' +
        'lle,  Pedidos.Observaciones, Estados.Detalle as [Estado]'
      'FROM  Pedidos '
      
        'LEFT JOIN Proveedores ON Proveedores.C'#243'digo_Proveedor = Pedidos.' +
        'C'#243'digo_Proveedor'
      
        'LEFT JOIN Estados ON Estados.C'#243'digo_Estado = Pedidos.C'#243'digo_Esta' +
        'do'
      
        'LEFT JOIN Clientes ON Clientes.C'#243'digo_Cliente = Pedidos.C'#243'digo_C' +
        'liente')
    Left = 872
    Top = 216
    object ADOQuery2Cdigo_Pedidos: TAutoIncField
      DisplayWidth = 18
      FieldName = 'C'#243'digo_Pedidos'
      ReadOnly = True
    end
    object ADOQuery2Proveedor: TStringField
      DisplayWidth = 19
      FieldName = 'Proveedor'
      Size = 30
    end
    object ADOQuery2Cliente: TStringField
      DisplayWidth = 21
      FieldName = 'Cliente'
      Size = 30
    end
    object ADOQuery2Detalle: TStringField
      DisplayWidth = 35
      FieldName = 'Detalle'
      Size = 100
    end
    object ADOQuery2Observaciones: TStringField
      DisplayWidth = 19
      FieldName = 'Observaciones'
      Size = 30
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 13
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Estado: TStringField
      DisplayWidth = 17
      FieldName = 'Estado'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 920
    Top = 216
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Estados')
    Left = 960
    Top = 176
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 1008
    Top = 176
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT C'#243'digo_Pedidos,Clientes.C'#243'digo_Cliente,Proveedor' +
        'es.Apellido as [Proveedor], Clientes.Apellido as [Cliente], Pedi' +
        'dos.Fecha, Pedidos.Detalle,  Pedidos.Observaciones, Estados.Deta' +
        'lle as [Estado]'
      'FROM  Pedidos '
      
        'LEFT JOIN Proveedores ON Proveedores.C'#243'digo_Proveedor = Pedidos.' +
        'C'#243'digo_Proveedor'
      
        'LEFT JOIN Estados ON Estados.C'#243'digo_Estado = Pedidos.C'#243'digo_Esta' +
        'do'
      
        'LEFT JOIN Clientes ON Clientes.C'#243'digo_Cliente = Pedidos.C'#243'digo_C' +
        'liente')
    Left = 872
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 920
    Top = 176
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Estados')
    Left = 968
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 1008
    Top = 216
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 832
    Top = 216
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Clientes')
    Left = 776
    Top = 216
  end
end
