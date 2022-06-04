unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmEmerg = class(TForm)
    MainMenu1: TMainMenu;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmerg: TfmEmerg;

implementation

uses Unit2, Unit22, Unit20;

{$R *.dfm}

procedure TfmEmerg.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsEmerg;
end;

procedure TfmEmerg.N1Click(Sender: TObject);
var
 f1,f2 :string;
begin
     fmNewEmerg.eFlight.Text :='';
     fmNewEmerg.cbZad.Checked :=false;
     fmNewEmerg.cbOtmen.Checked :=false;
     fmNewEmerg.ShowModal;
  if (fmNewEmerg.ModalResult = mrOk) then
    begin
      if (fmNewEmerg.cbZad.Checked =true) then
       f1:= 'да'
      else
       f1:='нет';

      if (fmNewEmerg.cbOtmen.Checked =true) then
       f2:='да'
      else
       f2:='нет';

     try
       dm.DCOMConnection1.AppServer.smAddEmerg(fmNewEmerg.flight_id, f1, f2);
     except
       MessageDlg('ќшибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsEmerg.Refresh;
     end;
end;

procedure TfmEmerg.N2Click(Sender: TObject);
var
 f1,f2 :string;
begin
     fmNewEmerg.eFlight.Text :=dm.cdsEmergID_F.Text;
     if (dm.cdsEmergREASON.Text='да') then
     fmNewEmerg.cbZad.Checked :=true
     else
     fmNewEmerg.cbZad.Checked :=false;
     if (dm.cdsEmergRESULT.Text='да')
     then
     fmNewEmerg.cbOtmen.Checked :=true
     else
     fmNewEmerg.cbOtmen.Checked :=false;
     fmNewEmerg.flight_id:=dm.cdsEmergID_F.Value;
     fmNewEmerg.ShowModal;
  if (fmNewEmerg.ModalResult = mrOk) then
    begin
      if (fmNewEmerg.cbZad.Checked =true) then
       f1:= 'да'
      else
       f1:='нет';

      if (fmNewEmerg.cbOtmen.Checked =true) then
       f2:='да'
      else
       f2:='нет';

     try
       dm.DCOMConnection1.AppServer.smAddEmerg(fmNewEmerg.flight_id, f1, f2);
     except
       MessageDlg('ќшибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsEmerg.Refresh;
     end;

end;

procedure TfmEmerg.N3Click(Sender: TObject);
begin
MessageDlg('”далить?', mtConfirmation, [mbYes, mbNo], 0);
dm.DCOMConnection1.AppServer.smDeleteEmerg(dm.cdsEmergID_F.Value);
dm.cdsEmerg.Refresh;
end;

end.
