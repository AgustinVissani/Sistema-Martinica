object Form2: TForm2
  Left = 274
  Top = 169
  Width = 1151
  Height = 668
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
  object Productos: TLabel
    Left = 16
    Top = 144
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
    Width = 49
    Height = 19
    Caption = 'Pagos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 344
    Top = 312
    Width = 42
    Height = 19
    Caption = 'I.V.A.'
  end
  object Label8: TLabel
    Left = 320
    Top = 392
    Width = 36
    Height = 19
    Caption = 'Total'
  end
  object Label9: TLabel
    Left = 312
    Top = 352
    Width = 70
    Height = 19
    Caption = 'Dcto. (%)'
  end
  object altaCliente: TLabel
    Left = 512
    Top = 72
    Width = 25
    Height = 25
    AutoSize = False
    Caption = ' +'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
    OnClick = altaClienteClick
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
  object Label4: TLabel
    Left = 664
    Top = 176
    Width = 25
    Height = 23
    Caption = ' +'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    OnClick = Label4Click
  end
  object Label5: TLabel
    Left = 736
    Top = 72
    Width = 70
    Height = 19
    Caption = 'ADEUDA'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel
    Left = 664
    Top = 210
    Width = 24
    Height = 19
    Caption = '++'
    OnClick = Label6Click
  end
  object ingresarPago: TButton
    Left = 1016
    Top = 216
    Width = 97
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
    OnClick = ingresarPagoClick
  end
  object calcularTotal: TButton
    Left = 544
    Top = 336
    Width = 83
    Height = 41
    Caption = 'Calcular Total'
    TabOrder = 1
    WordWrap = True
    OnClick = calcularTotalClick
  end
  object Button5: TButton
    Left = 424
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button5Click
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 176
    Width = 641
    Height = 120
    ColCount = 4
    DefaultColWidth = 102
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
    OnSelectCell = StringGrid1SelectCell
    ColWidths = (
      302
      102
      102
      102)
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 632
    Width = 306
    Height = 27
    ItemHeight = 19
    TabOrder = 4
    OnChange = ComboBox1Change
    OnCloseUp = ComboBox1CloseUp
  end
  object dni: TEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 27
    TabOrder = 5
  end
  object nombre: TEdit
    Left = 152
    Top = 72
    Width = 121
    Height = 27
    TabOrder = 6
  end
  object apellido: TEdit
    Left = 288
    Top = 72
    Width = 121
    Height = 27
    TabOrder = 7
  end
  object id_cliente: TEdit
    Left = 16
    Top = 104
    Width = 121
    Height = 27
    TabOrder = 8
    Visible = False
  end
  object Edit1: TEdit
    Left = 400
    Top = 304
    Width = 121
    Height = 27
    TabOrder = 9
  end
  object Edit2: TEdit
    Left = 400
    Top = 344
    Width = 121
    Height = 27
    TabOrder = 10
    Text = '0'
  end
  object Edit3: TEdit
    Left = 400
    Top = 384
    Width = 121
    Height = 27
    TabOrder = 11
  end
  object ComboBox2: TComboBox
    Left = 736
    Top = 136
    Width = 145
    Height = 27
    ItemHeight = 19
    TabOrder = 12
    Items.Strings = (
      'Efectivo'
      'Tarjeta')
  end
  object Edit4: TEdit
    Left = 896
    Top = 136
    Width = 105
    Height = 27
    TabOrder = 13
  end
  object StringGrid2: TStringGrid
    Left = 736
    Top = 176
    Width = 265
    Height = 120
    ColCount = 2
    FixedCols = 0
    RowCount = 2
    TabOrder = 14
    ColWidths = (
      131
      93)
  end
  object id_venta: TEdit
    Left = 896
    Top = 96
    Width = 105
    Height = 27
    TabOrder = 15
    Visible = False
  end
  object Button1: TButton
    Left = 760
    Top = 312
    Width = 225
    Height = 25
    Caption = 'Cargar Venta Anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    Visible = False
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 464
    Width = 705
    Height = 161
    DataSource = DataSource2
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 424
    Width = 121
    Height = 27
    DataField = 'id_prod'
    DataSource = DataSource2
    TabOrder = 18
    Visible = False
  end
  object Button2: TButton
    Left = 736
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 19
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 736
    Top = 504
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 20
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 736
    Top = 544
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 21
    Visible = False
    OnClick = Button4Click
  end
  object BitBtn1: TBitBtn
    Left = 736
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 22
    Visible = False
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 736
    Top = 624
    Width = 75
    Height = 25
    TabOrder = 23
    Visible = False
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object BitBtn3: TBitBtn
    Left = 1024
    Top = 144
    Width = 49
    Height = 25
    Caption = '&'
    TabOrder = 24
    OnClick = BitBtn3Click
    Kind = bkRetry
  end
  object BitBtn4: TBitBtn
    Left = 608
    Top = 144
    Width = 49
    Height = 25
    Caption = '&'
    TabOrder = 25
    OnClick = BitBtn4Click
    Kind = bkRetry
  end
  object MainMenu1: TMainMenu
    Left = 176
    Top = 144
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
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from productos')
    Left = 16
    Top = 304
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
    Left = 16
    Top = 344
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 208
    Top = 144
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
    Left = 248
    Top = 144
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from ventas')
    Left = 1016
    Top = 176
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 1056
    Top = 176
  end
end
