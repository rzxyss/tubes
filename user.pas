unit user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls;

type
  TfUser = class(TForm)
    SMDBGrid1: TSMDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUser: TfUser;

implementation
uses DataModul, GlobalUnit;
{$R *.dfm}


procedure TfUser.FormShow(Sender: TObject);
begin
  try
    with dm.zq_user do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM akun WHERE id_akun = :id_akun');
      Params.ParamByName('id_akun').Value := userId;
      Open;
    end;
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

end.
