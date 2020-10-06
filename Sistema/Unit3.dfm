object Form3: TForm3
  Left = 60
  Top = 26
  Width = 1235
  Height = 760
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
    Left = 568
    Top = 120
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
    Left = 184
    Top = 200
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
    Left = 184
    Top = 240
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
    Left = 184
    Top = 280
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
    Left = 184
    Top = 320
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
    Left = 184
    Top = 360
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
    Left = 184
    Top = 400
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
    Left = 216
    Top = 440
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
    Left = 896
    Top = 176
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
    Left = 152
    Top = 560
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
    Left = 352
    Top = 200
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
    Left = 352
    Top = 240
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
    Left = 704
    Top = 232
    Width = 457
    Height = 353
    ItemHeight = 29
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 352
    Top = 280
    Width = 145
    Height = 37
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 352
    Top = 320
    Width = 145
    Height = 37
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 352
    Top = 368
    Width = 145
    Height = 37
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 352
    Top = 416
    Width = 145
    Height = 37
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 112
    Width = 105
    Height = 41
    Caption = '&Volver'
    TabOrder = 8
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
end
