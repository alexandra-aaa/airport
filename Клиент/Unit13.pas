unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmBrigad = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrigad: TfmBrigad;

implementation

uses Unit2, Unit14, Unit16;

{$R *.dfm}

procedure TfmBrigad.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsBrigad;
end;

procedure TfmBrigad.N1Click(Sender: TObject);
begin
     fmNewBrigad.eOtdel.Text :='';
     fmNewBrigad.eEmpl.Text :='';
     fmNewBrigad.eName.Text :='';
     fmNewBrigad.ShowModal;
  if (fmNewBrigad.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddBrigad(0, fmNewBrigad.otdel_id, fmNewBrigad.empl_id, fmNewBrigad.eName.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsBrigad.Refresh;
     end;

end;

procedure TfmBrigad.N2Click(Sender: TObject);
begin
     fmNewBrigad.eOtdel.Text :=dm.cdsBrigadOTDEL_NAME.Value;
     fmNewBrigad.eEmpl.Text :=dm.cdsBrigadEMPL_NAME.Value;
     fmNewBrigad.eName.Text :=dm.cdsBrigadNAME.Value;
     fmNewBrigad.otdel_id:=dm.cdsBrigadID_OTD.Value;
     fmNewBrigad.empl_id:=dm.cdsBrigadID_EMPL.Value;
     fmNewBrigad.ShowModal;
  if (fmNewBrigad.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddBrigad(dm.cdsBrigadID.Value, fmNewBrigad.otdel_id, fmNewBrigad.empl_id, fmNewBrigad.eName.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsBrigad.Refresh;
     end;

end;

procedure TfmBrigad.N3Click(Sender: TObject);
begin
MessageDlg('Удалить Бригаду?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeleteBrigad(dm.cdsBrigadID.Value);
  dm.cdsBrigad.Refresh;
end;

procedure TfmBrigad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewPlane.brigad1_id:= dm.cdsBrigadID.Value;
  fmNewPlane.brigad1_name:= dm.cdsBrigadNAME.Value;
  fmNewPlane.brigad2_id:= dm.cdsBrigadID.Value;
  fmNewPlane.brigad2_name:= dm.cdsBrigadNAME.Value;
end;

end.
