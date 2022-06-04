unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, DateUtils, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Button1: TButton;
    N9: TMenuItem;
    Button2: TButton;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    Button3: TButton;
    DBGrid1: TDBGrid;
    N14: TMenuItem;
    Button4: TButton;
    Image1: TImage;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit5, Unit7, Unit9, Unit11, Unit13, Unit15, Unit17, Unit19,
  Unit21, Unit23, Unit25, Unit27, Unit2;

{$R *.dfm}

procedure TForm1.N1Click(Sender: TObject);
begin
fmOtdel.ShowModal;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
fmDolzh.ShowModal;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
fmRoute.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
fmPass.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
 fmEmpl.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
 fmBrigad.ShowModal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
 fmPlane.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
fmPass.ShowModal;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
fmPodgot.ShowModal;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
fmFlight.ShowModal;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
fmEmerg.ShowModal;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
fmTimetable.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
fmTicket.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
fmReturn.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);

var i:integer; s:string;
     Start, Stop : TDateTime;
begin
  Start:= Now;
  for i := 1 to 10 do
    dm.DCOMConnection1.AppServer.smAddPass(0, 'тест', 0, 1,1);
     Stop:= Now;
     MillisecondsBetween(Start, Stop) ;
     s :=s + ' 10 ' + IntToStr(MilliSecondsBetween(Start, Stop));

    Start:= Now;
  for i := 1 to 50 do
    dm.DCOMConnection1.AppServer.smAddPass(0, 'тест', 0, 1,1);
   Stop:= Now;
   MillisecondsBetween(Start, Stop) ;
   s :=s + ' 50 ' + IntToStr(MilliSecondsBetween(Start, Stop));

  Start:= Now;
  for i := 1 to 100 do
    dm.DCOMConnection1.AppServer.smAddPass(0, 'тест', 0, 1,1);
  Stop:= Now;
  MillisecondsBetween(Start, Stop);
  s :=s + ' 100 ' + IntToStr(MilliSecondsBetween(Start, Stop));

  Start:= Now;
  for i := 1 to 500 do
    dm.DCOMConnection1.AppServer.smAddPass(0, 'тест', 0, 1,1);
  Stop:= Now;
  MillisecondsBetween(Start, Stop);
  s :=s + ' 500 ' + IntToStr(MilliSecondsBetween(Start, Stop));

 Start:= Now;
  for i := 1 to 1000 do
    dm.DCOMConnection1.AppServer.smAddPass(0, 'тест', 0, 1,1);
 Stop:= Now;
 MillisecondsBetween(Start, Stop);
 s :=s + ' 1000 ' + IntToStr(MilliSecondsBetween(Start, Stop));
  ShowMessage(s);

end;

end.
