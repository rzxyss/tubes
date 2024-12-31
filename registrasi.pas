unit registrasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfRegis = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edNik: TEdit;
    edName: TEdit;
    Label3: TLabel;
    edEmail: TEdit;
    Label4: TLabel;
    edTelp: TEdit;
    Label5: TLabel;
    edUname: TEdit;
    Label6: TLabel;
    edPass: TEdit;
    Label7: TLabel;
    btnSubmit: TButton;
    btnReset: TButton;
    lblLogin: TLabel;
    procedure lblLoginClick(Sender: TObject);
    procedure btnSubmitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRegis: TfRegis;

implementation
uses login, DataModul;
{$R *.dfm}

procedure TfRegis.lblLoginClick(Sender: TObject);
begin
  Self.Hide;
  fLogin.Show;
end;

procedure TfRegis.btnSubmitClick(Sender: TObject);
begin
  // Pastikan koneksi ke database
  if not fLogin.zconn.Connected then
    fLogin.zconn.Connected := True;

  // Siapkan query SQL
  dm.zq_akun.SQL.Clear;
  dm.zq_akun.SQL.Add(
    'INSERT INTO akun (id_akun, nama, email, no_telp, username, password) ' +
    'VALUES (:nik, :nama, :email, :telp, :username, :password)'
  );

  // Bind parameter dengan nilai dari form
  dm.zq_akun.Params.ParamByName('nik').AsString := edNik.Text;
  dm.zq_akun.Params.ParamByName('nama').AsString := edName.Text;
  dm.zq_akun.Params.ParamByName('email').AsString := edEmail.Text;
  dm.zq_akun.Params.ParamByName('telp').AsString := edTelp.Text;
  dm.zq_akun.Params.ParamByName('username').AsString := edUname.Text;
  dm.zq_akun.Params.ParamByName('password').AsString := edPass.Text;

  try
    // Eksekusi query
    dm.zq_akun.ExecSQL;
    ShowMessage('Akun berhasil dibuat, silahkan login!');
    dm.zq_akun.SQL.Clear;

    // Bersihkan form input
    edNik.Clear;
    edName.Clear;
    edEmail.Clear;
    edTelp.Clear;
    edUname.Clear;
    edPass.Clear;
  except
    on E: Exception do
    begin
      // Tampilkan pesan error jika terjadi
      ShowMessage('Error: ' + E.Message);
    end;
  end;
end;


end.
