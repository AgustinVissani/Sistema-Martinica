object Form7: TForm7
  Left = 391
  Top = 190
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
    Left = 416
    Top = 112
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
    Left = 320
    Top = 224
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
    Left = 320
    Top = 272
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
    Top = 424
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
    Left = 536
    Top = 584
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
    Left = 464
    Top = 280
    Width = 425
    Height = 129
    ItemHeight = 13
    TabOrder = 1
  end
  object Button3: TButton
    Left = 720
    Top = 584
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
    Left = 304
    Top = 584
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
    Left = 464
    Top = 432
    Width = 425
    Height = 89
    ItemHeight = 13
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 464
    Top = 232
    Width = 145
    Height = 21
    DataField = 'Apellido'
    DataSource = DataSource1
    ItemHeight = 13
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 632
    Top = 232
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
    Left = 160
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 208
    Top = 176
  end
end
