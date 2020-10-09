object Form4: TForm4
  Left = 158
  Top = 0
  Width = 1232
  Height = 788
  Caption = 'Proveedores'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 552
    Top = 48
    Width = 143
    Height = 25
    Caption = 'PROVEEDORES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 176
    Top = 216
    Width = 57
    Height = 19
    Caption = 'Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 472
    Top = 216
    Width = 58
    Height = 19
    Caption = 'Apellido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 800
    Top = 216
    Width = 62
    Height = 19
    Caption = 'Tel'#233'fono'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 320
    Width = 66
    Height = 19
    Caption = 'Domicilio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 704
    Top = 320
    Width = 37
    Height = 19
    Caption = 'CUIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 280
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 104
    Width = 161
    Height = 33
    Caption = 'Nuevo Proveedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    WordWrap = True
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object Button3: TButton
    Left = 672
    Top = 104
    Width = 201
    Height = 33
    Caption = 'Pedido a proveedores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    WordWrap = True
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 576
    Top = 104
    Width = 75
    Height = 33
    Caption = 'Borrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 144
    Top = 392
    Width = 953
    Height = 329
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn2: TBitBtn
    Left = 832
    Top = 744
    Width = 105
    Height = 33
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 240
    Top = 744
    Width = 105
    Height = 33
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
  object DBEdit1: TDBEdit
    Left = 248
    Top = 208
    Width = 137
    Height = 27
    DataField = 'Nombre'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 552
    Top = 208
    Width = 169
    Height = 27
    DataField = 'Apellido'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 880
    Top = 208
    Width = 137
    Height = 27
    DataField = 'Tel'#233'fono'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 440
    Top = 312
    Width = 129
    Height = 27
    DataField = 'Domicilio'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 768
    Top = 312
    Width = 161
    Height = 27
    DataField = 'CUIT'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn4: TBitBtn
    Left = 896
    Top = 104
    Width = 105
    Height = 33
    Caption = 'Paso atras'
    TabOrder = 13
    OnClick = BitBtn4Click
    Kind = bkIgnore
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Proveedores')
    Left = 48
    Top = 64
    object ADOQuery1Nombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object ADOQuery1Apellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object ADOQuery1Telfono: TStringField
      FieldName = 'Tel'#233'fono'
    end
    object ADOQuery1Domicilio: TStringField
      FieldName = 'Domicilio'
      Size = 30
    end
    object ADOQuery1CUIT: TStringField
      FieldName = 'CUIT'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 64
  end
end
