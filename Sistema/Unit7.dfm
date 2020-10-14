object Form7: TForm7
  Left = 193
  Top = 11
  Width = 1280
  Height = 720
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Nuevo Pedido'
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
    Left = 608
    Top = 32
    Width = 189
    Height = 33
    Caption = 'NUEVO PEDIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 496
    Top = 112
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
  object Label4: TLabel
    Left = 352
    Top = 192
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
  object Label2: TLabel
    Left = 320
    Top = 368
    Width = 134
    Height = 25
    Caption = 'Observaciones'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 472
    Top = 592
    Width = 97
    Height = 41
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button3: TButton
    Left = 800
    Top = 592
    Width = 97
    Height = 41
    Caption = 'Guardar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 40
    Width = 97
    Height = 41
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
    Left = 640
    Top = 112
    Width = 177
    Height = 27
    DataField = 'Apellido'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 496
    Top = 192
    Width = 337
    Height = 145
    TabOrder = 4
  end
  object DBMemo2: TDBMemo
    Left = 496
    Top = 368
    Width = 337
    Height = 153
    TabOrder = 5
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Apellido FROM Proveedores;')
    Left = 160
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 208
    Top = 176
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource2
    Parameters = <>
    SQL.Strings = (
      
        'SELECT C'#243'digo_Proveedor, Fecha, C'#243'digo_Estado, Detalle, Observac' +
        'iones '
      'FROM Pedidos')
    Left = 160
    Top = 248
  end
  object DataSource2: TDataSource
    Left = 208
    Top = 248
  end
end
