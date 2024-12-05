object fLogin: TfLogin
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Halaman Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object bg: TShape
    Left = -17
    Top = -28
    Width = 1305
    Height = 675
  end
  object lblUname: TLabel
    Left = 551
    Top = 223
    Width = 112
    Height = 29
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Futura Md BT'
    Font.Style = []
    ParentFont = False
  end
  object lblPass: TLabel
    Left = 551
    Top = 295
    Width = 102
    Height = 29
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Futura Md BT'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 509
    Top = 104
    Width = 255
    Height = 97
    Alignment = taCenter
    Caption = 'Selamat Datang Di'#13#10'Rental Epull'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Poppins SemiBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edUname: TEdit
    Left = 551
    Top = 255
    Width = 169
    Height = 25
    TabOrder = 0
  end
  object edPass: TEdit
    Left = 551
    Top = 327
    Width = 169
    Height = 25
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 598
    Top = 371
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
  end
end
