unit admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, SMDBGrid, ComCtrls, XPMan,
  Buttons, Mask, DBCtrls, SMDBCtrl, Menus, EDBImage, DB, mxExport;

type
  TfAdmin = class(TForm)
    btnAkun: TBitBtn;
    btnKendaraan: TBitBtn;
    btnSewa: TBitBtn;
    bgNav: TShape;
    Label1: TLabel;
    pnlAkun: TPanel;
    AkunTambah: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    nikAkun: TEdit;
    namaAkun: TEdit;
    emailAkun: TEdit;
    telpAkun: TEdit;
    usernameAkun: TEdit;
    passwordAkun: TEdit;
    btnTambahAkun: TButton;
    AkunEdit: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dbeNikAkun: TDBEdit;
    dbeNamaAkun: TDBEdit;
    dbeEmailAkun: TDBEdit;
    dbeTelpAkun: TDBEdit;
    dbeUsernameAkun: TDBEdit;
    dbePasswordAkun: TDBEdit;
    grid_akun: TSMDBGrid;
    pnlKendaraan: TPanel;
    KendaraanTambah: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    nopolKendaran: TEdit;
    jenisKendaraan: TEdit;
    merekKendaraan: TEdit;
    modelKendaraan: TEdit;
    tarifKendaraan: TEdit;
    btnTambahKendaraan: TButton;
    KendaraanEdit: TGroupBox;
    dbeNopolKendaraan: TDBEdit;
    dbeJenisKendaraan: TDBEdit;
    dbeMerekKendaraan: TDBEdit;
    dbeModelKendaraan: TDBEdit;
    dbeTarifKendaraan: TDBEdit;
    grid_kendaraan: TSMDBGrid;
    nav_kendaraan: TSMDBNavigator;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    pnlSewa: TPanel;
    grid_sewa: TSMDBGrid;
    nav_sewa: TSMDBNavigator;
    dblRoleAkun: TDBLookupComboBox;
    dblStatusKendaraan: TDBLookupComboBox;
    nav_akun: TSMDBNavigator;
    lblAkun: TLabel;
    lblKendaraan: TLabel;
    lblSewa: TLabel;
    Label28: TLabel;
    blob: TEDBImage;
    PopupMenu1: TPopupMenu;
    Load1: TMenuItem;
    Hapus1: TMenuItem;
    dbeRoleAkun: TDBEdit;
    PopupRole: TPopupMenu;
    Admin1: TMenuItem;
    Pelanggan1: TMenuItem;
    dbeStatusKendaraan: TDBEdit;
    PopupStatusSewa: TPopupMenu;
    SedangDiproses1: TMenuItem;
    Selesai1: TMenuItem;
    Dibatalkan1: TMenuItem;
    dbeStatusSewa: TDBEdit;
    PopupStatusKendaraan: TPopupMenu;
    ersedia1: TMenuItem;
    idakTersedia1: TMenuItem;
    btnLogout: TBitBtn;
    export_sewa: TmxDBGridExport;
    export_kendaraan: TmxDBGridExport;
    export_akun: TmxDBGridExport;
    btnHapusKendaraan: TButton;
    btnHapusAkun: TButton;
    procedure btnAkunClick(Sender: TObject);
    procedure btnKendaraanClick(Sender: TObject);
    procedure btnSewaClick(Sender: TObject);
    procedure btnTambahAkunClick(Sender: TObject);
    procedure btnTambahKendaraanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Load1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure Admin1Click(Sender: TObject);
    procedure Pelanggan1Click(Sender: TObject);
    procedure SedangDiproses1Click(Sender: TObject);
    procedure Selesai1Click(Sender: TObject);
    procedure Dibatalkan1Click(Sender: TObject);
    procedure ersedia1Click(Sender: TObject);
    procedure idakTersedia1Click(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure nav_sewaClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure nav_kendaraanClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure nav_akunClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure btnHapusKendaraanClick(Sender: TObject);
    procedure btnHapusAkunClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdmin: TfAdmin;

implementation
uses DataModul, login, myLib_Blob, GlobalUnit;
{$R *.dfm}

procedure TfAdmin.btnAkunClick(Sender: TObject);
begin
  pnlAkun.Visible := True;
  pnlKendaraan.Visible := False;
  pnlSewa.Visible := False;
  lblAkun.Visible := True;
  lblKendaraan.Visible := False;
  lblSewa.Visible := False;
end;

procedure TfAdmin.btnKendaraanClick(Sender: TObject);
begin
  pnlAkun.Visible := False;
  pnlKendaraan.Visible := True;
  pnlSewa.Visible := False;
  lblAkun.Visible := False;
  lblKendaraan.Visible := True;
  lblSewa.Visible := False;
end;

procedure TfAdmin.btnSewaClick(Sender: TObject);
begin
  pnlAkun.Visible := False;
  pnlKendaraan.Visible := False;
  pnlSewa.Visible := True;
  lblAkun.Visible := False;
  lblKendaraan.Visible := False;
  lblSewa.Visible := True;
end;

procedure TfAdmin.btnTambahAkunClick(Sender: TObject);
var
  roleID: Integer;

begin
  if not fLogin.zconn.Connected then
    fLogin.zconn.Connected := True;

  if not dm.zq_role.Active then
  begin
    dm.zq_role.SQL.Clear;
    dm.zq_role.SQL.Add('SELECT * FROM role');
    dm.zq_role.Open;
  end;

    if VarIsNull(dblRoleAkun.KeyValue) then
  begin
    ShowMessage('Silakan pilih Role terlebih dahulu.');
    Exit;
  end;


  begin
    roleID := dblRoleAkun.KeyValue;

    ShowMessage('Role ID: ' + IntToStr(roleID));
  end;

    if dm.zq_role.Locate('id_role', dblRoleAkun.KeyValue, []) then
  begin
    dm.zq_akun.SQL.Clear;
    dm.zq_akun.SQL.Add(
      'INSERT INTO akun (id_akun, nama, email, no_telp, username, password, id_role) ' +
      'VALUES (:nik, :nama, :email, :telp, :username, :password, :role)'
    );
    dm.zq_akun.Params.ParamByName('nik').AsString := nikAkun.Text;
    dm.zq_akun.Params.ParamByName('nama').AsString := namaAkun.Text;
    dm.zq_akun.Params.ParamByName('email').AsString := emailAkun.Text;
    dm.zq_akun.Params.ParamByName('telp').AsString := telpAkun.Text;
    dm.zq_akun.Params.ParamByName('username').AsString := usernameAkun.Text;
    dm.zq_akun.Params.ParamByName('password').AsString := passwordAkun.Text;
    dm.zq_akun.Params.ParamByName('role').AsInteger := roleID;
   end
  else
  begin
    ShowMessage('Role dengan ID: ' + VarToStr(dblRoleAkun.KeyValue) + ' Tidak ditemukan');
  end;



  try
    dm.zq_akun.ExecSQL;
    ShowMessage('Akun berhasil ditambahkan!');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;

  dm.zq_akun.Close;
  dm.zq_akun.SQL.Clear;
  dm.zq_akun.SQL.Add('SELECT * FROM akun');
  dm.zq_akun.Open;

  nikAkun.Clear;
  namaAkun.Clear;
  emailAkun.Clear;
  telpAkun.Clear;
  usernameAkun.Clear;
  passwordAkun.Clear;

end;

procedure TfAdmin.btnTambahKendaraanClick(Sender: TObject);
var
  statusK: Integer;

begin
  if not fLogin.zconn.Connected then
    fLogin.zconn.Connected := True;

  if not dm.zq_status_kendaraan.Active then
  begin
    dm.zq_status_kendaraan.SQL.Clear;
    dm.zq_status_kendaraan.SQL.Add('SELECT * FROM status_kendaraan');
    dm.zq_status_kendaraan.Open;
  end;

    if VarIsNull(dblStatusKendaraan.KeyValue) then
  begin
    ShowMessage('Silakan pilih Status terlebih dahulu.');
    Exit;
  end;


  begin
    statusK := dblStatusKendaraan.KeyValue;

    ShowMessage('Status ID: ' + IntToStr(statusK));
  end;

    if dm.zq_status_kendaraan.Locate('id_status', dblStatusKendaraan.KeyValue, []) then
  begin
    dm.zq_kendaraan.SQL.Clear;
    dm.zq_kendaraan.SQL.Add(
      'INSERT INTO kendaraan (id_kendaraan, jenis_kendaraan, merk_kendaraan, model_kendaraan, tarif, id_status) ' +
      'VALUES (:nopol, :jenis, :merk, :model, :tarif, :status)'
    );
    dm.zq_kendaraan.Params.ParamByName('nopol').AsString := nopolKendaran.Text;
    dm.zq_kendaraan.Params.ParamByName('jenis').AsString := jenisKendaraan.Text;
    dm.zq_kendaraan.Params.ParamByName('merk').AsString := merekKendaraan.Text;
    dm.zq_kendaraan.Params.ParamByName('model').AsString := modelKendaraan.Text;
    dm.zq_kendaraan.Params.ParamByName('tarif').AsString := tarifKendaraan.Text;
    dm.zq_kendaraan.Params.ParamByName('status').AsInteger := statusK;
   end
  else
  begin
    ShowMessage('Status dengan ID: ' + VarToStr(dblStatusKendaraan.KeyValue) + ' Tidak ditemukan');
  end;



  try
    dm.zq_kendaraan.ExecSQL;
    ShowMessage('Kendaraan berhasil ditambahkan!');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;

  dm.zq_kendaraan.Close;
  dm.zq_kendaraan.SQL.Clear;
  dm.zq_kendaraan.SQL.Add('SELECT * FROM kendaraan');
  dm.zq_kendaraan.Open;

  nopolKendaran.Clear;
  jenisKendaraan.Clear;
  merekKendaraan.Clear;
  modelKendaraan.Clear;
  tarifKendaraan.Clear;
end;

procedure TfAdmin.FormShow(Sender: TObject);
begin
  dm.TabelAktif(True);
  pnlAkun.Visible := True;
  pnlKendaraan.Visible := False;
  pnlSewa.Visible := False;
  lblAkun.Visible := True;
  lblKendaraan.Visible := False;
  lblSewa.Visible := False;
end;

procedure TfAdmin.Load1Click(Sender: TObject);
begin
  Blob_FromFileImage(dm.zq_kendaraanblob);
end;

procedure TfAdmin.Hapus1Click(Sender: TObject);
begin
  Blob_Clear(dm.zq_kendaraanblob, 'Hapus foto?');
end;

procedure TfAdmin.Admin1Click(Sender: TObject);
begin
  if not (dm.zq_akun.State in [dsEdit, dsInsert]) then
    dm.zq_akun.Edit;
  dm.zq_akun.FieldByName('id_role').AsInteger := 1;
end;

procedure TfAdmin.Pelanggan1Click(Sender: TObject);
begin
  if not (dm.zq_akun.State in [dsEdit, dsInsert]) then
    dm.zq_akun.Edit;
  dm.zq_akun.FieldByName('id_role').AsInteger := 2;
end;

procedure TfAdmin.SedangDiproses1Click(Sender: TObject);
begin
  if not (dm.zq_sewa.State in [dsEdit, dsInsert]) then
    dm.zq_sewa.Edit;
  dm.zq_sewa.FieldByName('id_status').AsInteger := 1;
end;

procedure TfAdmin.Selesai1Click(Sender: TObject);
begin
  if not (dm.zq_sewa.State in [dsEdit, dsInsert]) then
    dm.zq_sewa.Edit;
  dm.zq_sewa.FieldByName('id_status').AsInteger := 2;
end;

procedure TfAdmin.Dibatalkan1Click(Sender: TObject);
begin
  if not (dm.zq_sewa.State in [dsEdit, dsInsert]) then
    dm.zq_sewa.Edit;
  dm.zq_sewa.FieldByName('id_status').AsInteger := 3;
end;

procedure TfAdmin.ersedia1Click(Sender: TObject);
begin
  if not (dm.zq_kendaraan.State in [dsEdit, dsInsert]) then
    dm.zq_kendaraan.Edit;
  dm.zq_kendaraan.FieldByName('id_status').AsInteger := 1;
end;

procedure TfAdmin.idakTersedia1Click(Sender: TObject);
begin
  if not (dm.zq_kendaraan.State in [dsEdit, dsInsert]) then
    dm.zq_kendaraan.Edit;
  dm.zq_kendaraan.FieldByName('id_status').AsInteger := 2;
end;

procedure TfAdmin.btnLogoutClick(Sender: TObject);
begin
  userId := '';
  roleId := 0;
  username := '';
  fLogin.Show;
  Self.Hide;
end;

procedure TfAdmin.nav_sewaClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: dm.find_sewa.Execute;
    sbFilter: dm.filter_sewa.Execute;
    sbExport: export_sewa.Select;
    sbPrint: dm.rpt_sewa.ShowReport;
  end;
end;

procedure TfAdmin.nav_kendaraanClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: dm.find_kendaraan.Execute;
    sbFilter: dm.filter_kendaraan.Execute;
    sbExport: export_kendaraan.Select;
    sbPrint: dm.rpt_kendaraan.ShowReport;
  end;
end;

procedure TfAdmin.nav_akunClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: dm.find_akun.Execute;
    sbFilter: dm.filter_akun.Execute;
    sbExport: export_akun.Select;
    sbPrint: dm.rpt_akun.ShowReport;
  end;
end;

procedure TfAdmin.btnHapusKendaraanClick(Sender: TObject);
var
  idKendaraan: string;
begin
  if not fLogin.zconn.Connected then
    fLogin.zconn.Connected:= True;

    idKendaraan := dm.zq_kendaraan.FieldByName('id_kendaraan').AsString;

    if idKendaraan = '' then
    begin
      ShowMessage('Silahkan pilih kendaraan yang akan di hapus!');
      Exit;
    end;

    try
      with dm.zq_kendaraan do
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM kendaraan WHERE id_kendaraan = :id');
        Params.ParamByName('id').AsString := idKendaraan;
        ExecSQL;
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM kendaraan');
        Open;
      end;

      ShowMessage('Berhasil dihapus!');
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
end;

procedure TfAdmin.btnHapusAkunClick(Sender: TObject);
var
  idAkun: string;
begin
  if not fLogin.zconn.Connected then
    fLogin.zconn.Connected:= True;

    idAkun := dm.zq_akun.FieldByName('id_akun').AsString;

    if idAkun = '' then
    begin
      ShowMessage('Silahkan pilih akun yang akan di hapus!');
      Exit;
    end;

    try
      with dm.zq_akun do
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM akun WHERE id_akun = :id');
        Params.ParamByName('id').AsString := idAkun;
        ExecSQL;
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM akun');
        Open;
      end;

      ShowMessage('Berhasil dihapus!');
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
end;

end.
