object Form10: TForm10
  Left = 420
  Top = 110
  Width = 1271
  Height = 788
  Caption = 'ESTADOS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 528
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
  object Label10: TLabel
    Left = 480
    Top = 80
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
    Left = 160
    Top = 440
    Width = 1025
    Height = 297
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 576
    Top = 80
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
    TabOrder = 2
    OnClick = DBLookupComboBox1Click
  end
  object GroupBox1: TGroupBox
    Left = 136
    Top = 136
    Width = 1017
    Height = 177
    Caption = 'Datos cliente'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 280
      Top = 38
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
      Top = 38
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
      Left = 800
      Top = 38
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
      Left = 64
      Top = 102
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
      Left = 512
      Top = 102
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
    object Label9: TLabel
      Left = 32
      Top = 38
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
    object Label8: TLabel
      Left = 336
      Top = 136
      Width = 125
      Height = 25
      Caption = 'Estado actual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 368
      Top = 30
      Width = 153
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
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 616
      Top = 30
      Width = 177
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
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 856
      Top = 30
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
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 136
      Top = 94
      Width = 361
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
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 632
      Top = 94
      Width = 321
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
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 128
      Top = 30
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
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 488
      Top = 134
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
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 368
    Top = 320
    Width = 585
    Height = 89
    Caption = 'Cambiar el estado acutal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 24
      Top = 32
      Width = 127
      Height = 25
      Caption = 'Nuevo Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 424
      Top = 32
      Width = 9
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 496
      Top = 64
      Width = 74
      Height = 16
      Caption = '* Obligatorio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 176
      Top = 24
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
      TabOrder = 0
      OnClick = DBLookupComboBox2Click
    end
    object Button1: TButton
      Left = 488
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Cambiar estado'
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
  object Button2: TButton
    Left = 1088
    Top = 392
    Width = 75
    Height = 33
    Caption = 'Filtrar por estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = Button2Click
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
    Top = 448
    object ADOQuery2Cdigo_Pedidos: TAutoIncField
      DisplayWidth = 15
      FieldName = 'C'#243'digo_Pedidos'
      ReadOnly = True
    end
    object ADOQuery2Proveedor: TStringField
      DisplayWidth = 23
      FieldName = 'Proveedor'
      Size = 30
    end
    object ADOQuery2Cliente: TStringField
      DisplayWidth = 19
      FieldName = 'Cliente'
      Size = 30
    end
    object ADOQuery2Estado: TStringField
      DisplayWidth = 17
      FieldName = 'Estado'
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 13
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Detalle: TStringField
      DisplayWidth = 35
      FieldName = 'Detalle'
      Size = 100
    end
    object ADOQuery2Observaciones: TStringField
      DisplayWidth = 16
      FieldName = 'Observaciones'
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 88
    Top = 448
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Estados')
    Left = 24
    Top = 176
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 64
    Top = 176
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
    Top = 408
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 88
    Top = 408
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Estados')
    Left = 24
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 64
    Top = 216
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
  object ADOQuery6: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT Estados.Detalle as [Estado],Proveedores.Apellido' +
        ' as [Proveedor], Clientes.Apellido as [Cliente], Pedidos.Fecha, ' +
        'Pedidos.Detalle'
      'FROM  Pedidos '
      
        'LEFT JOIN Proveedores ON Proveedores.C'#243'digo_Proveedor = Pedidos.' +
        'C'#243'digo_Proveedor'
      
        'LEFT JOIN Estados ON Estados.C'#243'digo_Estado = Pedidos.C'#243'digo_Esta' +
        'do'
      
        'LEFT JOIN Clientes ON Clientes.C'#243'digo_Cliente = Pedidos.C'#243'digo_C' +
        'liente'
      'ORDER BY Estados.Detalle')
    Left = 1176
    Top = 392
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery6
    Left = 1208
    Top = 392
  end
end
