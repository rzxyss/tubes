unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfLogin = class(TForm)
    bg: TShape;
    lblUname: TLabel;
    lblPass: TLabel;
    edUname: TEdit;
    edPass: TEdit;
    btnLogin: TButton;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

{$R *.dfm}

end.
