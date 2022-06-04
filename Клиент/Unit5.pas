unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmDolzh = class(TForm)
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
  fmDolzh: TfmDolzh;

implementation

uses Unit2, Unit6, Unit12;

{$R *.dfm}

procedure TfmDolzh.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsDolzh;
end;

procedure TfmDolzh.N1Click(Sender: TObject);
begin
   fmNewDolzh.eName1.Text :='';
  fmNewDolzh.ShowModal;
  if (fmNewDolzh.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddDolzh(0, fmNewDolzh.eName1.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsDolzh.Refresh;
     end;
end;

procedure TfmDolzh.N2Click(Sender: TObject);
begin
 fmNewDolzh.eName1.Text :=dm.cdsDolzhNAME.Value;
  fmNewDolzh.ShowModal;
  if (fmNewDolzh.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddDolzh(dm.cdsDolzhID.Value, fmNewDolzh.eName1.Text);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsDolzh.Refresh;
     end;
end;

procedure TfmDolzh.N3Click(Sender: TObject);
begin
    MessageDlg('Удалить должность?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeleteDolzh(dm.cdsDolzhID.Value);
  dm.cdsDolzh.Refresh;
end;

procedure TfmDolzh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    fmNewEmpl.dolzh_id:= dm.cdsDolzhID.Value;
    fmNewEmpl.dolzh_name:= dm.cdsDolzhNAME.Value;
end;

end.
