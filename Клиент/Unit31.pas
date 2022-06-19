unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, Grids, DBGrids;

type
  TOt3 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Button3: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    Button4: TButton;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ot3: TOt3;

implementation

uses Unit2, Unit30;

{$R *.dfm}

procedure TOt3.Button1Click(Sender: TObject);
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsTicket.First;
    while not dm.cdsTicket.Eof do
    begin
    if (dm.cdsTicketID_FL.Text = Ot3.Edit1.Text) and (dm.cdsTicketRESER.Value='הא')  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsTicketID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsTicketFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsTicket.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='ÈÌ‗';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt3.Button2Click(Sender: TObject);
begin
  if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsTicket.First;
    while not dm.cdsTicket.Eof do
    begin
    if (DateToStr(dm.cdsTicketDATE_FL.Value) = DateToStr(Ot3.DateTimePicker1.Date)) and (dm.cdsTicketRESER.Value='הא')  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsTicketID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsTicketFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsTicket.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='ÈÌ‗';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt3.Button5Click(Sender: TObject);
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsTicket.First;
    while not dm.cdsTicket.Eof do
    begin
    if (dm.cdsTicketTIME.Value = Ot3.Edit5.Text) and (dm.cdsTicketRESER.Value='הא')  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsTicketID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsTicketFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsTicket.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='ÈÌ‗';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt3.Button3Click(Sender: TObject);
begin
 if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsTicket.First;
    while not dm.cdsTicket.Eof do
    begin
    if (dm.cdsTicketPLACE_FROM.Value = Ot3.Edit2.Text) and (dm.cdsTicketPLACE_IN.Value = Ot3.Edit3.Text) and (dm.cdsTicketRESER.Value='הא')  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsTicketID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsTicketFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsTicket.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='ÈÌ‗';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

procedure TOt3.Button4Click(Sender: TObject);
begin
  if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsTicket.First;
    while not dm.cdsTicket.Eof do
    begin
    if  (dm.cdsTicketPRICE.Text = Ot3.Edit4.Text) and (dm.cdsTicketRESER.Value='הא')  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsTicketID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsTicketFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsTicket.Next;
      end;
dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='ÈÌ‗';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

end.




procedure TOt3.Button4Click(Sender: TObject);
begin
  if dm.cdsTmp.Active then
  begin
    dm.cdsTmp.CancelUpdates;
    dm.cdsTmp.Close;
  end;
  dm.cdsTmp.Open;
  dm.cdsTmp.AddIndex('indxID','ID',[],'','');
  dm.cdsTmp.IndexFieldNames:='ID';
  dm.cdsTicket.First;
    while not dm.cdsTicket.Eof do
    begin
    if  (dm.cdsTicketPLACE_FROM.Value = Ot3.Edit2.Text) and (dm.cdsTicketPLACE_IN.Value = Ot3.Edit3.Text) and
    (dm.cdsTicketTIME.Value = Ot3.Edit5.Text) and (DateToStr(dm.cdsTicketDATE_FL.Value) = DateToStr(Ot3.DateTimePicker1.Date)) and
    (dm.cdsTicketID_FL.Text = Ot3.Edit1.Text) and (dm.cdsTicketPRICE.Text = Ot3.Edit4.Text) and (dm.cdsTicketRESER.Value='הא')  then
    begin
     dm.cdsTmp.Append;
     dm.cdsTmp.FieldByName('ID').Value:=dm.cdsTicketID.Value;
     dm.cdsTmp.FieldByName('NAME').Value:=dm.cdsTicketFIO.Value;

     dm.cdsTmp.Post;
     end;
     dm.cdsTicket.Next;
      end;


dm.cdsTmp.FieldByName('ID').DisplayLabel:='id';
dm.cdsTmp.FieldByName('NAME').DisplayLabel:='ÈÌ‗';
dm.cdsTmp.FieldByName('ID').DisplayWidth:=10;
 dm.cdsTmp.FieldByName('NAME').DisplayWidth:=15;
DataSource1.DataSet:=dm.cdsTmp;
end;

end.
