unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmPodgot = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPodgot: TfmPodgot;

implementation

uses Unit2, Unit18;

{$R *.dfm}

procedure TfmPodgot.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsPodgot;
end;

procedure TfmPodgot.N1Click(Sender: TObject);
begin
     fmNewPodgot.ePlane.Text :='';
     fmNewPodgot.dtpDate.Date :=Now;
     fmNewPodgot.eResult.Text :='';
     fmNewPodgot.ShowModal;
  if (fmNewPodgot.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddPodgot(fmNewPodgot.plane_id,
       fmNewPodgot.dtpDate.Date,
       fmNewPodgot.eResult.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsPodgot.Refresh;
     end;
end;

procedure TfmPodgot.N2Click(Sender: TObject);
begin
  fmNewPodgot.ePlane.Text :=dm.cdsPodgotPLANE_NAME.Value;
     fmNewPodgot.dtpDate.Date :=dm.cdsPodgotDAT.Value;
     fmNewPodgot.eResult.Text :=dm.cdsPodgotRESULT.Value;
     fmNewPodgot.plane_id:=dm.cdsPodgotID_PL.Value;
     fmNewPodgot.ShowModal;
  if (fmNewPodgot.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddPodgot(fmNewPodgot.plane_id, fmNewPodgot.dtpDate.Date,fmNewPodgot.eResult.Text  );
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsPodgot.Refresh;
     end;
end;

procedure TfmPodgot.N3Click(Sender: TObject);
begin
MessageDlg('Удалить данные о подготовке?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeletePodot(dm.cdsPodgotID_PL.Value);
  dm.cdsPodgot.Refresh;
end;

end.
