unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmOtdel = class(TForm)
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
  fmOtdel: TfmOtdel;

implementation

uses Unit2, Unit4, Unit12, Unit14;

{$R *.dfm}

procedure TfmOtdel.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsOtdel;
end;

procedure TfmOtdel.N1Click(Sender: TObject);
begin
  fmNewOtdel.eName.Text :='';
  fmNewOtdel.ShowModal;
  if (fmNewOtdel.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddOtdel(0, fmNewOtdel.eName.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsOtdel.Refresh;
     end;

end;

procedure TfmOtdel.N2Click(Sender: TObject);
begin
    fmNewOtdel.eName.Text :=dm.cdsOtdelNAME.Value;
  fmNewOtdel.ShowModal;
  if (fmNewOtdel.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddOtdel(dm.cdsOtdelID.Value, fmNewOtdel.eName.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsOtdel.Refresh;
     end;
end;

procedure TfmOtdel.N3Click(Sender: TObject);
begin
  MessageDlg('Удалить отдел?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeleteOtdel(dm.cdsOtdelID.Value);
  dm.cdsOtdel.Refresh;
end;

procedure TfmOtdel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewBrigad.otdel_id:= dm.cdsOtdelID.Value;
  fmNewBrigad.otdel_name:= dm.cdsOtdelNAME.Value;
end;

end.
