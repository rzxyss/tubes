object dm: Tdm
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 482
  Width = 720
  object zq_akun: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM akun ORDER BY id_akun')
    Params = <>
    Left = 8
    Top = 8
    object zq_akunid_akun: TStringField
      FieldName = 'id_akun'
      Required = True
      Size = 16
    end
    object zq_akunnama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 50
    end
    object zq_akunemail: TStringField
      FieldName = 'email'
      Required = True
      Size = 50
    end
    object zq_akunno_telp: TStringField
      FieldName = 'no_telp'
      Required = True
      Size = 13
    end
    object zq_akunusername: TStringField
      FieldName = 'username'
      Required = True
      Size = 50
    end
    object zq_akunpassword: TStringField
      FieldName = 'password'
      Required = True
      Size = 50
    end
    object zq_akunid_role: TIntegerField
      FieldName = 'id_role'
      Required = True
    end
    object zq_akunrl_status: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_role'
      LookupDataSet = zq_role
      LookupKeyFields = 'id_role'
      LookupResultField = 'role'
      KeyFields = 'id_role'
      Lookup = True
    end
  end
  object zq_kendaraan: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM kendaraan ORDER BY id_kendaraan')
    Params = <>
    Left = 72
    Top = 8
    object zq_kendaraanid_kendaraan: TStringField
      FieldName = 'id_kendaraan'
      Required = True
      Size = 12
    end
    object zq_kendaraanjenis_kendaraan: TStringField
      FieldName = 'jenis_kendaraan'
      Required = True
      Size = 50
    end
    object zq_kendaraanmerk_kendaraan: TStringField
      FieldName = 'merk_kendaraan'
      Required = True
      Size = 50
    end
    object zq_kendaraanmodel_kendaraan: TStringField
      FieldName = 'model_kendaraan'
      Required = True
      Size = 50
    end
    object zq_kendaraantarif: TFloatField
      FieldName = 'tarif'
      Required = True
    end
    object zq_kendaraanid_status: TIntegerField
      FieldName = 'id_status'
    end
    object zq_kendaraanrl_skendaraan: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_skendaraan'
      LookupDataSet = zq_status_kendaraan
      LookupKeyFields = 'id_status'
      LookupResultField = 'status'
      KeyFields = 'id_status'
      Lookup = True
    end
    object zq_kendaraanblob: TBlobField
      FieldName = 'blob'
    end
  end
  object zq_sewa: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM sewa ORDER BY id_sewa')
    Params = <>
    Left = 144
    Top = 8
    object zq_sewaid_sewa: TStringField
      FieldName = 'id_sewa'
      Required = True
      Size = 50
    end
    object zq_sewaid_kendaraan: TStringField
      FieldName = 'id_kendaraan'
      Required = True
      Size = 10
    end
    object zq_sewaid_akun: TStringField
      FieldName = 'id_akun'
      Required = True
      Size = 16
    end
    object zq_sewatgl_transaksi: TDateField
      FieldName = 'tgl_transaksi'
      Required = True
    end
    object zq_sewatarif: TFloatField
      FieldName = 'tarif'
      Required = True
    end
    object zq_sewalama_sewa: TIntegerField
      FieldName = 'lama_sewa'
      Required = True
    end
    object zq_sewaid_status: TIntegerField
      FieldName = 'id_status'
    end
    object zq_sewarl_kendaraan: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_kendaraan'
      LookupDataSet = zq_kendaraan
      LookupKeyFields = 'id_kendaraan'
      LookupResultField = 'model_kendaraan'
      KeyFields = 'id_kendaraan'
      Lookup = True
    end
    object zq_sewarl_status: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_status'
      LookupDataSet = zq_status_sewa
      LookupKeyFields = 'id_status'
      LookupResultField = 'status'
      KeyFields = 'id_status'
      Lookup = True
    end
    object zq_sewarl_akun: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_akun'
      LookupDataSet = zq_akun
      LookupKeyFields = 'id_akun'
      LookupResultField = 'nama'
      KeyFields = 'id_akun'
      Lookup = True
    end
    object zq_sewates_rl_kendaraan: TStringField
      FieldKind = fkLookup
      FieldName = 'tes_rl_kendaraan'
      LookupDataSet = zq_kendaraan
      LookupKeyFields = 'id_kendaraan'
      LookupResultField = 'id_kendaraan'
      KeyFields = 'id_kendaraan'
      Lookup = True
    end
  end
  object ds_akun: TDataSource
    DataSet = zq_akun
    Left = 8
    Top = 64
  end
  object ds_kendaraan: TDataSource
    DataSet = zq_kendaraan
    Left = 72
    Top = 64
  end
  object ds_sewa: TDataSource
    DataSet = zq_sewa
    Left = 144
    Top = 64
  end
  object find_akun: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds_akun
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 8
    Top = 120
  end
  object find_kendaraan: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds_kendaraan
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 72
    Top = 120
  end
  object find_sewa: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds_sewa
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 144
    Top = 120
  end
  object filter_akun: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zq_akun
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 8
    Top = 176
  end
  object filter_kendaraan: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zq_kendaraan
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 72
    Top = 176
  end
  object filter_sewa: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zq_sewa
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 144
    Top = 176
  end
  object zq_role: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM role')
    Params = <>
    Left = 616
    Top = 128
  end
  object zq_status_kendaraan: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM status_kendaraan')
    Params = <>
    Left = 616
    Top = 8
  end
  object zq_status_sewa: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM status_sewa')
    Params = <>
    Left = 616
    Top = 64
  end
  object zq_login: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM akun')
    Params = <>
    Left = 616
    Top = 184
  end
  object zq_user: TZQuery
    Connection = fLogin.zconn
    Params = <>
    Left = 224
    Top = 8
  end
  object ds_user: TDataSource
    DataSet = zq_user
    Left = 224
    Top = 64
  end
  object zq_tarif: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM role')
    Params = <>
    Left = 616
    Top = 240
  end
  object zq_riwayat: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM sewa')
    Params = <>
    Left = 304
    Top = 8
    object zq_riwayatid_sewa: TStringField
      FieldName = 'id_sewa'
      Required = True
      Size = 50
    end
    object zq_riwayatid_kendaraan: TStringField
      FieldName = 'id_kendaraan'
      Required = True
      Size = 10
    end
    object zq_riwayatid_akun: TStringField
      FieldName = 'id_akun'
      Required = True
      Size = 16
    end
    object zq_riwayattgl_transaksi: TDateField
      FieldName = 'tgl_transaksi'
      Required = True
    end
    object zq_riwayattarif: TFloatField
      FieldName = 'tarif'
      Required = True
    end
    object zq_riwayatlama_sewa: TIntegerField
      FieldName = 'lama_sewa'
      Required = True
    end
    object zq_riwayatid_status: TIntegerField
      FieldName = 'id_status'
    end
    object zq_riwayatrl_jenis_kendaraan: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_jenis_kendaraan'
      LookupDataSet = zq_kendaraan
      LookupKeyFields = 'id_kendaraan'
      LookupResultField = 'jenis_kendaraan'
      KeyFields = 'id_kendaraan'
      Lookup = True
    end
    object zq_riwayatrl_merk_kendaraan: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_merk_kendaraan'
      LookupDataSet = zq_kendaraan
      LookupKeyFields = 'id_kendaraan'
      LookupResultField = 'merk_kendaraan'
      KeyFields = 'id_kendaraan'
      Lookup = True
    end
    object zq_riwayatrl_model_kendaraan: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_model_kendaraan'
      LookupDataSet = zq_kendaraan
      LookupKeyFields = 'id_kendaraan'
      LookupResultField = 'model_kendaraan'
      KeyFields = 'id_kendaraan'
      Lookup = True
    end
    object zq_riwayatrl_status_sewa: TStringField
      FieldKind = fkLookup
      FieldName = 'rl_status_sewa'
      LookupDataSet = zq_status_sewa
      LookupKeyFields = 'id_status'
      LookupResultField = 'status'
      KeyFields = 'id_status'
      Lookup = True
    end
  end
  object ds_riwayat: TDataSource
    DataSet = zq_riwayat
    Left = 304
    Top = 64
  end
  object rpt_akun: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.486946296300000000
    ReportOptions.LastChange = 45658.504395532410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 232
    Datasets = <
      item
        DataSet = db_rptakun
        DataSetName = 'db_rptakun'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Width = 793.701300000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Akun')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Email')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nomor Telepon')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 521.575140000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Username')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 680.315400000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Role')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 793.701300000000000000
        DataSet = db_rptakun
        DataSetName = 'db_rptakun'
        RowCount = 0
        object db_rptakunid_akun: TfrxMemoView
          Left = 15.118120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_akun'
          DataSet = db_rptakun
          DataSetName = 'db_rptakun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptakun."id_akun"]')
          ParentFont = False
        end
        object db_rptakunnama: TfrxMemoView
          Left = 139.842610000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = db_rptakun
          DataSetName = 'db_rptakun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptakun."nama"]')
          ParentFont = False
        end
        object db_rptakunemail: TfrxMemoView
          Left = 264.567100000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'email'
          DataSet = db_rptakun
          DataSetName = 'db_rptakun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptakun."email"]')
          ParentFont = False
        end
        object db_rptakunno_telp: TfrxMemoView
          Left = 415.748300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_telp'
          DataSet = db_rptakun
          DataSetName = 'db_rptakun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptakun."no_telp"]')
          ParentFont = False
        end
        object db_rptakunusername: TfrxMemoView
          Left = 521.575140000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'username'
          DataSet = db_rptakun
          DataSetName = 'db_rptakun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptakun."username"]')
          ParentFont = False
        end
        object db_rptakunrl_role: TfrxMemoView
          Left = 680.315400000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_role'
          DataSet = db_rptakun
          DataSetName = 'db_rptakun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptakun."rl_role"]')
          ParentFont = False
        end
      end
    end
  end
  object db_rptakun: TfrxDBDataset
    UserName = 'db_rptakun'
    CloseDataSource = False
    DataSet = zq_akun
    Left = 8
    Top = 288
  end
  object db_rptkendaraan: TfrxDBDataset
    UserName = 'db_rptkendaraan'
    CloseDataSource = False
    DataSet = zq_kendaraan
    Left = 72
    Top = 288
  end
  object rpt_kendaraan: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.486946296300000000
    ReportOptions.LastChange = 45658.504225625000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 232
    Datasets = <
      item
        DataSet = db_rptkendaraan
        DataSetName = 'db_rptkendaraan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Width = 793.701300000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nomor Polisi')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 234.330860000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Merk')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Model')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 536.693260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 616.063390000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 793.701300000000000000
        DataSet = db_rptkendaraan
        DataSetName = 'db_rptkendaraan'
        RowCount = 0
        object db_rptkendaraanid_kendaraan: TfrxMemoView
          Left = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_kendaraan'
          DataSet = db_rptkendaraan
          DataSetName = 'db_rptkendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptkendaraan."id_kendaraan"]')
          ParentFont = False
        end
        object db_rptkendaraanjenis_kendaraan: TfrxMemoView
          Left = 109.606370000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_kendaraan'
          DataSet = db_rptkendaraan
          DataSetName = 'db_rptkendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptkendaraan."jenis_kendaraan"]')
          ParentFont = False
        end
        object db_rptkendaraanmerk_kendaraan: TfrxMemoView
          Left = 234.330860000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'merk_kendaraan'
          DataSet = db_rptkendaraan
          DataSetName = 'db_rptkendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptkendaraan."merk_kendaraan"]')
          ParentFont = False
        end
        object db_rptkendaraanmodel_kendaraan: TfrxMemoView
          Left = 415.748300000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'model_kendaraan'
          DataSet = db_rptkendaraan
          DataSetName = 'db_rptkendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptkendaraan."model_kendaraan"]')
          ParentFont = False
        end
        object db_rptkendaraantarif: TfrxMemoView
          Left = 536.693260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tarif'
          DataSet = db_rptkendaraan
          DataSetName = 'db_rptkendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptkendaraan."tarif"]')
          ParentFont = False
        end
        object db_rptkendaraanrl_skendaraan: TfrxMemoView
          Left = 616.063390000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_skendaraan'
          DataSet = db_rptkendaraan
          DataSetName = 'db_rptkendaraan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptkendaraan."rl_skendaraan"]')
          ParentFont = False
        end
      end
    end
  end
  object db_rptsewa: TfrxDBDataset
    UserName = 'db_rptsewa'
    CloseDataSource = False
    DataSet = zq_sewa
    Left = 144
    Top = 288
  end
  object rpt_sewa: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.486946296300000000
    ReportOptions.LastChange = 45658.511751354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 232
    Datasets = <
      item
        DataSet = db_rptsewa
        DataSetName = 'db_rptsewa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Width = 793.701300000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Penyewaan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nomor Sewa')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Merk')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nopol')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 306.141930000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Penyewa')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 464.882190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Sewa')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Lama Sewa')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 642.520100000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status Sewa')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 793.701300000000000000
        DataSet = db_rptsewa
        DataSetName = 'db_rptsewa'
        RowCount = 0
        object db_rptsewaid_sewa: TfrxMemoView
          Left = 15.118120000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sewa'
          DataSet = db_rptsewa
          DataSetName = 'db_rptsewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptsewa."id_sewa"]')
          ParentFont = False
        end
        object db_rptsewaid_kendaraan: TfrxMemoView
          Left = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_kendaraan'
          DataSet = db_rptsewa
          DataSetName = 'db_rptsewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptsewa."id_kendaraan"]')
          ParentFont = False
        end
        object db_rptsewarl_kendaraan: TfrxMemoView
          Left = 143.622140000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_kendaraan'
          DataSet = db_rptsewa
          DataSetName = 'db_rptsewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptsewa."rl_kendaraan"]')
          ParentFont = False
        end
        object db_rptsewalama_sewa: TfrxMemoView
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'lama_sewa'
          DataSet = db_rptsewa
          DataSetName = 'db_rptsewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptsewa."lama_sewa"]')
          ParentFont = False
        end
        object db_rptsewatgl_transaksi: TfrxMemoView
          Left = 464.882190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_transaksi'
          DataSet = db_rptsewa
          DataSetName = 'db_rptsewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptsewa."tgl_transaksi"]')
          ParentFont = False
        end
        object db_rptsewarl_akun: TfrxMemoView
          Left = 306.141930000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_akun'
          DataSet = db_rptsewa
          DataSetName = 'db_rptsewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptsewa."rl_akun"]')
          ParentFont = False
        end
        object db_rptsewarl_status: TfrxMemoView
          Left = 642.520100000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_status'
          DataSet = db_rptsewa
          DataSetName = 'db_rptsewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptsewa."rl_status"]')
          ParentFont = False
        end
      end
    end
  end
  object db_rptriwayat: TfrxDBDataset
    UserName = 'db_rptriwayat'
    CloseDataSource = False
    DataSet = zq_riwayat
    Left = 304
    Top = 288
  end
  object rpt_riwayat: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.486946296300000000
    ReportOptions.LastChange = 45658.518585486110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 232
    Datasets = <
      item
        DataSet = db_rptriwayat
        DataSetName = 'db_rptriwayat'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Width = 793.701300000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Riyawat Penyewaan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nomor Sewa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Merk Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Model Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 570.709030000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Lama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 612.283860000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 691.653990000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'poppins'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 793.701300000000000000
        DataSet = db_rptriwayat
        DataSetName = 'db_rptriwayat'
        RowCount = 0
        object db_rptriwayatid_sewa: TfrxMemoView
          Left = 15.118120000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sewa'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."id_sewa"]')
          ParentFont = False
        end
        object db_rptriwayatrl_jenis_kendaraan: TfrxMemoView
          Left = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_jenis_kendaraan'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."rl_jenis_kendaraan"]')
          ParentFont = False
        end
        object db_rptriwayatrl_merk_kendaraan: TfrxMemoView
          Left = 264.567100000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_merk_kendaraan'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."rl_merk_kendaraan"]')
          ParentFont = False
        end
        object db_rptriwayatrl_model_kendaraan: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_model_kendaraan'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."rl_model_kendaraan"]')
          ParentFont = False
        end
        object db_rptriwayattgl_transaksi: TfrxMemoView
          Left = 491.338900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_transaksi'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."tgl_transaksi"]')
          ParentFont = False
        end
        object db_rptriwayatlama_sewa: TfrxMemoView
          Left = 570.709030000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'lama_sewa'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."lama_sewa"]')
          ParentFont = False
        end
        object db_rptriwayattarif: TfrxMemoView
          Left = 612.283860000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tarif'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."tarif"]')
          ParentFont = False
        end
        object db_rptriwayatrl_status_sewa: TfrxMemoView
          Left = 691.653990000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rl_status_sewa'
          DataSet = db_rptriwayat
          DataSetName = 'db_rptriwayat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_rptriwayat."rl_status_sewa"]')
          ParentFont = False
        end
      end
    end
  end
  object find_riwayat: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds_riwayat
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 304
    Top = 120
  end
  object filter_riwayat: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zq_riwayat
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 304
    Top = 176
  end
end
