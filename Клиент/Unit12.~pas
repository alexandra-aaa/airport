unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewEmpl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    eName: TEdit;
    eDolzh: TEdit;
    ePol: TEdit;
    eChildren: TEdit;
    eSalary: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    dtpBirthday: TDateTimePicker;
    dtpPr: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dolzh_id: integer;
    dolzh_name: string;
  end;

var
  fmNewEmpl: TfmNewEmpl;

implementation

uses Unit5;

{$R *.dfm}

procedure TfmNewEmpl.Button1Click(Sender: TObject);
begin
fmDolzh.ShowModal;
eDolzh.Text:= dolzh_name;
end;

end.
