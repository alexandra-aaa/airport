unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmEmpl = class(TForm)
    MainMenu1: TMainMenu;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmpl: TfmEmpl;

implementation

uses Unit2, Unit12, Unit14, Unit29;

{$R *.dfm}

procedure TfmEmpl.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsEmpl;
end;

procedure TfmEmpl.N1Click(Sender: TObject);
begin
     fmNewEmpl.eName.Text :='';
     fmNewEmpl.eDolzh.Text :='';
     fmNewEmpl.dtpPr.Date :=Now;
     fmNewEmpl.ePol.Text :='';
     fmNewEmpl.dtpBirthday.Date :=Now;
     fmNewEmpl.eChildren.Text :='';
     fmNewEmpl.eSalary.Text :='';
  fmNewEmpl.ShowModal;
  if (fmNewEmpl.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddEmpl(0, fmNewEmpl.eName.Text, fmNewEmpl.dolzh_id, fmNewEmpl.dtpPr.Date, fmNewEmpl.ePol.Text, fmNewEmpl.dtpBirthday.Date, fmNewEmpl.eChildren.Text, fmNewEmpl.eSalary.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsEmpl.Refresh;
     end;

end;

procedure TfmEmpl.N2Click(Sender: TObject);
begin
  fmNewEmpl.eName.Text := dm.cdsEmplFIO.Value;
     fmNewEmpl.eDolzh.Text :=dm.cdsEmplDOLZH_NAME.Value;
     fmNewEmpl.dtpPr.Date :=dm.cdsEmplDAT_PR.Value;
     fmNewEmpl.ePol.Text :=dm.cdsEmplPOL.Value;
     fmNewEmpl.dtpBirthday.Date :=dm.cdsEmplDAT_BIRTH.Value;
     fmNewEmpl.eChildren.Text :=dm.cdsEmplCHILDREN.Text;
     fmNewEmpl.eSalary.Text :=dm.cdsEmplSALARY.Text;
     fmNewEmpl.dolzh_id:=dm.cdsEmplID_DOL.Value;
  fmNewEmpl.ShowModal;
  if (fmNewEmpl.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddEmpl(dm.cdsEmplID.Value, fmNewEmpl.eName.Text, fmNewEmpl.dolzh_id, fmNewEmpl.dtpPr.Date, fmNewEmpl.ePol.Text, fmNewEmpl.dtpBirthday.Date, fmNewEmpl.eChildren.Text, fmNewEmpl.eSalary.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsEmpl.Refresh;
     end;

end;

procedure TfmEmpl.N3Click(Sender: TObject);
begin
MessageDlg('Удалить Сотрудника?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeleteEmpl(dm.cdsEmplID.Value);
  dm.cdsEmpl.Refresh;
end;

procedure TfmEmpl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewBrigad.empl_id:= dm.cdsEmplID.Value;
  fmNewBrigad.empl_name:= dm.cdsEmplFIO.Value;
end;

procedure TfmEmpl.N5Click(Sender: TObject);
begin
 Ot1.ShowModal;
end;

end.
