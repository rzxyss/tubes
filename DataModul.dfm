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
  end
  object zq_kendaraan: TZQuery
    Connection = fLogin.zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM kendaraan ORDER BY id_kendaraan')
    Params = <>
    Left = 72
    Top = 8
  end
  object zq_sewa: TZQuery
    Connection = fLogin.zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM sewa ORDER BY id_sewa')
    Params = <>
    Left = 144
    Top = 8
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
end
