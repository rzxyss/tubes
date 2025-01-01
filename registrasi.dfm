object fRegis: TfRegis
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Form Registrasi'
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
  object Label1: TLabel
    Left = 517
    Top = 106
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
  object lblLogin: TLabel
    Left = 696
    Top = 501
    Width = 72
    Height = 28
    Cursor = crHandPoint
    Caption = 'Klik Disini'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Poppins'
    Font.Style = [fsItalic]
    ParentFont = False
    OnClick = lblLoginClick
  end
  object Label8: TLabel
    Left = 520
    Top = 501
    Width = 170
    Height = 28
    Caption = 'Sudah Memiliki Akun?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Poppins'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 364
    Top = 197
    Width = 561
    Height = 289
    Caption = 'Silahkan Isi Form Dibawah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Poppins'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 143
      Height = 23
      Caption = 'Nomor Induk Keluarga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 99
      Height = 23
      Caption = 'Nama Lengkap'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 35
      Height = 23
      Caption = 'Email'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 192
      Width = 97
      Height = 23
      Caption = 'Nomor Telepon'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 320
      Top = 24
      Width = 67
      Height = 23
      Caption = 'Username'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 320
      Top = 80
      Width = 64
      Height = 23
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object edNik: TEdit
      Left = 16
      Top = 48
      Width = 225
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edName: TEdit
      Left = 16
      Top = 104
      Width = 225
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edEmail: TEdit
      Left = 16
      Top = 160
      Width = 225
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edTelp: TEdit
      Left = 16
      Top = 216
      Width = 225
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edUname: TEdit
      Left = 320
      Top = 48
      Width = 225
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edPass: TEdit
      Left = 320
      Top = 104
      Width = 225
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 5
    end
    object btnSubmit: TButton
      Left = 352
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Submit'
      TabOrder = 6
      OnClick = btnSubmitClick
    end
    object btnReset: TButton
      Left = 440
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 7
    end
  end
end
