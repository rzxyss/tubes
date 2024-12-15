unit DataModul;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  SMDBFind, SMDBFltr;

type
  Tdm = class(TDataModule)
    zq_akun: TZQuery;
    zq_kendaraan: TZQuery;
    zq_sewa: TZQuery;
    ds_akun: TDataSource;
    ds_kendaraan: TDataSource;
    ds_sewa: TDataSource;
    find_akun: TSMDBFindDialog;
    find_kendaraan: TSMDBFindDialog;
    find_sewa: TSMDBFindDialog;
    filter_akun: TSMDBFilterDialog;
    filter_kendaraan: TSMDBFilterDialog;
    filter_sewa: TSMDBFilterDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation
uses login;
{$R *.dfm}

end.
