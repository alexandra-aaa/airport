unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids;

type
  TOt5 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ot5: TOt5;

implementation

uses Unit2;

{$R *.dfm}

procedure TOt5.Button1Click(Sender: TObject);
var
id : integer;
begin
 if dm.cdsTmp2.Active then
  begin
    dm.cdsTmp2.CancelUpdates;
    dm.cdsTmp2.Close;
  end;
  dm.cdsTmp2.Open;
  dm.cdsTmp2.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp2.IndexFieldNames:='ID';
  dm.cdsRet.First;
  while not dm.cdsEmerg.Eof do
  begin
  while not dm.cdsRet.Eof do
  begin
   if  (dm.cdsRetID_FL.Value= dm.cdsEmergID_F.Value) then begin
  id:= dm.cdsRetID_FL.Value;
  if dm.cdsTmp2.FindKey([id]) then
      dm.cdsTmp2.Edit
      else
       begin
      dm.cdsTmp2.Append;
      dm.cdsTmp2.FieldByName('ID').Value:=id;
      dm.cdsTmp2.FieldByName('NAME').Value:=dm.cdsRetID_FL.Value;
      dm.cdsTmp2.FieldByName('SUMM').Value:=0;
      end;
       dm.cdsTmp2.fieldByName('SUMM').Value:=dm.cdsTmp2.FieldByName('SUMM').Value+1;
       dm.cdsTmp2.Post;
       end;
       dm.cdsRet.Next;
   end;
    dm.cdsEmerg.Next;
  end;
    dm.cdsTmp2.FieldByName('ID').DisplayLabel:='Код';
    dm.cdsTmp2.FieldByName('NAME').DisplayLabel:='Наимнование';
    dm.cdsTmp2.FieldByName('SUMM').DisplayLabel:='Количесиво';
    dm.cdsTmp2.FieldByName('PROC').Visible := False;
    dm.cdsTmp2.FieldByName('ID').DisplayWidth:=10;
   dm.cdsTmp2.FieldByName('NAME').DisplayWidth:=15;
   dm.cdsTmp2.FieldByName('SUMM').DisplayWidth:=15;
    DataSource1.DataSet:=dm.cdsTmp2;

end;

procedure TOt5.Button3Click(Sender: TObject);
var
id : integer;
begin
 if dm.cdsTmp2.Active then
  begin
    dm.cdsTmp2.CancelUpdates;
    dm.cdsTmp2.Close;
  end;
  dm.cdsTmp2.Open;
  dm.cdsTmp2.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp2.IndexFieldNames:='ID';
  dm.cdsRet.First;
  while not dm.cdsEmerg.Eof do
  begin
  while not dm.cdsRet.Eof do
  begin
   if  (dm.cdsRetID_FL.Value= dm.cdsEmergID_F.Value) and (dm.cdsRetID_FL.Text= Ot5.Edit1.Text) then begin
  id:= dm.cdsRetID_FL.Value;
  if dm.cdsTmp2.FindKey([id]) then
      dm.cdsTmp2.Edit
      else
       begin
      dm.cdsTmp2.Append;
      dm.cdsTmp2.FieldByName('ID').Value:=id;
      dm.cdsTmp2.FieldByName('NAME').Value:=dm.cdsRetID_FL.Value;
      dm.cdsTmp2.FieldByName('SUMM').Value:=0;
      end;
       dm.cdsTmp2.fieldByName('SUMM').Value:=dm.cdsTmp2.FieldByName('SUMM').Value+1;
       dm.cdsTmp2.Post;
       end;
       dm.cdsRet.Next;
   end;
    dm.cdsEmerg.Next;
  end;
    dm.cdsTmp2.FieldByName('ID').DisplayLabel:='Код';
    dm.cdsTmp2.FieldByName('NAME').DisplayLabel:='Наимнование';
    dm.cdsTmp2.FieldByName('SUMM').DisplayLabel:='Количесиво';
    dm.cdsTmp2.FieldByName('PROC').Visible := False;
    dm.cdsTmp2.FieldByName('ID').DisplayWidth:=10;
   dm.cdsTmp2.FieldByName('NAME').DisplayWidth:=15;
   dm.cdsTmp2.FieldByName('SUMM').DisplayWidth:=15;
    DataSource1.DataSet:=dm.cdsTmp2;


end;

procedure TOt5.Button2Click(Sender: TObject);
var
id : integer;
begin
 if dm.cdsTmp2.Active then
  begin
    dm.cdsTmp2.CancelUpdates;
    dm.cdsTmp2.Close;
  end;
  dm.cdsTmp2.Open;
  dm.cdsTmp2.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp2.IndexFieldNames:='ID';
  dm.cdsRet.First;
  while not dm.cdsRet.Eof do
  begin
   if   (dm.cdsRetPLACE_FROM.Text= Ot5.Edit2.Text) and (dm.cdsRetPLACE_IN.Text= Ot5.Edit3.Text) then
   begin
  id:= dm.cdsRetID_FL.Value;
  if dm.cdsTmp2.FindKey([id]) then
      dm.cdsTmp2.Edit
      else
       begin
      dm.cdsTmp2.Append;
      dm.cdsTmp2.FieldByName('ID').Value:=id;
      dm.cdsTmp2.FieldByName('NAME').Value:=dm.cdsRetID_FL.Value;
      dm.cdsTmp2.FieldByName('SUMM').Value:=0;
      end;
       dm.cdsTmp2.fieldByName('SUMM').Value:=dm.cdsTmp2.FieldByName('SUMM').Value+1;
       dm.cdsTmp2.Post;
       dm.cdsRet.Next;
        end;
        end;
    dm.cdsTmp2.FieldByName('ID').DisplayLabel:='Код';
    dm.cdsTmp2.FieldByName('NAME').DisplayLabel:='Наимнование';
    dm.cdsTmp2.FieldByName('SUMM').DisplayLabel:='Количесиво';
    dm.cdsTmp2.FieldByName('PROC').Visible := False;
    dm.cdsTmp2.FieldByName('ID').DisplayWidth:=10;
   dm.cdsTmp2.FieldByName('NAME').DisplayWidth:=15;
   dm.cdsTmp2.FieldByName('SUMM').DisplayWidth:=15;
    DataSource1.DataSet:=dm.cdsTmp2;


end;

end.
