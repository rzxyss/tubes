program tubes;

uses
  Forms,
  login in 'login.pas' {fLogin},
  DataModul in 'DataModul.pas' {dm: TDataModule},
  admin in 'admin.pas' {fAdmin},
  user in 'user.pas' {fUser},
  sewa in 'sewa.pas' {fSewa},
  GlobalUnit in 'GlobalUnit.pas',
  registrasi in 'registrasi.pas' {fRegis};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfLogin, fLogin);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfAdmin, fAdmin);
  Application.CreateForm(TfUser, fUser);
  Application.CreateForm(TfSewa, fSewa);
  Application.CreateForm(TfRegis, fRegis);
  Application.Run;
end.
