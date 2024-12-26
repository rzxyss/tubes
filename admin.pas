unit admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, SMDBGrid, ComCtrls, XPMan,
  Buttons, Mask, DBCtrls, SMDBCtrl;

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
    procedure btnAkunClick(Sender: TObject);
    procedure btnKendaraanClick(Sender: TObject);
    procedure btnSewaClick(Sender: TObject);
    procedure btnTambahAkunClick(Sender: TObject);
    procedure btnTambahKendaraanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdmin: TfAdmin;

implementation
uses DataModul, login;
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

end.
