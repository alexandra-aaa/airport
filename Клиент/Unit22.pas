unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewEmerg = class(TForm)
    Label1: TLabel;
    eFlight: TEdit;
    cbZad: TCheckBox;
    cbOtmen: TCheckBox;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  flight_name :string;
  flight_id: integer;
    { Public declarations }
  end;

var
  fmNewEmerg: TfmNewEmerg;

implementation

uses Unit19;

{$R *.dfm}

procedure TfmNewEmerg.Button1Click(Sender: TObject);
begin
  fmFlight.ShowModal;
  eFlight.Text:=flight_name;
end;

end.
