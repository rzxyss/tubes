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
uses admin;
{$R *.dfm}

procedure TfLogin.btnLoginClick(Sender: TObject);
begin
  fAdmin.Show;
end;

end.
