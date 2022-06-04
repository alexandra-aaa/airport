unit Unit29;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids;

type
  TOt1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Label4: TLabel;
    Edit3: TEdit;
    Button5: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    Button6: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Button7: TButton;
    Button8: TButton;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ot1: TOt1;

implementation

uses Unit2;

{$R *.dfm}

procedure TOt1.Button1Click(Sender: TObject);

begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsEmpl.Eof do
    begin
    if dm.cdsEmplDOLZH_NAME.Value = 'Õ‡˜‡Î¸ÌËÍ ÓÚ‰ÂÎ‡' then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsEmplID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
     dm.cdsTmp.Post;
     end;
     dm.cdsEmpl.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;



procedure TOt1.Button2Click(Sender: TObject);
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsEmpl.Eof do
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsEmplID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
     dm.cdsTmp.Post;
     dm.cdsEmpl.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt1.Button3Click(Sender: TObject);
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsBrigad.Eof do
    begin
    if dm.cdsBrigadOTDEL_NAME.Text = Ot1.Edit1.Text then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsBrigadID_EMPL.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsBrigadEMPL_NAME.Value;
     dm.cdsTmp.Post;
     end;
     dm.cdsBrigad.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;

procedure TOt1.Button4Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsEmpl.Eof do
    begin
    if dm.cdsEmplCHILDREN.Text = Ot1.Edit2.Text then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsEmplID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
     dm.cdsTmp.Post;
     end;
     dm.cdsEmpl.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;

procedure TOt1.Button5Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsEmpl.Eof do
    begin
    if dm.cdsEmplPOL.Value = Ot1.Edit3.Text then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsEmplID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
     dm.cdsTmp.Post;
     end;
     dm.cdsEmpl.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;

procedure TOt1.Button6Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsEmpl.Eof do
    begin
    if dm.cdsEmplSALARY.Text = Ot1.Edit4.Text then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsEmplID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
     dm.cdsTmp.Post;
     end;
     dm.cdsEmpl.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;

procedure TOt1.Button7Click(Sender: TObject);
 var
 y,m,d: Word;
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsEmpl.Eof do
    begin
    DecodeDate(StrToDate(dm.cdsEmplDAT_BIRTH.Text),y,m,d);
    if  IntToStr(y) =Ot1.Edit5.Text  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsEmplID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
     dm.cdsTmp.Post;
     end;
     dm.cdsEmpl.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;

procedure TOt1.Button8Click(Sender: TObject);
var
 y,m,d: Word;
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
    while not dm.cdsEmpl.Eof do
    begin
    DecodeDate(StrToDate(dm.cdsEmplDAT_PR.Text),y,m,d);
    if  IntToStr(y) =Ot1.Edit6.Text  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsEmplID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
     dm.cdsTmp.Post;
     end;
     dm.cdsEmpl.Next;
    end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

end.
