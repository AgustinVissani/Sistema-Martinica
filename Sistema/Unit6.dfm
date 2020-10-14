object Form6: TForm6
  Left = 354
  Top = 144
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
    Left = 768
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
    Left = 872
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
    TabOrder = 0
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
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object DBGrid1: TDBGrid
    Left = 184
    Top = 296
    Width = 817
    Height = 369
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from  Pedidos_Clientes'
      
        'left join Proveedores on Proveedores.C'#243'digo_Proveedor = Pedidos_' +
        'Clientes.C'#243'digo_Proveedor'
      
        'left join Clientes on Clientes.C'#243'digo_Cliente = Pedidos_Clientes' +
        '.C'#243'digo_Cliente '
      
        'left join Pedidos on Pedidos.C'#243'digo_Proveedor = Proveedores.C'#243'di' +
        'go_Proveedor')
    Left = 56
    Top = 200
    object ADOQuery2Apellido: TStringField
      DisplayWidth = 36
      FieldName = 'Apellido'
      Size = 30
    end
    object ADOQuery2CUIT: TStringField
      DisplayWidth = 30
      FieldName = 'CUIT'
      Size = 30
    end
    object ADOQuery2Apellido_1: TStringField
      DisplayWidth = 36
      FieldName = 'Apellido_1'
      Size = 30
    end
    object ADOQuery2DNI: TIntegerField
      DisplayWidth = 12
      FieldName = 'DNI'
    end
    object ADOQuery2Fecha: TWideStringField
      DisplayWidth = 15
      FieldName = 'Fecha'
      Size = 10
    end
    object ADOQuery2Cdigo_Estado: TIntegerField
      DisplayWidth = 21
      FieldName = 'C'#243'digo_Estado'
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
end
