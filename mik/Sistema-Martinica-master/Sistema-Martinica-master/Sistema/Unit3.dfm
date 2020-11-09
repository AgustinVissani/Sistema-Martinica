object Form3: TForm3
  Left = 294
  Top = 236
  Width = 363
  Height = 276
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Caja Diaria'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 27
  object Label2: TLabel
    Left = 16
    Top = 24
    Width = 150
    Height = 23
    Caption = 'Saldo en efectivo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 140
    Height = 23
    Caption = 'Saldo en tarjeta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 120
    Width = 151
    Height = 23
    Caption = 'Saldo acumulado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 112
    Top = 168
    Width = 121
    Height = 57
    Caption = 'Cerrar Caja Diaria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 16
    Width = 129
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 64
    Width = 129
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 208
    Top = 112
    Width = 129
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
