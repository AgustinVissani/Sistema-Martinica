object Form3: TForm3
  Left = 768
  Top = 203
  Width = 724
  Height = 378
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Caja Diaria'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 50
    Height = 23
    Caption = 'Fecha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 152
    Top = 8
    Width = 65
    Height = 23
    Caption = 'Efectivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 296
    Top = 8
    Width = 59
    Height = 23
    Caption = 'Tarjeta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 440
    Top = 8
    Width = 93
    Height = 23
    Caption = 'Acumulado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 576
    Top = 16
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
    Left = 8
    Top = 40
    Width = 129
    Height = 31
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 40
    Width = 129
    Height = 31
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 296
    Top = 40
    Width = 129
    Height = 31
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 440
    Top = 40
    Width = 121
    Height = 31
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 465
    Height = 241
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from caja_diaria order by id_cd desc')
    Left = 72
    Top = 8
    object ADOQuery1fecha: TWideStringField
      FieldName = 'fecha'
      Size = 10
    end
    object ADOQuery1efectivo: TFloatField
      FieldName = 'efectivo'
    end
    object ADOQuery1tarjeta: TFloatField
      FieldName = 'tarjeta'
    end
    object ADOQuery1acumulado: TFloatField
      FieldName = 'acumulado'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 8
  end
end
