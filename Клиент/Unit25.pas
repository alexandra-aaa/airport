unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmTicket = class(TForm)
    MainMenu1: TMainMenu;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTicket: TfmTicket;

implementation

uses Unit2, Unit26, Unit28, Unit31;

{$R *.dfm}

procedure TfmTicket.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsTicket;
end;

procedure TfmTicket.N1Click(Sender: TObject);
begin
     fmNewTicket.eFIO.Text :='';
     fmNewTicket.eFlight.Text :='';
     fmNewTicket.dtpDate.Date :=Now;
     fmNewTicket.eReser.Text :='';
     fmNewTicket.eTime.Text :='';
     fmNewTicket.eClass.Text :='';
     fmNewTicket.ShowModal;
  if (fmNewTicket.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddTicket(0,fmNewTicket.pass_id,
     fmNewTicket.flight_id,
     fmNewTicket.dtpDate.Date,
     fmNewTicket.eReser.Text,
     fmNewTicket.timetable_id,
     fmNewTicket.eClass.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsTicket.Refresh;
     end;

end;

procedure TfmTicket.N2Click(Sender: TObject);
begin
     fmNewTicket.eFIO.Text :=dm.cdsTicketFIO.Value;
     fmNewTicket.eFlight.Text :=dm.cdsTicketID_FL.Text;
     fmNewTicket.dtpDate.Date :=dm.cdsTicketDATE_SALE.Value;
     fmNewTicket.eReser.Text :=dm.cdsTicketRESER.Value;
     fmNewTicket.eTime.Text :=dm.cdsTicketTIME.Value;
     fmNewTicket.eClass.Text :=dm.cdsTicketCLASS.Text;
     fmNewTicket.pass_id:=dm.cdsTicketID_PAS.Value;
     fmNewTicket.flight_id:=dm.cdsTicketID_FL.Value;
     fmNewTicket.timetable_id:=dm.cdsTicketID_TIMETABLE.Value;
     fmNewTicket.ShowModal;
  if (fmNewTicket.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddTicket(dm.cdsTicketID.Value ,fmNewTicket.pass_id,
     fmNewTicket.flight_id,
     fmNewTicket.dtpDate.Date,
     fmNewTicket.eReser.Text,
     fmNewTicket.timetable_id,
     fmNewTicket.eClass.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsTicket.Refresh;
     end;
end;

procedure TfmTicket.N3Click(Sender: TObject);
begin
MessageDlg('Удалить?', mtConfirmation, [mbYes, mbNo], 0);
dm.DCOMConnection1.AppServer.smDeleteTicket(dm.cdsTicketID.Value);
dm.cdsTicket.Refresh;
end;

procedure TfmTicket.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewReturn.ticket_id:= dm.cdsTicketID.Value;
  fmNewReturn.ticket_fio:= dm.cdsTicketFIO.Value;
end;

procedure TfmTicket.N5Click(Sender: TObject);
begin
 Ot3.ShowModal;
end;

end.
