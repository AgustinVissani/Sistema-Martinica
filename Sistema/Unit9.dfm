object Form9: TForm9
  Left = 308
  Top = 128
  Width = 1305
  Height = 887
  Caption = 'Listado de Clientes'
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
    Left = 592
    Top = 104
    Width = 118
    Height = 33
    Caption = 'CLIENTES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 488
    Top = 208
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
    Left = 768
    Top = 208
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
    Left = 368
    Top = 304
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
    Left = 648
    Top = 304
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
    Left = 272
    Top = 208
    Width = 28
    Height = 19
    Caption = 'DNI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 824
    Top = 56
    Width = 145
    Height = 33
    Caption = 'Nuevo cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 1048
    Top = 56
    Width = 89
    Height = 33
    Caption = 'Borrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    WordWrap = True
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 152
    Width = 89
    Height = 33
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    WordWrap = True
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object DBGrid1: TDBGrid
    Left = 248
    Top = 400
    Width = 817
    Height = 353
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 352
    Top = 56
    Width = 97
    Height = 33
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button3Click
  end
  object BitBtn3: TBitBtn
    Left = 416
    Top = 784
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
  object BitBtn2: TBitBtn
    Left = 856
    Top = 784
    Width = 105
    Height = 33
    Caption = 'Cargar'
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
  object DBEdit1: TDBEdit
    Left = 312
    Top = 200
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
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 568
    Top = 200
    Width = 169
    Height = 27
    DataField = 'Nombre'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 840
    Top = 200
    Width = 185
    Height = 27
    DataField = 'Apellido'
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
    Left = 448
    Top = 304
    Width = 145
    Height = 27
    DataField = 'Tel'#233'fono'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 744
    Top = 304
    Width = 169
    Height = 27
    DataField = 'Domicilio'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn4: TBitBtn
    Left = 1112
    Top = 168
    Width = 105
    Height = 25
    Caption = 'Paso atras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Kind = bkIgnore
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Clientes')
    Left = 64
    Top = 24
    object ADOQuery1DNI: TIntegerField
      FieldName = 'DNI'
    end
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
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 24
  end
end
