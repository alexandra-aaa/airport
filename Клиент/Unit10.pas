unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewPass = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eName: TEdit;
    ePas: TEdit;
    eSex: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    eBirth: TDateTimePicker;
    procedure eSexKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewPass: TfmNewPass;

implementation

{$R *.dfm}

procedure TfmNewPass.eSexKeyPress(Sender: TObject; var Key: Char);

 const Digit=['æ', 'ì'];
begin
  if (not (Key in Digit)) then Key:=#0;
end;

end.
