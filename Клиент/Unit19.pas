unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmFlight = class(TForm)
    MainMenu1: TMainMenu;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFlight: TfmFlight;
  fmFlight: TfmFlightе;

implementation

uses Unit20, Unit2, Unit22, Unit24, Unit26, Unit30;

{$R *.dfm}

procedure TfmFlight.N1Click(Sender: TObject);
begin
     fmNewFlight.ePlane.Text :='';
     fmNewFlight.eRoute.Text :='';
     fmNewFlight.ShowModal;
  if (fmNewFlight.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddFlight(0, fmNewFlight.plane_id, fmNewFlight.route_id );
     except
       MessageDlg('������ ������', mtError, [mbOk], 0);
     end;
     dm.cdsFlight.Refresh;
     end;
end;

procedure TfmFlight.N2Click(Sender: TObject);
begin
     fmNewFlight.ePlane.Text :=dm.cdsFlightPLANE_NAME.Value;
     fmNewFlight.eRoute.Text :=dm.cdsFlightID_ROUTE.Text;
     fmNewFlight.plane_id:=dm.cdsFlightID_PL.Value;
     fmNewFlight.ShowModal;
  if (fmNewFlight.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddFlight(dm.cdsFlightID.Value, fmNewFlight.plane_id, fmNewFlight.route_id );
     except
       MessageDlg('������ ������', mtError, [mbOk], 0);
     end;
     dm.cdsFlight.Refresh;
     end;
end;

procedure TfmFlight.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsFlight;
end;

procedure TfmFlight.N3Click(Sender: TObject);
begin
MessageDlg('������� ���� ����?', mtConfirmation, [mbYes, mbNo], 0);
dm.DCOMConnection1.AppServer.smDeleteFlight(dm.cdsFlightID.Text);
dm.cdsFlight.Refresh;
end;

procedure TfmFlight.N4Click(Sender: TObject);
begin
 Close;
end;

procedure TfmFlight.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewEmerg.flight_id:= dm.cdsFlightID.Value;
  fmNewEmerg.flight_name:= dm.cdsFlightID.Text;
    fmNewTimetable.flight_id:= dm.cdsFlightID.Value;
  fmNewTimetable.flight_name:= dm.cdsFlightID.Text;
    fmNewTicket.flight_id:= dm.cdsFlightID.Value;
  fmNewTicket.flight_name:= dm.cdsFlightID.Text;
end;

procedure TfmFlight.N5Click(Sender: TObject);
begin
 Ot2.ShowModal;
end;

end.
