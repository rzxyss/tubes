object fLogin: TfLogin
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Halaman Login'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblUname: TLabel
    Left = 557
    Top = 237
    Width = 112
    Height = 29
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Futura Md BT'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblPass: TLabel
    Left = 557
    Top = 309
    Width = 102
    Height = 29
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Futura Md BT'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 517
    Top = 117
    Width = 255
    Height = 96
    Alignment = taCenter
    Caption = 'Selamat Datang Di'#13#10'Epull Rental'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Poppins SemiBold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edUname: TEdit
    Left = 557
    Top = 269
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edPass: TEdit
    Left = 557
    Top = 341
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 605
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object zconn: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'AutoEncodeStrings=True'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'rental_kendaraan'
    User = 'root'
    Protocol = 'mysql'
    Left = 16
    Top = 8
  end
end
