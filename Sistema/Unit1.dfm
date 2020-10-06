object Form1: TForm1
  Left = 266
  Top = 3
  Width = 1097
  Height = 772
  Caption = 'Inicio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -48
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 58
  object Label1: TLabel
    Left = 320
    Top = 216
    Width = 520
    Height = 58
    Caption = 'SISTEMA MARTINICA'
  end
  object Label2: TLabel
    Left = 296
    Top = 376
    Width = 104
    Height = 33
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 296
    Top = 424
    Width = 168
    Height = 33
    Caption = 'Constrase'#241'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 480
    Top = 384
    Width = 241
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 480
    Top = 432
    Width = 241
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 792
    Top = 384
    Width = 113
    Height = 73
    Caption = 'Iniciar sesion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Martinica_Decoraciones;Data Source=Agus' +
      'tin;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=' +
      '4096;Workstation ID=GUTY;Use Encryption for Data=False;Tag with ' +
      'column collation when possible=False'
    DefaultDatabase = 'Martinica_Decoraciones'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 88
    Top = 120
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Usuarios')
    Left = 160
    Top = 120
  end
end
