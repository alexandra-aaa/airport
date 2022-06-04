unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmRoute = class(TForm)
    MainMenu1: TMainMenu;
    L1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRoute: TfmRoute;

implementation

uses Unit2, Unit8, Unit4, Unit20;

{$R *.dfm}

procedure TfmRoute.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsRoute;
end;

procedure TfmRoute.L1Click(Sender: TObject);
begin
 fmNewRoute.eFr.Text :='';
 fmNewRoute.eIn.Text :='';
 fmNewRoute.eTim.Text :='';
 fmNewRoute.ePr1.Text :='';
 fmNewRoute.ePr2.Text :='';

 fmNewRoute.ShowModal;
 if (fmNewRoute.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddRoute(0,  fmNewRoute.eFr.Text, fmNewRoute.eIn.Text, fmNewRoute.eTim.Text, fmNewRoute.ePr1.Text, fmNewRoute.ePr2.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsRoute.Refresh;
     end;

end;

procedure TfmRoute.N2Click(Sender: TObject);
begin
   MessageDlg('Удалить маршрут?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeleteRoute(dm.cdsRouteID.Value);
  dm.cdsRoute.Refresh;
end;

procedure TfmRoute.N1Click(Sender: TObject);
begin
fmNewRoute.eFr.Text :=dm.cdsRoutePLACE_FROM.Value;
fmNewRoute.eIn.Text :=dm.cdsRoutePLACE_IN.Value;
fmNewRoute.eTim.Text :=dm.cdsRouteTIM.Text;
fmNewRoute.ePr1.Text :=dm.cdsRoutePRICE_1.Text;
fmNewRoute.ePr2.Text :=dm.cdsRoutePRICE_2.Text;
  fmNewRoute.ShowModal;
  if (fmNewRoute.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddRoute(dm.cdsRouteID.Value,  fmNewRoute.eFr.Text, fmNewRoute.eIn.Text, fmNewRoute.eTim.Text, fmNewRoute.ePr1.Text, fmNewRoute.ePr2.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsRoute.Refresh;
     end;
end;

procedure TfmRoute.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fmNewFlight.route_id:= dm.cdsRouteID.Value;
fmNewFlight.route_name:= dm.cdsRouteID.Text;
end;

end.
