unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmPass = class(TForm)
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
  fmPass: TfmPass;

implementation

uses Unit2, Unit10, Unit26;

{$R *.dfm}

procedure TfmPass.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsPass
end;

procedure TfmPass.N1Click(Sender: TObject);
begin
     fmNewPass.eName.Text :='';
     fmNewPass.ePas.Text :='';
     fmNewPass.eSex.Text :='';
     fmNewPass.eBirth.Date :=Now;
  fmNewPass.ShowModal;
  if (fmNewPass.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddPass(0, fmNewPass.eName.Text, fmNewPass.ePas.Text,
       fmNewPass.eSex.Text, fmNewPass.eBirth.Date);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsPass.Refresh;
     end;

end;

procedure TfmPass.N2Click(Sender: TObject);
begin
    fmNewPass.eName.Text :=dm.cdsPassFIO.Value;
     fmNewPass.ePas.Text :=dm.cdsPassPASSPORT.Text;
     fmNewPass.eSex.Text :=dm.cdsPassPOL.Value;
     fmNewPass.eBirth.Date :=dm.cdsPassDATE_BIRTH.Value;

  fmNewPass.ShowModal;
  if (fmNewPass.ModalResult = mrOk) then
    begin
     try
       dm.DCOMConnection1.AppServer.smAddPass(dm.cdsPassID.Text,
       fmNewPass.eName.Text, fmNewPass.ePas.Text, fmNewPass.eSex.Text, fmNewPass.eBirth.Date);
     except
       MessageDlg('Ошибка записи', mtError, [mbOk], 0);
     end;
     dm.cdsPass.Refresh;
     end;
end;

procedure TfmPass.N3Click(Sender: TObject);
begin
MessageDlg('Удалить Пассажира?', mtConfirmation, [mbYes, mbNo], 0);
  dm.DCOMConnection1.AppServer.smDeletePass(dm.cdsPassID.Value);
  dm.cdsPass.Refresh;
end;

procedure TfmPass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewTicket.pass_id:= dm.cdsPassID.Value;
  fmNewTicket.pass_name:= dm.cdsPassFIO.Value;
end;

end.
