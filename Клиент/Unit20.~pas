unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfmNewFlight = class(TForm)
    ePlane: TEdit;
    eRoute: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    route_id, plane_id:integer;
    plane_name, route_name: string;
    { Public declarations }
  end;

var
  fmNewFlight: TfmNewFlight;

implementation

uses Unit7, Unit15;

{$R *.dfm}

procedure TfmNewFlight.Button2Click(Sender: TObject);
begin
  fmRoute.ShowModal;
  eRoute.Text:=route_name;
end;

procedure TfmNewFlight.Button1Click(Sender: TObject);
begin
  fmPlane.ShowModal;
ePlane.Text:= plane_name;
end;

end.
