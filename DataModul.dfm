object dm: Tdm
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 482
  Width = 720
  object zq_akun: TZQuery
    Connection = fLogin.zconn
    Active = True
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
    Active = True
    SQL.Strings = (
      'SELECT * FROM role')
    Params = <>
    Left = 616
    Top = 128
  end
  object zq_status_kendaraan: TZQuery
    Connection = fLogin.zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM status_kendaraan')
    Params = <>
    Left = 616
    Top = 8
  end
  object zq_status_sewa: TZQuery
    Connection = fLogin.zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM status_sewa')
    Params = <>
    Left = 616
    Top = 64
  end
  object zq_login: TZQuery
    Connection = fLogin.zconn
    Active = True
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
    Active = True
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
      KeyFields = 'id_sewa'
      Lookup = True
    end
  end
  object ds_riwayat: TDataSource
    DataSet = zq_riwayat
    Left = 304
    Top = 64
  end
end
