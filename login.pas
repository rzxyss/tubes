unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ZAbstractConnection, ZConnection;

type
  TfLogin = class(TForm)
    lblUname: TLabel;
    lblPass: TLabel;
    edUname: TEdit;
    edPass: TEdit;
    btnLogin: TButton;
    Label1: TLabel;
    zconn: TZConnection;
    lblRegis: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblRegisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation
uses admin, user, DataModul, GlobalUnit, registrasi;
{$R *.dfm}

procedure TfLogin.btnLoginClick(Sender: TObject);
begin
  try
    with dm.zq_login do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM akun');
      SQL.Add('WHERE username = :username AND password = :password');
      Params.ParamByName('username').Value := edUname.Text;
      Params.ParamByName('password').Value := edPass.Text;
      Open;

      if not IsEmpty then
      begin
        userId := FieldByName('id_akun').AsString;
        roleId := FieldByName('id_role').AsInteger;
        username := FieldByName('username').AsString;

        if roleId = 1 then
        begin
          fAdmin.Show;
          Self.Hide;
        end
        else if roleId = 2 then
        begin
          fUser.Show;
          Self.Hide;
        end;
      end
      else
      begin
        ShowMessage('Username atau Password salah!');
        edUname.Clear;
        edPass.Clear;
        edUname.SetFocus;
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Terjadi kesalahan: ' + E.Message);
  end;
end;

procedure TfLogin.FormShow(Sender: TObject);
begin
  dm.TabelAktif(True);
end;

procedure TfLogin.lblRegisClick(Sender: TObject);
begin
  Self.Hide;
  fRegis.Show;
end;

end.
