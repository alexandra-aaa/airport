unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmPlane = class(TForm)
    MainMenu1: TMainMenu;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPlane: TfmPlane;

implementation

uses Unit2, Unit16, Unit18, Unit20;

{$R *.dfm}

procedure TfmPlane.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsPlane;
end;

procedure TfmPlane.N1Click(Sender: TObject);
begin
     fmNewPlane.eModel.Text :='';
     fmNewPlane.eClass_f.Text :='';
     fmNewPlane.eClass_s.Text :='';
     fmNewPlane.eCrew.Text :='';
     fmNewPlane.eTehn.Text :='';

     fmNewPlane.ShowModal;
  if (fmNewPlane.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddPlane(0, fmNewPlane.eModel.Text, fmNewPlane.eClass_f.Text, fmNewPlane.eClass_s.Text, fmNewPlane.brigad1_id, fmNewPlane.brigad2_id);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsPlane.Refresh;
     end;

end;

procedure TfmPlane.N2Click(Sender: TObject);
begin
     fmNewPlane.eModel.Text :=dm.cdsPlaneMODEL.Value;
     fmNewPlane.eClass_f.Text :=dm.cdsPlaneCLASS_F.Text;
     fmNewPlane.eClass_s.Text :=dm.cdsPlaneCLASS_S.Text;
     fmNewPlane.eCrew.Text :=dm.cdsPlaneTEHN_NAME.Value;
     fmNewPlane.eTehn.Text :=dm.cdsPlaneCREW_NAME.Value;
     fmNewPlane.brigad1_id:=dm.cdsPlaneID_TEHN.Value;
     fmNewPlane.brigad2_id:=dm.cdsPlaneID_CREW.Value;
     fmNewPlane.ShowModal;
  if (fmNewPlane.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddPlane(dm.cdsPlaneID.Value, fmNewPlane.eModel.Text, fmNewPlane.eClass_f.Text, fmNewPlane.eClass_s.Text,fmNewPlane.brigad2_id, fmNewPlane.brigad1_id);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsPlane.Refresh;
     end;
              
end;

procedure TfmPlane.N3Click(Sender: TObject);
begin
MessageDlg('Удалить Самолет?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeletePlane(dm.cdsPlaneID.Value);
  dm.cdsPlane.Refresh;
end;

procedure TfmPlane.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewPodgot.plane_id:= dm.cdsPlaneID.Value;
  fmNewPodgot.plane_name:= dm.cdsPlaneMODEL.Value;
  fmNewFlight.plane_id:= dm.cdsPlaneID.Value;
  fmNewFlight.plane_name:= dm.cdsPlaneMODEL.Value;
end;

end.
