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
    zq_role: TZQuery;
    zq_status_kendaraan: TZQuery;
    zq_status_sewa: TZQuery;
    zq_akunid_akun: TStringField;
    zq_akunnama: TStringField;
    zq_akunemail: TStringField;
    zq_akunno_telp: TStringField;
    zq_akunusername: TStringField;
    zq_akunpassword: TStringField;
    zq_akunid_role: TIntegerField;
    zq_akunrl_status: TStringField;
    zq_kendaraanid_kendaraan: TStringField;
    zq_kendaraanjenis_kendaraan: TStringField;
    zq_kendaraanmerk_kendaraan: TStringField;
    zq_kendaraanmodel_kendaraan: TStringField;
    zq_kendaraantarif: TStringField;
    zq_kendaraanid_status: TIntegerField;
    zq_kendaraanrl_skendaraan: TStringField;
    zq_sewaid_sewa: TStringField;
    zq_sewaid_kendaraan: TStringField;
    zq_sewaid_akun: TStringField;
    zq_sewatgl_transaksi: TDateField;
    zq_sewatarif: TStringField;
    zq_sewalama_sewa: TIntegerField;
    zq_sewaid_status: TIntegerField;
    zq_sewarl_akun: TStringField;
    zq_sewarl_kendaraan: TStringField;
    zq_sewarl_status: TStringField;
    zq_login: TZQuery;
    zq_user: TZQuery;
    ds_user: TDataSource;
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
