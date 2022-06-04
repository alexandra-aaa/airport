unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids;

type
  TOt2 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    Button3: TButton;
    Label5: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ot2: TOt2;

implementation

uses Unit2;

{$R *.dfm}

procedure TOt2.Button1Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsFlight.First;
    while not dm.cdsFlight.Eof do
    begin
    if ((dm.cdsFlightPLASE_FROM.Value = Ot2.Edit1.Text) and (dm.cdsFlightPLACE_IN.Value = Ot2.Edit2.Text))  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsFlightID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsFlightPLANE_NAME.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsFlight.Next;
      end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;

procedure TOt2.Button2Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsFlight.First;
    while not dm.cdsFlight.Eof do
    begin
    if (dm.cdsFlightTIME.Text = Ot2.Edit3.Text)  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsFlightID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsFlightPLANE_NAME.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsFlight.Next;
      end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;

end;

procedure TOt2.Button3Click(Sender: TObject);
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsFlight.First;
    while not dm.cdsFlight.Eof do
    begin
    if (dm.cdsFlightPRICE.Text = Ot2.Edit4.Text)  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsFlightID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsFlightPLANE_NAME.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsFlight.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt2.Button4Click(Sender: TObject);
begin
if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsFlight.First;
    while not dm.cdsFlight.Eof do
    begin
    if (dm.cdsFlightTIME.Text = Ot2.Edit3.Text)  and (dm.cdsFlightPRICE.Text = Ot2.Edit4.Text) and (dm.cdsFlightPLASE_FROM.Value = Ot2.Edit1.Text) and (dm.cdsFlightPLACE_IN.Value = Ot2.Edit2.Text)  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsFlightID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsFlightPLANE_NAME.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsFlight.Next;
      end;

dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='»Ãﬂ';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

end.
