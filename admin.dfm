object fAdmin: TfAdmin
  Left = 197
  Top = 136
  Width = 1305
  Height = 675
  Caption = 'AdminPanel'
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
  object bgNav: TShape
    Left = 0
    Top = 0
    Width = 1289
    Height = 89
    Brush.Color = clActiveCaption
    Pen.Style = psClear
    Pen.Width = 0
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 136
    Height = 74
    Caption = 'Admin Panel'#13#10'Epull Rental'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Poppins SemiBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnAkun: TBitBtn
    Left = 848
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Akun'
    TabOrder = 0
    OnClick = btnAkunClick
  end
  object btnKendaraan: TBitBtn
    Left = 992
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Kendaraan'
    TabOrder = 1
    OnClick = btnKendaraanClick
  end
  object btnSewa: TBitBtn
    Left = 1136
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Sewa'
    TabOrder = 2
    OnClick = btnSewaClick
  end
  object pnlAkun: TPanel
    Left = 0
    Top = 88
    Width = 1273
    Height = 481
    BevelOuter = bvNone
    Color = clSkyBlue
    TabOrder = 3
    object AkunTambah: TGroupBox
      Left = 64
      Top = 16
      Width = 497
      Height = 289
      Caption = 'Form Tambah'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Poppins'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 25
        Height = 28
        Caption = 'NIK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 49
        Height = 28
        Caption = 'Nama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 160
        Width = 43
        Height = 28
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 224
        Width = 59
        Height = 28
        Caption = 'No Telp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 264
        Top = 32
        Width = 82
        Height = 28
        Caption = 'Username'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 264
        Top = 96
        Width = 76
        Height = 28
        Caption = 'Password'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 264
        Top = 160
        Width = 34
        Height = 28
        Caption = 'Role'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object nikAkun: TEdit
        Left = 16
        Top = 56
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object namaAkun: TEdit
        Left = 16
        Top = 120
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object emailAkun: TEdit
        Left = 16
        Top = 184
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object telpAkun: TEdit
        Left = 16
        Top = 248
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object usernameAkun: TEdit
        Left = 264
        Top = 56
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object passwordAkun: TEdit
        Left = 264
        Top = 120
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object btnTambahAkun: TButton
        Left = 296
        Top = 232
        Width = 121
        Height = 33
        Caption = 'Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object dblRoleAkun: TDBLookupComboBox
        Left = 264
        Top = 184
        Width = 185
        Height = 34
        DataField = 'rl_role'
        DataSource = dm.ds_akun
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 7
      end
    end
    object AkunEdit: TGroupBox
      Left = 712
      Top = 16
      Width = 497
      Height = 289
      Caption = 'Form Edit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Poppins'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 1
      object Label9: TLabel
        Left = 16
        Top = 32
        Width = 25
        Height = 28
        Caption = 'NIK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 16
        Top = 96
        Width = 49
        Height = 28
        Caption = 'Nama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 16
        Top = 160
        Width = 43
        Height = 28
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 16
        Top = 224
        Width = 59
        Height = 28
        Caption = 'No Telp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 264
        Top = 32
        Width = 82
        Height = 28
        Caption = 'Username'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 264
        Top = 96
        Width = 76
        Height = 28
        Caption = 'Password'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 264
        Top = 160
        Width = 34
        Height = 28
        Caption = 'Role'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object dbeNikAkun: TDBEdit
        Left = 16
        Top = 56
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dbeNamaAkun: TDBEdit
        Left = 16
        Top = 120
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbeEmailAkun: TDBEdit
        Left = 16
        Top = 184
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dbeTelpAkun: TDBEdit
        Left = 16
        Top = 248
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbeUsernameAkun: TDBEdit
        Left = 264
        Top = 55
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dbePasswordAkun: TDBEdit
        Left = 264
        Top = 119
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object grid_akun: TSMDBGrid
      Left = 64
      Top = 328
      Width = 1145
      Height = 185
      DataSource = dm.ds_akun
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsNormal
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'id_akun'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'NIK'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nama Lengkap'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Email'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'no_telp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nomor Telepon'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'username'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Username'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'password'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Password'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rl_role'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Role'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end>
    end
    object nav_akun: TSMDBNavigator
      Left = 64
      Top = 512
      Width = 1140
      Height = 25
      DataSource = dm.ds_akun
      Layout = blGlyphLeft
      ShowCaption = False
      ShowGlyph = True
      TabOrder = 3
    end
  end
  object pnlKendaraan: TPanel
    Left = 1256
    Top = 88
    Width = 33
    Height = 41
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 4
    object KendaraanTambah: TGroupBox
      Left = 64
      Top = 16
      Width = 497
      Height = 289
      Caption = 'Form Tambah'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Poppins'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      object Label16: TLabel
        Left = 16
        Top = 32
        Width = 96
        Height = 28
        Caption = 'Nomor Polisi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 16
        Top = 96
        Width = 134
        Height = 28
        Caption = 'Jenis Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 16
        Top = 160
        Width = 142
        Height = 28
        Caption = 'Merek Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 16
        Top = 224
        Width = 143
        Height = 28
        Caption = 'Model Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 264
        Top = 32
        Width = 82
        Height = 28
        Caption = 'Tarif Sewa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 264
        Top = 96
        Width = 144
        Height = 28
        Caption = 'Status Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object nopolKendaran: TEdit
        Left = 16
        Top = 56
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object jenisKendaraan: TEdit
        Left = 16
        Top = 120
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object merekKendaraan: TEdit
        Left = 16
        Top = 184
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object modelKendaraan: TEdit
        Left = 16
        Top = 248
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object rarifKendaraan: TEdit
        Left = 264
        Top = 56
        Width = 185
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object btnTambahKendaraan: TButton
        Left = 296
        Top = 232
        Width = 121
        Height = 33
        Caption = 'Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dblStatusKendaraan: TDBLookupComboBox
        Left = 264
        Top = 120
        Width = 185
        Height = 34
        DataField = 'rl_skendaraan'
        DataSource = dm.ds_kendaraan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 6
      end
    end
    object KendaraanEdit: TGroupBox
      Left = 712
      Top = 16
      Width = 497
      Height = 289
      Caption = 'Form Edit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Poppins'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 1
      object Label22: TLabel
        Left = 16
        Top = 32
        Width = 96
        Height = 28
        Caption = 'Nomor Polisi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 264
        Top = 32
        Width = 82
        Height = 28
        Caption = 'Tarif Sewa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 264
        Top = 96
        Width = 144
        Height = 28
        Caption = 'Status Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 16
        Top = 96
        Width = 134
        Height = 28
        Caption = 'Jenis Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 16
        Top = 160
        Width = 142
        Height = 28
        Caption = 'Merek Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 16
        Top = 224
        Width = 143
        Height = 28
        Caption = 'Model Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object dbeNopolKendaraan: TDBEdit
        Left = 16
        Top = 56
        Width = 185
        Height = 34
        DataField = 'id_kendaraan'
        DataSource = dm.ds_kendaraan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dbeJenisKendaraan: TDBEdit
        Left = 16
        Top = 120
        Width = 185
        Height = 34
        DataField = 'jenis_kendaraan'
        DataSource = dm.ds_kendaraan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbeMerekKendaraan: TDBEdit
        Left = 16
        Top = 184
        Width = 185
        Height = 34
        DataField = 'merk_kendaraan'
        DataSource = dm.ds_kendaraan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dbeModelKendaraan: TDBEdit
        Left = 16
        Top = 248
        Width = 185
        Height = 34
        DataField = 'model_kendaraan'
        DataSource = dm.ds_kendaraan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbeTarifKendaraan: TDBEdit
        Left = 264
        Top = 55
        Width = 185
        Height = 34
        DataField = 'tarif'
        DataSource = dm.ds_kendaraan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object grid_kendaraan: TSMDBGrid
      Left = 64
      Top = 328
      Width = 1145
      Height = 185
      DataSource = dm.ds_kendaraan
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsNormal
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'id_kendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nomor Polisi'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jenis_kendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Jenis Kendaraan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'merk_kendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Merek Kendaraan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'model_kendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Model Kendaraan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tarif'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Tarif Sewa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rl_skendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Status Kendaraan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end>
    end
    object nav_kendaraan: TSMDBNavigator
      Left = 64
      Top = 512
      Width = 1140
      Height = 25
      DataSource = dm.ds_kendaraan
      Layout = blGlyphLeft
      ShowCaption = False
      ShowGlyph = True
      TabOrder = 3
    end
  end
  object pnlSewa: TPanel
    Left = 1248
    Top = 600
    Width = 41
    Height = 33
    Color = clSkyBlue
    TabOrder = 5
    object grid_sewa: TSMDBGrid
      Left = 64
      Top = 48
      Width = 1145
      Height = 185
      DataSource = dm.ds_sewa
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsNormal
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 24
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end>
    end
    object nav_sewa: TSMDBNavigator
      Left = 64
      Top = 232
      Width = 1140
      Height = 25
      DataSource = dm.ds_sewa
      Layout = blGlyphLeft
      ShowCaption = False
      ShowGlyph = True
      TabOrder = 1
    end
  end
  object SMDBNavigator1: TSMDBNavigator
    Left = 64
    Top = 568
    Width = 1140
    Height = 25
    DataSource = dm.ds_akun
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 6
  end
end
