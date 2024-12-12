unit admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, SMDBGrid, ComCtrls;

type
  TfAdmin = class(TForm)
    bg: TShape;
    lblTitle: TLabel;
    Label1: TLabel;
    grid_akun: TSMDBGrid;
    grid_kendaraan: TSMDBGrid;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdmin: TfAdmin;

implementation

{$R *.dfm}

end.
