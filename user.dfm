object fUser: TfUser
  Left = 356
  Top = 87
  Width = 1305
  Height = 675
  Caption = 'Pull Rental'
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
  object lblSewa: TLabel
    Left = 208
    Top = 24
    Width = 264
    Height = 32
    Caption = 'Formulir Penyewaan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 174
    Height = 74
    Caption = 'Selamat Datang'#13#10'Di Epull Rental'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Poppins SemiBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRiwayat: TLabel
    Left = 208
    Top = 24
    Width = 267
    Height = 32
    Caption = 'Riwayat Penyewaan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnRiwayat: TBitBtn
    Left = 992
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Riwayat Sewa'
    TabOrder = 0
    OnClick = btnRiwayatClick
  end
  object btnSewa: TBitBtn
    Left = 1136
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Sewa Kendaraan'
    TabOrder = 1
    OnClick = btnSewaClick
  end
  object pnlRiwayat: TPanel
    Left = 0
    Top = 88
    Width = 1273
    Height = 529
    BevelOuter = bvNone
    TabOrder = 2
    object grid_riwayat: TSMDBGrid
      Left = 16
      Top = 32
      Width = 1297
      Height = 489
      DataSource = dm.ds_riwayat
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
          Title.Caption = 'Sewa ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Poppins'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rl_jenis_kendaraan'
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rl_merk_kendaraan'
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rl_model_kendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Modal Kendaraan'
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
          FieldName = 'lama_sewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Durasi Sewa'
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
        end>
    end
  end
  object pnlSewa: TPanel
    Left = 0
    Top = 88
    Width = 1289
    Height = 537
    BevelOuter = bvNone
    TabOrder = 3
    object AkunTambah: TGroupBox
      Left = 536
      Top = 32
      Width = 217
      Height = 289
      Caption = 'Form Sewa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Poppins'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 96
        Width = 114
        Height = 28
        Caption = 'Tanggal Sewa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 160
        Width = 127
        Height = 28
        Caption = 'Tanggal Selesai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 32
        Width = 90
        Height = 28
        Caption = 'Kendaraan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
      end
      object btnTambahAkun: TButton
        Left = 40
        Top = 232
        Width = 129
        Height = 33
        Caption = 'Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnTambahAkunClick
      end
      object dblSewaKendaraan: TDBLookupComboBox
        Left = 16
        Top = 56
        Width = 185
        Height = 34
        DataField = 'rl_kendaraan'
        DataSource = dm.ds_sewa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Poppins'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 1
      end
    end
    object tgl_sewa: TDateTimePicker
      Left = 552
      Top = 152
      Width = 186
      Height = 33
      Date = 45645.490043576390000000
      Time = 45645.490043576390000000
      TabOrder = 1
    end
    object tgl_selesai: TDateTimePicker
      Left = 552
      Top = 216
      Width = 186
      Height = 33
      Date = 45645.490043576390000000
      Time = 45645.490043576390000000
      TabOrder = 2
    end
  end
end
