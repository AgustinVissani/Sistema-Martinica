object Form2: TForm2
  Left = 257
  Top = 195
  Width = 1092
  Height = 445
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Sistema Martinica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Cliente: TLabel
    Left = 56
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 18
    Height = 13
    Caption = 'DNI'
  end
  object Label2: TLabel
    Left = 192
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label3: TLabel
    Left = 328
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Apellido'
  end
  object Productos: TLabel
    Left = 56
    Top = 96
    Width = 48
    Height = 13
    Caption = 'Productos'
  end
  object Formadepago: TLabel
    Left = 520
    Top = 96
    Width = 77
    Height = 13
    Caption = 'Formas de pago'
  end
  object Label7: TLabel
    Left = 272
    Top = 288
    Width = 29
    Height = 13
    Caption = 'I.V.A.'
  end
  object Label8: TLabel
    Left = 280
    Top = 352
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label9: TLabel
    Left = 256
    Top = 320
    Width = 48
    Height = 13
    Caption = 'Dcto. (%)'
  end
  object etiquetaEstado: TLabel
    Left = 520
    Top = 64
    Width = 225
    Height = 19
    AutoSize = False
    Caption = '               ADEUDA'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    OnClick = etiquetaEstadoClick
  end
  object altaCliente: TLabel
    Left = 464
    Top = 64
    Width = 30
    Height = 25
    AutoSize = False
    Caption = ' +'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = altaClienteClick
  end
  object agregarProducto: TLabel
    Left = 472
    Top = 120
    Width = 30
    Height = 25
    AutoSize = False
    Caption = ' +'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = altaClienteClick
  end
  object StringGrid2: TStringGrid
    Left = 520
    Top = 152
    Width = 225
    Height = 120
    ColCount = 3
    DefaultColWidth = 32
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      32
      99
      65)
  end
  object ingresarPago: TButton
    Left = 760
    Top = 120
    Width = 105
    Height = 49
    Caption = 'Ingresar Pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    WordWrap = True
  end
  object Edit3: TEdit
    Left = 312
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 312
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 312
    Top = 352
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 520
    Top = 120
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Efectivo'
      'Tarjeta')
  end
  object Edit6: TEdit
    Left = 640
    Top = 120
    Width = 105
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 520
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
    TabOrder = 7
    OnClick = Button1Click
  end
  object dni: TDBEdit
    Left = 56
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Nombre: TDBEdit
    Left = 192
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Apellido: TDBEdit
    Left = 328
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object StringGrid1: TStringGrid
    Left = 56
    Top = 120
    Width = 401
    Height = 153
    DefaultColWidth = 32
    RowCount = 4
    TabOrder = 11
    ColWidths = (
      32
      174
      48
      53
      59)
    RowHeights = (
      24
      24
      21
      24)
  end
  object TDBGrid
    Left = 392
    Top = 208
    Width = 320
    Height = 120
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object calcularTotal: TButton
    Left = 184
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Calcular Total'
    TabOrder = 13
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
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
    Left = 104
    Top = 8
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
    Left = 144
    Top = 8
  end
end
