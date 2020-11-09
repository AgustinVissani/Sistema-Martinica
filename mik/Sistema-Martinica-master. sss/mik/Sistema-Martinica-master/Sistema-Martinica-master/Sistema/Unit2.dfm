object Form2: TForm2
  Left = 247
  Top = 156
  Width = 907
  Height = 497
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
    Left = 488
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
    Left = 424
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
    Left = 760
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
    Left = 480
    Top = 24
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
  object dni: TDBEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 27
    TabOrder = 2
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
    Left = 16
    Top = 136
    Width = 393
    Height = 161
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 488
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
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 288
    Top = 352
    Width = 121
    Height = 27
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 288
    Top = 392
    Width = 121
    Height = 27
    TabOrder = 10
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 488
    Top = 136
    Width = 121
    Height = 27
    TabOrder = 11
  end
  object DBEdit4: TDBEdit
    Left = 624
    Top = 136
    Width = 121
    Height = 27
    TabOrder = 12
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
      object cargarEgresos: TMenuItem
        Caption = 'Cargar egresos'
        OnClick = cargarEgresosClick
      end
      object consultarEgresos: TMenuItem
        Caption = 'Consultar egresos'
        OnClick = consultarEgresosClick
      end
    end
    object cajadiaria: TMenuItem
      Caption = 'Caja diaria'
      object cerrarCajaDiaria: TMenuItem
        Caption = 'Cerrar caja diaria'
        OnClick = cerrarCajaDiariaClick
      end
      object consultarCaja: TMenuItem
        Caption = 'Consultar caja'
        OnClick = consultarCajaClick
      end
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
      object diezMasVendidos: TMenuItem
        Caption = '10 productos m'#225's vendidos'
        OnClick = diezMasVendidosClick
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Clientes')
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
end
