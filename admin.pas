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
    roleAkun: TEdit;
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
    dbeRoleAkun: TDBEdit;
    grid_akun: TSMDBGrid;
    nav_akun: TSMDBNavigator;
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
    rarifKendaraan: TEdit;
    statusKendaraan: TEdit;
    btnTambahKendaraan: TButton;
    KendaraanEdit: TGroupBox;
    dbeNopolKendaraan: TDBEdit;
    dbeJenisKendaraan: TDBEdit;
    dbeMerekKendaraan: TDBEdit;
    dbeModelKendaraan: TDBEdit;
    dbeTarifKendaraan: TDBEdit;
    dbeStatusKendaraan: TDBEdit;
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
    procedure btnAkunClick(Sender: TObject);
    procedure btnKendaraanClick(Sender: TObject);
    procedure btnSewaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdmin: TfAdmin;

implementation
uses DataModul;
{$R *.dfm}

procedure TfAdmin.btnAkunClick(Sender: TObject);
begin
  pnlAkun.Visible := True;
  pnlKendaraan.Visible := False;
  pnlSewa.Visible := False;
end;

procedure TfAdmin.btnKendaraanClick(Sender: TObject);
begin
  pnlAkun.Visible := False;
  pnlKendaraan.Visible := True;
  pnlSewa.Visible := False;
end;

procedure TfAdmin.btnSewaClick(Sender: TObject);
begin
  pnlAkun.Visible := False;
  pnlKendaraan.Visible := False;
  pnlSewa.Visible := True;
end;

end.
