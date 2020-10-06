object Form7: TForm7
  Left = 187
  Top = 0
  Width = 1052
  Height = 778
  Caption = 'Nuevo Pedido'
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
    Left = 512
    Top = 128
    Width = 163
    Height = 33
    Caption = 'Nuevo Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 416
    Top = 240
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
    Left = 416
    Top = 288
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
    Left = 416
    Top = 440
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
    Left = 632
    Top = 600
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
  object ListBox1: TListBox
    Left = 560
    Top = 296
    Width = 425
    Height = 129
    ItemHeight = 13
    TabOrder = 1
  end
  object Button3: TButton
    Left = 816
    Top = 600
    Width = 97
    Height = 41
    Caption = 'Guardar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 400
    Top = 600
    Width = 97
    Height = 41
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object ListBox2: TListBox
    Left = 560
    Top = 448
    Width = 425
    Height = 89
    ItemHeight = 13
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 560
    Top = 248
    Width = 145
    Height = 21
    DataField = 'Apellido'
    DataSource = DataSource1
    ItemHeight = 13
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 728
    Top = 248
    Width = 145
    Height = 21
    DataSource = DataSource1
    ListField = 'Apellido'
    TabOrder = 6
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Proveedores;')
    Left = 256
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 192
  end
end
