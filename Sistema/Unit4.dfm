object Form4: TForm4
  Left = 26
  Top = 16
  Width = 1321
  Height = 720
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Direcci'#243'n'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 592
    Top = 24
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
  object BitBtn1: TBitBtn
    Left = 72
    Top = 96
    Width = 89
    Height = 33
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
  object DBGrid1: TDBGrid
    Left = 128
    Top = 288
    Width = 1041
    Height = 329
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object BitBtn2: TBitBtn
    Left = 904
    Top = 640
    Width = 105
    Height = 33
    Caption = 'Confirmar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 328
    Top = 640
    Width = 105
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
  object GroupBox1: TGroupBox
    Left = 224
    Top = 104
    Width = 881
    Height = 129
    Caption = 'Datos Proveedor'
    TabOrder = 4
    object Label3: TLabel
      Left = 48
      Top = 40
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
      Left = 344
      Top = 40
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
      Left = 648
      Top = 40
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
      Left = 104
      Top = 80
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 456
      Top = 80
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
    object Label2: TLabel
      Left = 16
      Top = 80
      Width = 50
      Height = 19
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 280
      Top = 40
      Width = 9
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label12: TLabel
      Left = 432
      Top = 88
      Width = 9
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label9: TLabel
      Left = 688
      Top = 88
      Width = 9
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 600
      Top = 40
      Width = 9
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label13: TLabel
      Left = 792
      Top = 96
      Width = 74
      Height = 16
      Caption = '* Obligatorio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 864
      Top = 40
      Width = 9
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 32
      Width = 137
      Height = 27
      DataField = 'Nombre'
      DataSource = DataSource1
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
      Left = 424
      Top = 32
      Width = 169
      Height = 27
      DataField = 'Apellido'
      DataSource = DataSource1
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
      Left = 720
      Top = 32
      Width = 137
      Height = 27
      DataField = 'Tel'#233'fono'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 192
      Top = 80
      Width = 233
      Height = 27
      DataField = 'Domicilio'
      DataSource = DataSource1
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
      Left = 520
      Top = 80
      Width = 161
      Height = 27
      DataField = 'CUIT'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = DBEdit5KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 80
      Width = 25
      Height = 28
      DataField = 'C'#243'digo_Proveedor'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 1152
    Top = 16
    Width = 137
    Height = 217
    TabOrder = 5
    object Button3: TButton
      Left = 16
      Top = 152
      Width = 113
      Height = 49
      Caption = 'Pedido a proveedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 32
      Top = 72
      Width = 89
      Height = 33
      Caption = 'Modificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 38
      Top = 112
      Width = 75
      Height = 33
      Caption = 'Borrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 24
      Top = 16
      Width = 97
      Height = 49
      Caption = 'Nuevo Proveedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = Button2Click
    end
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
    Top = 24
    object ADOQuery1Cdigo_Proveedor: TAutoIncField
      FieldName = 'C'#243'digo_Proveedor'
      ReadOnly = True
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
    object ADOQuery1CUIT: TStringField
      FieldName = 'CUIT'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 24
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Pedidos.C'#243'digo_Proveedor'
      'FROM Pedidos')
    Left = 56
    Top = 176
  end
end
