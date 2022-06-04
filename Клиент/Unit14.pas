unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewBrigad = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eOtdel: TEdit;
    eEmpl: TEdit;
    eName: TEdit;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
     empl_id, otdel_id: integer;
    empl_name, otdel_name: string;
    { Public declarations }
  end;

var
  fmNewBrigad: TfmNewBrigad;

implementation

uses Unit3, Unit11;

{$R *.dfm}

procedure TfmNewBrigad.Button1Click(Sender: TObject);
begin
fmOtdel.ShowModal;
eOtdel.Text:= otdel_name;
end;

procedure TfmNewBrigad.Button2Click(Sender: TObject);
begin
 fmEmpl.ShowModal;
eEmpl.Text:=empl_name;
end;

end.
