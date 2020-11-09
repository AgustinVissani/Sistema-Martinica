object Form12: TForm12
  Left = 129
  Top = 280
  Width = 508
  Height = 304
  Caption = 'Egresos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object Label2: TLabel
    Left = 144
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Descripci'#243'n'
  end
  object Label3: TLabel
    Left = 280
    Top = 48
    Width = 30
    Height = 13
    Caption = 'Monto'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    DataField = 'fecha'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 72
    Width = 121
    Height = 21
    DataField = 'descripcion'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 280
    Top = 72
    Width = 121
    Height = 21
    DataField = 'monto'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 473
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 392
    Top = 8
    Width = 75
    Height = 26
    Caption = 'Borrar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 7
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 408
    Top = 232
    Width = 75
    Height = 25
    TabOrder = 8
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from egresos order by id_egreso desc')
    Left = 8
    Top = 8
    object ADOQuery1fecha: TWideStringField
      FieldName = 'fecha'
      Size = 10
    end
    object ADOQuery1descripcion: TStringField
      FieldName = 'descripcion'
      Size = 50
    end
    object ADOQuery1monto: TFloatField
      FieldName = 'monto'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 8
  end
end
