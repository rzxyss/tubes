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
    zq_kendaraanid_status: TIntegerField;
    zq_kendaraanrl_skendaraan: TStringField;
    zq_sewarl_akun: TStringField;
    zq_sewarl_status: TStringField;
    zq_login: TZQuery;
    zq_user: TZQuery;
    ds_user: TDataSource;
    zq_sewarl_kendaraan: TStringField;
    zq_sewaid_sewa: TStringField;
    zq_sewaid_kendaraan: TStringField;
    zq_sewaid_akun: TStringField;
    zq_sewatgl_transaksi: TDateField;
    zq_sewalama_sewa: TIntegerField;
    zq_sewaid_status: TIntegerField;
    zq_sewates_rl_kendaraan: TStringField;
    zq_tarif: TZQuery;
    zq_sewatarif: TFloatField;
    zq_kendaraantarif: TFloatField;
    zq_riwayat: TZQuery;
    ds_riwayat: TDataSource;
    zq_riwayatid_sewa: TStringField;
    zq_riwayatid_kendaraan: TStringField;
    zq_riwayatid_akun: TStringField;
    zq_riwayattgl_transaksi: TDateField;
    zq_riwayattarif: TFloatField;
    zq_riwayatlama_sewa: TIntegerField;
    zq_riwayatid_status: TIntegerField;
    zq_riwayatrl_jenis_kendaraan: TStringField;
    zq_riwayatrl_merk_kendaraan: TStringField;
    zq_riwayatrl_model_kendaraan: TStringField;
    zq_riwayatrl_status_sewa: TStringField;
    zq_kendaraanblob: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TabelAktif(b: Boolean);
  end;

var
  dm: Tdm;

implementation
uses login;
{$R *.dfm}

procedure Tdm.TabelAktif(b: Boolean);
begin
  zq_kendaraan.Active := b;
  zq_status_kendaraan.Active := b;
  zq_akun.Active := b;
  zq_sewa.Active := b;
  zq_riwayat.Active := b;
  zq_status_sewa.Active := b;
  zq_role.Active := b;
  zq_login.Active := b;
  zq_tarif.Active := b;
end;

end.
