object fUser: TfUser
  Left = 291
  Top = 168
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
    Left = 848
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Riwayat Sewa'
    TabOrder = 0
    OnClick = btnRiwayatClick
  end
  object btnSewa: TBitBtn
    Left = 992
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
      Height = 473
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
    object nav_riwayat: TSMDBNavigator
      Left = 16
      Top = 504
      Width = 414
      Height = 25
      DataSource = dm.ds_riwayat
      VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbFilter, sbFind, sbPrint, sbExport, sbRefresh]
      Layout = blGlyphLeft
      ShowCaption = False
      ShowGlyph = True
      TabOrder = 1
      OnClick = nav_riwayatClick
    end
  end
  object pnlSewa: TPanel
    Left = 0
    Top = 88
    Width = 1289
    Height = 545
    BevelOuter = bvNone
    TabOrder = 3
    object AkunTambah: TGroupBox
      Left = 290
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
      Left = 305
      Top = 152
      Width = 186
      Height = 33
      Date = 45645.490043576390000000
      Time = 45645.490043576390000000
      TabOrder = 1
    end
    object tgl_selesai: TDateTimePicker
      Left = 305
      Top = 216
      Width = 186
      Height = 33
      Date = 45645.490043576390000000
      Time = 45645.490043576390000000
      TabOrder = 2
    end
    object EDBImage1: TEDBImage
      Left = 606
      Top = 48
      Width = 393
      Height = 273
      DataField = 'blob'
      DataSource = dm.ds_kendaraan
      ShrinkToFit = True
      TabOrder = 3
      ZoomToFit = False
    end
  end
  object btnLogout: TBitBtn
    Left = 1136
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Logout'
    TabOrder = 4
    OnClick = btnLogoutClick
  end
  object export_riwayat: TmxDBGridExport
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
    DBGrid = grid_riwayat
    Left = 496
    Top = 8
  end
end
