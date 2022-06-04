unit Unit28;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewReturn = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    eFIO: TEdit;
    dtpDate: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  ticket_id: integer;
  ticket_fio: string;
    { Public declarations }
  end;

var
  fmNewReturn: TfmNewReturn;

implementation

uses Unit25;

{$R *.dfm}

procedure TfmNewReturn.Button1Click(Sender: TObject);
begin
  fmTicket.ShowModal;
  eFIO.Text:=ticket_fio;
end;

end.
