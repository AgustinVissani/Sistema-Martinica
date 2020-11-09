object Form2: TForm2
  Left = 751
  Top = 128
  Width = 1145
  Height = 826
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Sistema Martinica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Cliente: TLabel
    Left = 16
    Top = 8
    Width = 67
    Height = 23
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 28
    Height = 19
    Caption = 'DNI'
  end
  object Label2: TLabel
    Left = 152
    Top = 48
    Width = 57
    Height = 19
    Caption = 'Nombre'
  end
  object Label3: TLabel
    Left = 288
    Top = 48
    Width = 58
    Height = 19
    Caption = 'Apellido'
  end
  object Productos: TLabel
    Left = 16
    Top = 104
    Width = 81
    Height = 19
    Caption = 'Productos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Formadepago: TLabel
    Left = 736
    Top = 104
    Width = 129
    Height = 19
    Caption = 'Formas de pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 208
    Top = 320
    Width = 42
    Height = 19
    Caption = 'I.V.A.'
  end
  object Label8: TLabel
    Left = 208
    Top = 400
    Width = 36
    Height = 19
    Caption = 'Total'
  end
  object Label9: TLabel
    Left = 176
    Top = 360
    Width = 70
    Height = 19
    Caption = 'Dcto. (%)'
  end
  object altaCliente: TLabel
    Left = 424
    Top = 72
    Width = 30
    Height = 25
    AutoSize = False
    Caption = ' +'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = altaClienteClick
  end
  object agregarProducto: TLabel
    Left = 672
    Top = 136
    Width = 30
    Height = 25
    AutoSize = False
    Caption = ' +'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = altaClienteClick
  end
  object DBText1: TDBText
    Left = 488
    Top = 72
    Width = 225
    Height = 19
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object ingresarPago: TButton
    Left = 1008
    Top = 136
    Width = 105
    Height = 49
    Caption = 'Ingresar Pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
  end
  object Button1: TButton
    Left = 824
    Top = 344
    Width = 225
    Height = 25
    Caption = 'Cargar Venta Anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DNI: TDBEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 27
    TabOrder = 2
    OnEnter = DNIEnter
  end
  object Nombre: TDBEdit
    Left = 152
    Top = 72
    Width = 121
    Height = 27
    TabOrder = 3
  end
  object Apellido: TDBEdit
    Left = 288
    Top = 72
    Width = 121
    Height = 27
    TabOrder = 4
  end
  object calcularTotal: TButton
    Left = 48
    Top = 344
    Width = 83
    Height = 41
    Caption = 'Calcular Total'
    TabOrder = 5
    WordWrap = True
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 472
    Width = 705
    Height = 161
    DataSource = DataSource2
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 736
    Top = 176
    Width = 257
    Height = 120
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 288
    Top = 312
    Width = 121
    Height = 27
    DataField = 'id_prod'
    DataSource = DataSource2
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 288
    Top = 352
    Width = 121
    Height = 27
    DataField = 'descripcion'
    DataSource = DataSource2
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 288
    Top = 392
    Width = 121
    Height = 27
    DataField = 'precio_unitario'
    DataSource = DataSource2
    TabOrder = 10
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 736
    Top = 136
    Width = 121
    Height = 27
    TabOrder = 11
  end
  object DBEdit4: TDBEdit
    Left = 872
    Top = 136
    Width = 121
    Height = 27
    TabOrder = 12
  end
  object DBNavigator1: TDBNavigator
    Left = 544
    Top = 400
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 13
  end
  object Button2: TButton
    Left = 912
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 14
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 912
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 15
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 912
    Top = 552
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 16
    OnClick = Button4Click
  end
  object BitBtn1: TBitBtn
    Left = 912
    Top = 592
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 17
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 912
    Top = 632
    Width = 75
    Height = 25
    TabOrder = 18
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object Button5: TButton
    Left = 536
    Top = 672
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 19
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 136
    Width = 641
    Height = 120
    ColCount = 4
    DefaultColWidth = 102
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 20
    OnSelectCell = StringGrid1SelectCell
    ColWidths = (
      302
      102
      102
      102)
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 264
    Width = 306
    Height = 27
    ItemHeight = 19
    TabOrder = 21
    OnCloseUp = ComboBox1CloseUp
    Items.Strings = (
      'sdfhsgd'
      'sgj'
      'etku'
      'sfg'
      'dtkh'
      'dgj,fhj,dtry'
      'dt'
      'dmgmdg,jfh'
      ',.f,dgj'
      'dhtm'
      'mdg'
      'dhmmdgdgm,gj'
      ',fj'
      'f,j'
      ',fhfj,')
  end
  object Edit1: TEdit
    Left = 152
    Top = 104
    Width = 121
    Height = 27
    TabOrder = 22
    Visible = False
  end
  object Edit2: TEdit
    Left = 440
    Top = 320
    Width = 121
    Height = 27
    TabOrder = 23
  end
  object Edit3: TEdit
    Left = 592
    Top = 320
    Width = 121
    Height = 27
    TabOrder = 24
  end
  object MainMenu1: TMainMenu
    Left = 744
    Top = 16
    object sesion: TMenuItem
      Caption = 'Sesi'#243'n'
      object cerrarSesion: TMenuItem
        Caption = 'Cerrar sesi'#243'n'
        OnClick = cerrarSesionClick
      end
      object salir: TMenuItem
        Caption = 'Salir'
        OnClick = salirClick
      end
    end
    object egresos: TMenuItem
      Caption = 'Egresos'
      OnClick = egresosClick
    end
    object cajadiaria: TMenuItem
      Caption = 'Caja diaria'
      OnClick = cajadiariaClick
    end
    object clientes: TMenuItem
      Caption = 'Clientes'
      OnClick = clientesClick
    end
    object proveedores: TMenuItem
      Caption = 'Proveedores'
      OnClick = proveedoresClick
    end
    object estadisticas: TMenuItem
      Caption = 'Estad'#237'sticas'
      OnClick = estadisticasClick
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Clientes where dni = DNI.Text')
    Left = 784
    Top = 16
    object ADOQuery1Cdigo_Cliente: TAutoIncField
      FieldName = 'C'#243'digo_Cliente'
      ReadOnly = True
    end
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
    Left = 824
    Top = 16
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from productos')
    Left = 672
    Top = 176
    object ADOQuery2id_prod: TAutoIncField
      FieldName = 'id_prod'
      ReadOnly = True
    end
    object ADOQuery2descripcion: TStringField
      FieldName = 'descripcion'
      Size = 50
    end
    object ADOQuery2precio_unitario: TFloatField
      FieldName = 'precio_unitario'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 672
    Top = 216
  end
end
