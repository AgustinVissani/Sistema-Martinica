object Form10: TForm10
  Left = 137
  Top = 14
  Width = 1271
  Height = 785
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
    Left = 528
    Top = 24
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
    Left = 456
    Top = 352
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
  object Label2: TLabel
    Left = 224
    Top = 152
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
    Left = 544
    Top = 152
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
    Left = 872
    Top = 152
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
    Left = 376
    Top = 224
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
    Left = 736
    Top = 224
    Width = 102
    Height = 19
    Caption = 'Observaciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 528
    Top = 280
    Width = 54
    Height = 19
    Caption = 'Estados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 88
    Top = 208
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
    Left = 472
    Top = 88
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
  object DBGrid1: TDBGrid
    Left = 144
    Top = 416
    Width = 1025
    Height = 265
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
    Left = 56
    Top = 56
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
    Left = 552
    Top = 352
    Width = 241
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
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
    Left = 320
    Top = 152
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
    Left = 624
    Top = 144
    Width = 169
    Height = 27
    DataField = 'Cliente'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 952
    Top = 144
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
    Left = 440
    Top = 224
    Width = 217
    Height = 27
    DataField = 'Detalle'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 880
    Top = 216
    Width = 241
    Height = 27
    DataField = 'Observaciones'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Button1: TButton
    Left = 872
    Top = 344
    Width = 89
    Height = 41
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
    Left = 672
    Top = 272
    Width = 161
    Height = 27
    DataField = 'Estado'
    DataSource = DataSource2
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 184
    Top = 208
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
    Left = 568
    Top = 88
    Width = 233
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
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
    Left = 40
    Top = 400
    object ADOQuery2Cdigo_Pedidos: TAutoIncField
      DisplayWidth = 15
      FieldName = 'C'#243'digo_Pedidos'
      ReadOnly = True
    end
    object ADOQuery2Proveedor: TStringField
      DisplayWidth = 21
      FieldName = 'Proveedor'
      Size = 30
    end
    object ADOQuery2Cliente: TStringField
      DisplayWidth = 19
      FieldName = 'Cliente'
      Size = 30
    end
    object ADOQuery2Detalle: TStringField
      DisplayWidth = 34
      FieldName = 'Detalle'
      Size = 100
    end
    object ADOQuery2Observaciones: TStringField
      DisplayWidth = 16
      FieldName = 'Observaciones'
      Size = 30
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 17
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Estado: TStringField
      DisplayWidth = 15
      FieldName = 'Estado'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 88
    Top = 400
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Estados')
    Left = 344
    Top = 312
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 392
    Top = 312
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Clientes.C'#243'digo_Cliente, Clientes.Apellido AS Cliente'
      'FROM Clientes'
      'ORDER BY Clientes.Apellido ASC')
    Left = 40
    Top = 360
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 88
    Top = 360
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Estados')
    Left = 344
    Top = 360
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 400
    Top = 360
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 296
    Top = 80
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Clientes')
    Left = 240
    Top = 80
  end
end
