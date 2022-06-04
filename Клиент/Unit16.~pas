unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewPlane = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    eModel: TEdit;
    eClass_f: TEdit;
    eClass_s: TEdit;
    eTehn: TEdit;
    eCrew: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
       brigad1_id, brigad2_id: integer;
    brigad1_name, brigad2_name: string;
    { Public declarations }
  end;

var
  fmNewPlane: TfmNewPlane;

implementation

uses Unit13;

{$R *.dfm}

procedure TfmNewPlane.Button1Click(Sender: TObject);
begin
fmBrigad.ShowModal;
eCrew.Text:= brigad1_name;

end;

procedure TfmNewPlane.Button2Click(Sender: TObject);
begin
fmBrigad.ShowModal;
 eTehn.Text:= brigad2_name;

end;

end.
