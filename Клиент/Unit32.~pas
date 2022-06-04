unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, Grids, DBGrids;

type
  TOt4 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    Edit3: TEdit;
    Label4: TLabel;
    Button3: TButton;
    Edit4: TEdit;
    Label5: TLabel;
    Button4: TButton;
    DateTimePicker2: TDateTimePicker;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Label1: TLabel;
    Button5: TButton;
    Edit6: TEdit;
    Label8: TLabel;
    Button6: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ot4: TOt4;

implementation

uses Unit2;

{$R *.dfm}

procedure TOt4.Button1Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsRet.First;
    while not dm.cdsRet.Eof do
    begin
    if (dm.cdsRetID_FL.Text = Ot4.Edit1.Text)  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsRetID_T.Text;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsRetFIO.Text;
     dm.cdsTmp.Post;
     end;
     dm.cdsRet.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt4.Button2Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsRet.First;
    while not dm.cdsRet.Eof do
    begin
    if (DateToStr(dm.cdsRetDAT.Value) = DateToStr(Ot4.DateTimePicker2.Date))  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsRetID_T.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsRetFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsRet.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt4.Button6Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsRet.First;
    while not dm.cdsRet.Eof do
    begin
    if (dm.cdsRetSEX.Text = Ot4.Edit6.Text)   then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsRetID_FL.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsRetFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsRet.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt4.Button3Click(Sender: TObject);
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsRet.First;
    while not dm.cdsRet.Eof do
    begin
    if (dm.cdsRetPLACE_FROM.Text =Ot4.Edit2.Text) and (dm.cdsRetPLACE_IN.Text =Ot4.Edit3.Text) then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsRetID_T.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsRetFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsRet.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt4.Button4Click(Sender: TObject);
begin
  if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsRet.First;
    while not dm.cdsRet.Eof do
    begin
    if  (dm.cdsRetPRICE.Text =Ot4.Edit5.Text) then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsRetID_T.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsRetFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsRet.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt4.Button5Click(Sender: TObject);
var y,m,d : Word;
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsRet.First;
    while not dm.cdsRet.Eof do
    begin
    DecodeDate(StrToDate(dm.cdsRetAGE.Text),y,m,d);
    if  IntToStr(y) = Ot4.Edit4.Text then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsRetID_T.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsRetFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsRet.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

end.
