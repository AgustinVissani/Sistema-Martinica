object Form3: TForm3
  Left = 291
  Top = 169
  Width = 1306
  Height = 788
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Caja Diaria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 29
  object Label1: TLabel
    Left = 576
    Top = 104
    Width = 148
    Height = 33
    Caption = 'Caja Diaria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 232
    Width = 84
    Height = 19
    Caption = 'Fecha Inicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 192
    Top = 272
    Width = 66
    Height = 19
    Caption = 'Fecha Fin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 192
    Top = 312
    Width = 136
    Height = 19
    Caption = 'Cantidad de Ventas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 192
    Top = 352
    Width = 95
    Height = 19
    Caption = 'Total efectivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 192
    Top = 392
    Width = 137
    Height = 19
    Caption = 'Total tarjeta d'#233'bico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 192
    Top = 432
    Width = 139
    Height = 19
    Caption = 'Total tarjeta cr'#233'dito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 224
    Top = 472
    Width = 71
    Height = 29
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 904
    Top = 208
    Width = 84
    Height = 29
    Caption = 'VENTAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 160
    Top = 592
    Width = 169
    Height = 49
    Caption = 'FORMAS DE PAGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DateTimePicker1: TDateTimePicker
    Left = 360
    Top = 232
    Width = 186
    Height = 26
    Date = 44082.602709421300000000
    Time = 44082.602709421300000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 360
    Top = 272
    Width = 186
    Height = 26
    Date = 44082.602709421300000000
    Time = 44082.602709421300000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 712
    Top = 264
    Width = 457
    Height = 353
    ItemHeight = 29
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 360
    Top = 312
    Width = 145
    Height = 37
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 360
    Top = 352
    Width = 145
    Height = 37
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 360
    Top = 400
    Width = 145
    Height = 37
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 360
    Top = 448
    Width = 145
    Height = 37
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 104
    Width = 121
    Height = 41
    Caption = '&Volver'
    TabOrder = 8
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
end
