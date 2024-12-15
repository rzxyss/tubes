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
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation
uses admin, user, DataModul;
{$R *.dfm}

procedure TfLogin.btnLoginClick(Sender: TObject);
var
  UserID, UserRole, PenggunaID: Integer;
  sql: string;
begin
  // Validasi input
  if (Trim(edUname.Text) = '') or (Trim(edPass.Text) = '') then
  begin
    ShowMessage('Username dan Password harus diisi!');
    if Trim(edUname.Text) = '' then
      edUname.SetFocus
    else
      edPass.SetFocus;
    Exit;
  end;

  try
    
    with dm.zq_login do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT id_akun, id_role FROM akun WHERE username = :username AND password = :password');
      Params.ParamByName('username').AsString := Trim(edUname.Text);
      Params.ParamByName('password').AsString := Trim(edPass.Text);
      Open;

      if not IsEmpty then
      begin
        UserID := FieldByName('id').AsInteger;
        UserRole := FieldByName('role').AsInteger;

        if UserRole = 1 then
        begin
          fAdmin.Show;
          Self.Hide;
        end
        else if UserRole = 2 then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT id_akun FROM akun WHERE id_akun = :user_id');
          Params.ParamByName('user_id').AsInteger := UserID;
          Open;

          if not IsEmpty then
          begin
            PenggunaID := FieldByName('id').AsInteger;
            fUser.Show;
            Self.Hide;
          end
          else
          begin
            ShowMessage('Data pengguna tidak ditemukan!');
            Exit;
          end;
        end;
      end
      else
      begin
        ShowMessage('Username atau Password salah!');
        edUname.Clear;
        edPass.SetFocus;
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

end.
