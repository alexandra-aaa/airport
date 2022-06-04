unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls;

type
  TfmNewTimetable = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eFlight: TEdit;
    eTime: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dtpDate: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
   flight_id: integer;
   flight_name: string;
    { Public declarations }
  end;

var
  fmNewTimetable: TfmNewTimetable;

implementation

uses Unit19;

{$R *.dfm}

procedure TfmNewTimetable.Button1Click(Sender: TObject);
begin
  fmFlight.ShowModal;
  eFlight.Text:=flight_name;
end;

end.
