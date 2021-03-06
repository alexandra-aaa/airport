unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewTicket = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    eFIO: TEdit;
    eFlight: TEdit;
    eReser: TEdit;
    eTime: TEdit;
    eClass: TEdit;
    dtpDate: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  pass_id, flight_id, timetable_id: integer;
  pass_name, flight_name, timetable_name: string;
    { Public declarations }
  end;

var
  fmNewTicket: TfmNewTicket;

implementation

uses Unit9, Unit19, Unit23, Unit28, Unit2;

{$R *.dfm}



procedure TfmNewTicket.Button1Click(Sender: TObject);
begin
  fmPass.ShowModal;
  eFIO.Text:=pass_name;
end;

procedure TfmNewTicket.Button2Click(Sender: TObject);
begin
   fmFlight.ShowModal;
  eFlight.Text:=flight_name;
end;

procedure TfmNewTicket.Button3Click(Sender: TObject);
begin
  fmTimetable.ShowModal;
  eTime.Text:=timetable_name;
end;

procedure TfmNewTicket.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmNewReturn.ticket_id:= dm.cdsTicketID.Value;
  fmNewReturn.ticket_fio:= dm.cdsTicketFIO.Value;
end;

end.
