unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewPodgot = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ePlane: TEdit;
    eResult: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    dtpDate: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
   plane_id: integer;
   plane_name: string;
    { Public declarations }
  end;

var
  fmNewPodgot: TfmNewPodgot;

implementation

uses Unit15;

{$R *.dfm}

procedure TfmNewPodgot.Button1Click(Sender: TObject);
begin
fmPlane.ShowModal;
ePlane.Text:= plane_name;
end;

end.
