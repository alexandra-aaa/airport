unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmTimetable = class(TForm)
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
  fmTimetable: TfmTimetable;

implementation

uses Unit2, Unit24, Unit26;

{$R *.dfm}

procedure TfmTimetable.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsTimetable;
end;

procedure TfmTimetable.N1Click(Sender: TObject);
begin
     fmNewTimetable.eFlight.Text :='';
     fmNewTimetable.dtpDate.Date :=Now;
     fmNewTimetable.eTime.Text :='';
     fmNewTimetable.ShowModal;
  if (fmNewTimetable.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddTimetable(0, fmNewTimetable.flight_id,
       fmNewTimetable.dtpDate.Date,
       fmNewTimetable.eTime.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsTimetable.Refresh;
     end;
end;

procedure TfmTimetable.N2Click(Sender: TObject);
begin
    fmNewTimetable.eFlight.Text :=dm.cdsTimetableID_FL.Text;
     fmNewTimetable.dtpDate.Date :=dm.cdsTimetableDAT.Value;
     fmNewTimetable.eTime.Text :=dm.cdsTimetableTIM.Value;
     fmNewTimetable.flight_id:=dm.cdsTimetableID_FL.Value;
     fmNewTimetable.ShowModal;
  if (fmNewTimetable.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddTimetable(dm.cdsTimetableID.Value, fmNewTimetable.flight_id,
       fmNewTimetable.dtpDate.Date,
       fmNewTimetable.eTime.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsTimetable.Refresh;
     end;
end;

procedure TfmTimetable.N3Click(Sender: TObject);
begin
MessageDlg('Удалить?', mtConfirmation, [mbYes, mbNo], 0);
dm.DCOMConnection1.AppServer.smDeleteTimetable(dm.cdsTimetableID.Value);
dm.cdsTimetable.Refresh;
end;

procedure TfmTimetable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmNewTicket.timetable_id:= dm.cdsTimetableID.Value;
  fmNewTicket.timetable_name:= dm.cdsTimetableTIM.Value;
end;

end.
