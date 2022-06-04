unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewRoute = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    eFr: TEdit;
    eIn: TEdit;
    ePr1: TEdit;
    ePr2: TEdit;
    eTim: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    procedure eInChange(Sender: TObject);
    procedure ePr1KeyPress(Sender: TObject; var Key: Char);
    procedure ePr2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewRoute: TfmNewRoute;

implementation

{$R *.dfm}

procedure TfmNewRoute.eInChange(Sender: TObject);
begin
  if eIn.Text = eFr.Text then
  BitBtn1.Enabled := False;
end;

procedure TfmNewRoute.ePr1KeyPress(Sender: TObject; var Key: Char);

 const Digit=['-'];
begin
  if ((Key in Digit)) then Key:=#0;

end;

procedure TfmNewRoute.ePr2KeyPress(Sender: TObject; var Key: Char);
 const Digit=['-'];
begin
  if ((Key in Digit)) then Key:=#0;

end;

end.
