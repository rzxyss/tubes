unit admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, SMDBGrid, ComCtrls, XPMan;

type
  TfAdmin = class(TForm)
    grid_kendaraan: TSMDBGrid;
    Label2: TLabel;
    pageAja: TPageControl;
    pageAkun: TTabSheet;
    pageKendaraan: TTabSheet;
    pageSewa: TTabSheet;
    Label3: TLabel;
    grid_sewa: TSMDBGrid;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    Label4: TLabel;
    SMDBGrid1: TSMDBGrid;
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
