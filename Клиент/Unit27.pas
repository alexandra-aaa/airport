unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmReturn = class(TForm)
    MainMenu1: TMainMenu;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N51: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReturn: TfmReturn;

implementation

uses Unit2, Unit28, Unit32, Unit33;

{$R *.dfm}

procedure TfmReturn.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsRet;
end;

procedure TfmReturn.N1Click(Sender: TObject);
begin
      fmNewReturn.eFIO.Text :='';
     fmNewReturn.dtpDate.Date :=Now;
     fmNewReturn.ShowModal;
  if (fmNewReturn.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddRet(fmNewReturn.ticket_id,fmNewReturn.dtpDate.Date);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsRet.Refresh;
     end;

end;

procedure TfmReturn.N2Click(Sender: TObject);
begin
     fmNewReturn.eFIO.Text :=dm.cdsRetFIO.Value;
     fmNewReturn.dtpDate.Date :=dm.cdsRetDAT.Value;
     fmNewReturn.ticket_id:=dm.cdsRetID_T.Value;
     fmNewReturn.ShowModal;
  if (fmNewReturn.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddRet(fmNewReturn.ticket_id,fmNewReturn.dtpDate.Date);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsRet.Refresh;
     end;

end;

procedure TfmReturn.N3Click(Sender: TObject);
begin
MessageDlg('Удалить?', mtConfirmation, [mbYes, mbNo], 0);
dm.DCOMConnection1.AppServer.smDeleteRet(dm.cdsRetID_T.Value);
dm.cdsRet.Refresh;
end;

procedure TfmReturn.N4Click(Sender: TObject);
begin
Close;
end;

procedure TfmReturn.N5Click(Sender: TObject);
begin
 Ot4.ShowModal;
end;

procedure TfmReturn.N51Click(Sender: TObject);
begin
 Ot5.ShowModal;
end;

end.
