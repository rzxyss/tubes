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
  if not fLogin.zconn.Connected then
    fLogin.zconn.Connected := True;

    dm.zq_akun.SQL.Clear;
    dm.zq_akun.SQL.Add(
      'INSERT INTO akun (id_akun, nama, email, no_telp, username, password) ' +
      'VALUES (:nik, :nama, :email, :telp, :username, :password)'
    );
    dm.zq_akun.Params.ParamByName('nik').AsString := edNik.Text;
    dm.zq_akun.Params.ParamByName('nama').AsString := edName.Text;
    dm.zq_akun.Params.ParamByName('email').AsString := edEmail.Text;
    dm.zq_akun.Params.ParamByName('telp').AsString := edTelp.Text;
    dm.zq_akun.Params.ParamByName('username').AsString := edUname.Text;
    dm.zq_akun.Params.ParamByName('password').AsString := edPass.Text;

    try
      dm.zq_akun.ExecSQL;
      ShowMessage('Akun dibuat!');
      Self.Hide;
      fLogin.Show;
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;

    edNik.Clear;
    edName.Clear;
    edEmail.Clear;
    edTelp.Clear;
    edUname.Clear;
    edPass.Clear;
end;

end.
