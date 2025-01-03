object fAdmin: TfAdmin
  Left = 213
  Top = 127
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
  OnShow = FormShow
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
  object lblAkun: TLabel
    Left = 208
    Top = 24
    Width = 139
    Height = 32
    Caption = 'Data Akun'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblKendaraan: TLabel
    Left = 208
    Top = 24
    Width = 218
    Height = 32
    Caption = 'Data Kendaraan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSewa: TLabel
    Left = 208
    Top = 24
    Width = 142
    Height = 32
    Caption = 'Data Sewa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnAkun: TBitBtn
    Left = 704
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Akun'
    TabOrder = 0
    OnClick = btnAkunClick
  end
  object btnKendaraan: TBitBtn
    Left = 848
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Kendaraan'
    TabOrder = 1
    OnClick = btnKendaraanClick
  end
  object btnSewa: TBitBtn
    Left = 992
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
    Height = 545
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
        OnClick = btnTambahAkunClick
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
        DataField = 'id_akun'
        DataSource = dm.ds_akun
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
        DataField = 'nama'
        DataSource = dm.ds_akun
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
        DataField = 'email'
        DataSource = dm.ds_akun
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
        DataField = 'no_telp'
        DataSource = dm.ds_akun
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
        DataField = 'username'
        DataSource = dm.ds_akun
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
        DataField = 'password'
        DataSource = dm.ds_akun
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dbeRoleAkun: TDBEdit
        Left = 264
        Top = 183
        Width = 185
        Height = 34
        DataField = 'rl_role'
        DataSource = dm.ds_akun
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupRole
        ReadOnly = True
        TabOrder = 6
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
          Width = 64
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
      Width = 532
      Height = 25
      DataSource = dm.ds_akun
      VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbPrint, sbExport, sbPost, sbCancel, sbRefresh]
      Layout = blGlyphLeft
      ShowCaption = False
      ShowGlyph = True
      TabOrder = 3
      OnClick = nav_akunClick
    end
    object btnHapusAkun: TButton
      Left = 608
      Top = 512
      Width = 89
      Height = 25
      Caption = 'Hapus'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnHapusAkunClick
    end
  end
  object pnlKendaraan: TPanel
    Left = 0
    Top = 88
    Width = 1289
    Height = 545
    BevelOuter = bvNone
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
      object tarifKendaraan: TEdit
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
        OnClick = btnTambahKendaraanClick
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
      object dbeStatusKendaraan: TDBEdit
        Left = 264
        Top = 119
        Width = 185
        Height = 34
        DataField = 'rl_skendaraan'
        DataSource = dm.ds_kendaraan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupStatusKendaraan
        ReadOnly = True
        TabOrder = 5
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
          Width = 64
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
      Width = 546
      Height = 25
      DataSource = dm.ds_kendaraan
      VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbPrint, sbExport, sbPost, sbCancel, sbRefresh]
      Layout = blGlyphLeft
      ShowCaption = False
      ShowGlyph = True
      TabOrder = 3
      OnClick = nav_kendaraanClick
    end
    object blob: TEDBImage
      Left = 568
      Top = 32
      Width = 105
      Height = 105
      DataField = 'blob'
      DataSource = dm.ds_kendaraan
      PopupMenu = PopupMenu1
      ShrinkToFit = True
      TabOrder = 4
      ZoomToFit = False
    end
    object btnHapusKendaraan: TButton
      Left = 616
      Top = 512
      Width = 81
      Height = 25
      Caption = 'Hapus'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnHapusKendaraanClick
    end
  end
  object pnlSewa: TPanel
    Left = 0
    Top = 88
    Width = 1289
    Height = 545
    BevelOuter = bvNone
    Color = clSkyBlue
    TabOrder = 5
    object Label28: TLabel
      Left = 64
      Top = 296
      Width = 211
      Height = 34
      Caption = 'Update Status Sewa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Poppins Medium'
      Font.Style = [fsBold]
      ParentFont = False
    end
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
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'id_sewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'ID Sewa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_kendaraan'
          Title.Alignment = taCenter
          Title.Caption = 'Nomor Polisi'
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
          FieldName = 'rl_akun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nama Penyewa'
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
          FieldName = 'rl_kendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Merk Kendaran'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
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
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tgl_transaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal Sewa'
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
          FieldName = 'rl_status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Status Sewa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end>
    end
    object nav_sewa: TSMDBNavigator
      Left = 64
      Top = 232
      Width = 546
      Height = 25
      DataSource = dm.ds_sewa
      VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbPrint, sbExport, sbPost, sbCancel, sbRefresh]
      Layout = blGlyphLeft
      ShowCaption = False
      ShowGlyph = True
      TabOrder = 1
      OnClick = nav_sewaClick
    end
    object dbeStatusSewa: TDBEdit
      Left = 64
      Top = 327
      Width = 185
      Height = 34
      DataField = 'rl_status'
      DataSource = dm.ds_sewa
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupStatusSewa
      ReadOnly = True
      TabOrder = 2
    end
  end
  object btnLogout: TBitBtn
    Left = 1136
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Logout'
    TabOrder = 6
    OnClick = btnLogoutClick
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 8
    object Load1: TMenuItem
      Caption = 'Load'
      OnClick = Load1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
  object PopupRole: TPopupMenu
    Left = 480
    Top = 8
    object Admin1: TMenuItem
      Caption = 'Admin'
      OnClick = Admin1Click
    end
    object Pelanggan1: TMenuItem
      Caption = 'Pelanggan'
      OnClick = Pelanggan1Click
    end
  end
  object PopupStatusSewa: TPopupMenu
    Left = 560
    Top = 8
    object SedangDiproses1: TMenuItem
      Caption = 'Sedang Diproses'
      OnClick = SedangDiproses1Click
    end
    object Selesai1: TMenuItem
      Caption = 'Selesai'
      OnClick = Selesai1Click
    end
    object Dibatalkan1: TMenuItem
      Caption = 'Dibatalkan'
      OnClick = Dibatalkan1Click
    end
  end
  object PopupStatusKendaraan: TPopupMenu
    Left = 520
    Top = 8
    object ersedia1: TMenuItem
      Caption = 'Tersedia'
      OnClick = ersedia1Click
    end
    object idakTersedia1: TMenuItem
      Caption = 'Tidak Tersedia'
      OnClick = idakTersedia1Click
    end
  end
  object export_sewa: TmxDBGridExport
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    DBGrid = grid_sewa
    Left = 440
    Top = 56
  end
  object export_kendaraan: TmxDBGridExport
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    DBGrid = grid_kendaraan
    Left = 480
    Top = 56
  end
  object export_akun: TmxDBGridExport
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    DBGrid = grid_akun
    Left = 520
    Top = 56
  end
end
