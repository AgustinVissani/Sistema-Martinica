object Form2: TForm2
  Left = -1624
  Top = -28
  Width = 826
  Height = 404
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
  object DNI: TLabel
    Left = 56
    Top = 40
    Width = 18
    Height = 13
    Caption = 'DNI'
  end
  object Apellido: TLabel
    Left = 216
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Apellido'
  end
  object Nombre: TLabel
    Left = 352
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Productos: TLabel
    Left = 56
    Top = 96
    Width = 48
    Height = 13
    Caption = 'Productos'
  end
  object Formadepago: TLabel
    Left = 440
    Top = 96
    Width = 72
    Height = 13
    Caption = 'Forma de pago'
  end
  object Label7: TLabel
    Left = 216
    Top = 248
    Width = 29
    Height = 13
    Caption = 'I.V.A.'
  end
  object Label8: TLabel
    Left = 224
    Top = 312
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label9: TLabel
    Left = 200
    Top = 280
    Width = 48
    Height = 13
    Caption = 'Dcto. (%)'
  end
  object Label1: TLabel
    Left = 536
    Top = 64
    Width = 89
    Height = 19
    AutoSize = False
    Caption = '  ADEUDA'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object altaCliente: TLabel
    Left = 488
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
    Left = 384
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
  object agregarFormaPago: TLabel
    Left = 768
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
  object ComboBox1: TComboBox
    Left = 56
    Top = 64
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object Edit1: TEdit
    Left = 216
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 352
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object StringGrid1: TStringGrid
    Left = 56
    Top = 120
    Width = 320
    Height = 120
    TabOrder = 3
  end
  object StringGrid2: TStringGrid
    Left = 440
    Top = 120
    Width = 320
    Height = 120
    TabOrder = 4
    ColWidths = (
      64
      64
      62
      64
      64)
  end
  object ingresarPago: TButton
    Left = 560
    Top = 256
    Width = 105
    Height = 49
    Caption = 'Ingresar Pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
  end
  object Edit3: TEdit
    Left = 256
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 256
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 256
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Edit5'
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
end
