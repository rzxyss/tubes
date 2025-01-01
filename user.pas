unit user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls, SMDBCtrl,
  DBCtrls, ComCtrls, DateUtils, EDBImage, mxExport;

type
  TfUser = class(TForm)
    bgNav: TShape;
    btnRiwayat: TBitBtn;
    btnSewa: TBitBtn;
    lblSewa: TLabel;
    Label1: TLabel;
    pnlRiwayat: TPanel;
    grid_riwayat: TSMDBGrid;
    pnlSewa: TPanel;
    AkunTambah: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    btnTambahAkun: TButton;
    dblSewaKendaraan: TDBLookupComboBox;
    tgl_sewa: TDateTimePicker;
    tgl_selesai: TDateTimePicker;
    lblRiwayat: TLabel;
    nav_riwayat: TSMDBNavigator;
    EDBImage1: TEDBImage;
    btnLogout: TBitBtn;
    export_riwayat: TmxDBGridExport;
    procedure FormShow(Sender: TObject);
    procedure btnTambahAkunClick(Sender: TObject);
    procedure btnRiwayatClick(Sender: TObject);
    procedure btnSewaClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure nav_riwayatClick(Sender: TObject; Button: TSMNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUser: TfUser;

implementation
uses login, DataModul, GlobalUnit;
{$R *.dfm}


procedure TfUser.FormShow(Sender: TObject);
begin
  dm.TabelAktif(True);
  pnlRiwayat.Visible := True;
  pnlSewa.Visible := False;
  lblRiwayat.Visible := True;
  lblSewa.Visible := False;
  try
    with dm.zq_riwayat do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM sewa WHERE id_akun = :id_akun');
      Params.ParamByName('id_akun').Value := userId;
      Open;
    end;
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

procedure TfUser.btnTambahAkunClick(Sender: TObject);
var
  selisihHari: Integer;
  kendaraanID, sewaID: string;
  tarif: Double;
begin
  selisihHari := DaysBetween(tgl_sewa.Date, tgl_selesai.Date);

  if not fLogin.zconn.Connected then
    fLogin.zconn.Connected := True;

  if not dm.zq_kendaraan.Active then
  begin
    dm.zq_kendaraan.SQL.Clear;
    dm.zq_kendaraan.SQL.Add('SELECT * FROM kendaraan');
    dm.zq_kendaraan.Open;
  end;

    if VarIsNull(dblSewaKendaraan.KeyValue) then
  begin
    ShowMessage('Silakan pilih Kendaraan terlebih dahulu.');
    Exit;
  end;


  begin
    kendaraanID := dblSewaKendaraan.KeyValue;

    ShowMessage('Kendaraan ID: ' + dblSewaKendaraan.KeyValue);
  end;

  if dm.zq_kendaraan.Locate('id_kendaraan', dblSewaKendaraan.KeyValue, []) then
  begin
    dm.zq_tarif.SQL.Clear;
    dm.zq_tarif.SQL.Add('SELECT tarif FROM kendaraan WHERE id_kendaraan = :kend_id');
    dm.zq_tarif.ParamByName('kend_id').AsString := kendaraanID;
    dm.zq_tarif.Open;

    if dm.zq_kendaraan.IsEmpty then
    begin
      ShowMessage('Data kendaraan tidak ditemukan.');
      Exit;
    end;
    sewaID := FormatDateTime('YYYY-MM-DD', tgl_sewa.Date) + '-' + kendaraanID;

    tarif := dm.zq_kendaraan.FieldByName('tarif').AsFloat * selisihHari;

    dm.zq_sewa.SQL.Clear;
    dm.zq_sewa.SQL.Add(
      'INSERT INTO sewa (id_sewa, id_kendaraan, id_akun, tgl_transaksi, tarif, lama_sewa) ' +
      'VALUES (:id_sewa, :id_kendaraan, :id_akun, :tgl_sewa, :tarif, :durasi)'
    );
    dm.zq_sewa.Params.ParamByName('id_sewa').AsString := sewaID;
    dm.zq_sewa.Params.ParamByName('id_kendaraan').AsString := kendaraanID;
    dm.zq_sewa.Params.ParamByName('id_akun').AsString := userId;
    dm.zq_sewa.Params.ParamByName('tgl_sewa').AsDate := tgl_sewa.Date;
    dm.zq_sewa.Params.ParamByName('tarif').AsFloat := tarif;
    dm.zq_sewa.Params.ParamByName('durasi').AsInteger := selisihHari;
  end
  else
  begin
    ShowMessage('Kendaraan dengan ID: ' + VarToStr(dblSewaKendaraan.KeyValue) + ' Tidak ditemukan');
  end;



  try
    dm.zq_sewa.ExecSQL;
    ShowMessage('Berhasil menyewa kendaraan!');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;

  dm.zq_sewa.Close;
  dm.zq_sewa.SQL.Clear;
end;

procedure TfUser.btnRiwayatClick(Sender: TObject);
begin
  pnlRiwayat.Visible := True;
  pnlSewa.Visible := False;
  lblRiwayat.Visible := True;
  lblSewa.Visible := False;
end;

procedure TfUser.btnSewaClick(Sender: TObject);
begin
  pnlRiwayat.Visible := False;
  pnlSewa.Visible := True;
  lblRiwayat.Visible := False;
  lblSewa.Visible := True;
end;

procedure TfUser.btnLogoutClick(Sender: TObject);
begin
  userId := '';
  roleId := 0;
  username := '';
  fLogin.Show;
  Self.Hide;
end;

procedure TfUser.nav_riwayatClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbPrint: dm.rpt_riwayat.ShowReport;
    sbFind: dm.find_riwayat.Execute;
    sbFilter: dm.filter_riwayat.Execute;
    sbExport: export_riwayat.Select;
  end;
end;

end.
