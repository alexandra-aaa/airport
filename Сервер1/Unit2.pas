unit Unit2;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, Project1_TLB, StdVcl, Provider, IBStoredProc, DB,
  IBCustomDataSet, IBTable, IBDatabase;

type
  TMyServer = class(TRemoteDataModule, IMyServer)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    TBrigad: TIBTable;
    TDolzh: TIBTable;
    TEmerg: TIBTable;
    TEmpl: TIBTable;
    TFlight: TIBTable;
    TOtdel: TIBTable;
    TPass: TIBTable;
    TPlane: TIBTable;
    TPodgot: TIBTable;
    TRet: TIBTable;
    TRoute: TIBTable;
    TTicket: TIBTable;
    TTimetable: TIBTable;
    spAddBrigad: TIBStoredProc;
    spDeleteBrigad: TIBStoredProc;
    spAddDolzh: TIBStoredProc;
    spDeleteDolzh: TIBStoredProc;
    spAddEmerg: TIBStoredProc;
    spDeleteEmerg: TIBStoredProc;
    spAddEmpl: TIBStoredProc;
    spDeleteEmpl: TIBStoredProc;
    spAddFlight: TIBStoredProc;
    spDeleteFlight: TIBStoredProc;
    spAddOtdel: TIBStoredProc;
    spDeleteOtdel: TIBStoredProc;
    spAddPass: TIBStoredProc;
    spDeletePass: TIBStoredProc;
    spAddPlane: TIBStoredProc;
    spDeletePlane: TIBStoredProc;
    spAddPodgot: TIBStoredProc;
    spDeletePodgot: TIBStoredProc;
    spAddRet: TIBStoredProc;
    spDeleteRet: TIBStoredProc;
    spAddRoute: TIBStoredProc;
    spDeleteRoute: TIBStoredProc;
    spAddTicket: TIBStoredProc;
    spDeleteTicket: TIBStoredProc;
    spAddTimetable: TIBStoredProc;
    spDeleteTimetable: TIBStoredProc;
    dspBrigad: TDataSetProvider;
    dspDolzh: TDataSetProvider;
    dspEmerg: TDataSetProvider;
    dspEmpl: TDataSetProvider;
    dspFlight: TDataSetProvider;
    dspPass: TDataSetProvider;
    dspOtdel: TDataSetProvider;
    dspPlane: TDataSetProvider;
    dspPodgot: TDataSetProvider;
    dspRet: TDataSetProvider;
    dspRoute: TDataSetProvider;
    dspTicket: TDataSetProvider;
    dspTimetable: TDataSetProvider;
    TTmp: TIBTable;
    dspTmp: TDataSetProvider;
    TTmp2: TIBTable;
    dspTmp2: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure smAddBrigad(ID, ID_OTD, ID_EMPL: Integer; const NAM: WideString);
      safecall;
    procedure smDeleteBrigad(ID: Integer); safecall;
    procedure smAddDolzh(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteDolzh(ID: Integer); safecall;
    procedure smAddEmerg(ID_F: Integer; const REASON, RES: WideString);
      safecall;
    procedure smDeleteEmerg(ID_F: Integer); safecall;
    procedure smAddEmpl(ID: Integer; const FIO: WideString; ID_DOL: Integer;
      DAT_PR: TDateTime; const POL: WideString; DAT_BIRTH: TDateTime;
      CHILDREN, SALARY: Integer); safecall;
    procedure smDeleteEmpl(ID: Integer); safecall;
    procedure smAddFlight(ID, ID_PL, ID_ROUTE: Integer); safecall;
    procedure smDeleteFlight(ID: Integer); safecall;
    procedure smAddOtdel(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteOtdel(ID: Integer); safecall;
    procedure smAddPass(ID: Integer; const FIO: WideString; PASSPORT: Integer;
      const POL: WideString; DATE_BIRTH: TDateTime); safecall;
    procedure smDeletePass(ID: Integer); safecall;
   
    procedure smAddPlane(ID: Integer; const MODEL: WideString; FCLASS, SCLASS,
      ID_CREW, ID_TEHN: Integer); safecall;
    procedure smDeletePlane(ID: Integer); safecall;
    procedure smAddPodgot(ID_PL: Integer; DAT: TDateTime;
      const RESULT: WideString); safecall;
    procedure smDeletePodot(ID_PL: Integer); safecall;
    procedure smAddRet(ID_T: Integer; DAT: TDateTime); safecall;
    procedure smDeleteRet(ID_T: Integer); safecall;
    procedure smAddRoute(ID: Integer; const PLACE_FROM, PLACE_IN: WideString;
      TIM, PRICE_1, PRICE_2: Single); safecall;
    procedure smDeleteRoute(ID: Integer); safecall;
    procedure smAddTicket(ID, ID_PAS, ID_FL: Integer; DATE_SALE: TDateTime;
      const RESER: WideString; ID_TIMETABLE, CLAS: Integer); safecall;
    procedure smDeleteTicket(ID: Integer); safecall;
    procedure smAddTimetable(ID, ID_FL: Integer; DAT: TDateTime;
      const TIM: WideString); safecall;
    procedure smDeleteTimetable(ID: Integer); safecall;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TMyServer.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TMyServer.smAddBrigad(ID, ID_OTD, ID_EMPL: Integer;
  const NAM: WideString);
begin
    if (spAddBrigad.transaction.inTransaction) then
    spAddBrigad.transaction.Commit;
    spAddBrigad.Params[0].Value := ID;
    spAddBrigad.Params[1].Value := ID_OTD;
    spAddBrigad.Params[2].Value := ID_EMPL;
    spAddBrigad.Params[3].Value := NAM;
    spAddBrigad.ExecProc;
    if (spAddBrigad.transaction.inTransaction) then
    spAddBrigad.transaction.Commit;
end;

procedure TMyServer.smDeleteBrigad(ID: Integer);
begin
   if (spDeleteBrigad.transaction.inTransaction) then
    spDeleteBrigad.transaction.Commit;
    spDeleteBrigad.Params[0].Value := ID;
    spDeleteBrigad.ExecProc;
    if (spDeleteBrigad.transaction.inTransaction) then
    spDeleteBrigad.transaction.Commit;
end;

procedure TMyServer.smAddDolzh(ID: Integer; const NAME: WideString);
begin
    if (spAddDolzh.transaction.inTransaction) then
    spAddDolzh.transaction.Commit;
    spAddDolzh.Params[0].Value := ID;
    spAddDolzh.Params[1].Value := NAME;
    spAddDolzh.ExecProc;
    if (spAddDolzh.transaction.inTransaction) then
    spAddDolzh.transaction.Commit;
end;

procedure TMyServer.smDeleteDolzh(ID: Integer);
begin
     if (spDeleteDolzh.transaction.inTransaction) then
    spDeleteDolzh.transaction.Commit;
    spDeleteDolzh.Params[0].Value := ID;
    spDeleteDolzh.ExecProc;
    if (spDeleteDolzh.transaction.inTransaction) then
    spDeleteDolzh.transaction.Commit;
end;

procedure TMyServer.smAddEmerg(ID_F: Integer; const REASON,
  RES: WideString);
begin
    if (spAddEmerg.transaction.inTransaction) then
    spAddEmerg.transaction.Commit;
    spAddEmerg.Params[0].Value := ID_F;
    spAddEmerg.Params[1].Value := REASON;
    spAddEmerg.Params[2].Value := RES;
    spAddEmerg.ExecProc;
    if (spAddEmerg.transaction.inTransaction) then
    spAddEmerg.transaction.Commit;
end;

procedure TMyServer.smDeleteEmerg(ID_F: Integer);
begin
    if (spDeleteEmerg.transaction.inTransaction) then
    spDeleteEmerg.transaction.Commit;
    spDeleteEmerg.Params[0].Value := ID_F;
    spDeleteEmerg.ExecProc;
    if (spDeleteEmerg.transaction.inTransaction) then
    spDeleteEmerg.transaction.Commit;
end;

procedure TMyServer.smAddEmpl(ID: Integer; const FIO: WideString;
  ID_DOL: Integer; DAT_PR: TDateTime; const POL: WideString;
  DAT_BIRTH: TDateTime; CHILDREN, SALARY: Integer);
begin
   if (spAddEmpl.transaction.inTransaction) then
    spAddEmpl.transaction.Commit;
    spAddEmpl.Params[0].Value := ID;
    spAddEmpl.Params[1].Value := FIO;
    spAddEmpl.Params[2].Value := ID_DOL;
    spAddEmpl.Params[3].Value := DAT_PR;
    spAddEmpl.Params[4].Value := POL;
    spAddEmpl.Params[5].Value := DAT_BIRTH;
    spAddEmpl.Params[6].Value := CHILDREN;
    spAddEmpl.Params[7].Value := SALARY;
    spAddEmpl.ExecProc;
    if (spAddEmpl.transaction.inTransaction) then
    spAddEmpl.transaction.Commit;
end;

procedure TMyServer.smDeleteEmpl(ID: Integer);
begin
       if (spDeleteEmpl.transaction.inTransaction) then
    spDeleteEmpl.transaction.Commit;
    spDeleteEmpl.Params[0].Value := ID;
    spDeleteEmpl.ExecProc;
    if (spDeleteEmpl.transaction.inTransaction) then
    spDeleteEmpl.transaction.Commit;
end;

procedure TMyServer.smAddFlight(ID, ID_PL, ID_ROUTE: Integer);
begin
        if (spAddFlight.transaction.inTransaction) then
    spAddFlight.transaction.Commit;
    spAddFlight.Params[0].Value := ID;
    spAddFlight.Params[1].Value := ID_PL;
    spAddFlight.Params[2].Value := ID_ROUTE;
    spAddFlight.ExecProc;
    if (spAddFlight.transaction.inTransaction) then
    spAddFlight.transaction.Commit;
end;

procedure TMyServer.smDeleteFlight(ID: Integer);
begin
    if (spDeleteFlight.transaction.inTransaction) then
    spDeleteFlight.transaction.Commit;
    spDeleteFlight.Params[0].Value := ID;
    spDeleteFlight.ExecProc;
    if (spDeleteFlight.transaction.inTransaction) then
    spDeleteFlight.transaction.Commit;
end;

procedure TMyServer.smAddOtdel(ID: Integer; const NAME: WideString);
begin
    if (spAddOtdel.transaction.inTransaction) then
    spAddOtdel.transaction.Commit;
    spAddOtdel.Params[0].Value := ID;
    spAddOtdel.Params[1].Value := NAME;
    spAddOtdel.ExecProc;
    if (spAddOtdel.transaction.inTransaction) then
    spAddOtdel.transaction.Commit;
end;

procedure TMyServer.smDeleteOtdel(ID: Integer);
begin
    if (spDeleteOtdel.transaction.inTransaction) then
    spDeleteOtdel.transaction.Commit;
    spDeleteOtdel.Params[0].Value := ID;
    spDeleteOtdel.ExecProc;
    if (spDeleteOtdel.transaction.inTransaction) then
    spDeleteOtdel.transaction.Commit;
end;

procedure TMyServer.smAddPass(ID: Integer; const FIO: WideString;
  PASSPORT: Integer; const POL: WideString; DATE_BIRTH: TDateTime);
begin
    if (spAddPass.transaction.inTransaction) then
    spAddPass.transaction.Commit;
    spAddPass.Params[0].Value := ID;
    spAddPass.Params[1].Value := FIO;
    spAddPass.Params[2].Value := PASSPORT;
    spAddPass.Params[3].Value := POL;
    spAddPass.Params[4].Value := DATE_BIRTH;
    spAddPass.ExecProc;
    if (spAddPass.transaction.inTransaction) then
    spAddPass.transaction.Commit;
end;

procedure TMyServer.smDeletePass(ID: Integer);
begin
    if (spDeletePass.transaction.inTransaction) then
    spDeletePass.transaction.Commit;
    spDeletePass.Params[0].Value := ID;
    spDeletePass.ExecProc;
    if (spDeletePass.transaction.inTransaction) then
    spDeletePass.transaction.Commit;
end;


procedure TMyServer.smAddPlane(ID: Integer; const MODEL: WideString;
  FCLASS, SCLASS, ID_CREW, ID_TEHN: Integer);
begin
     if (spAddPlane.transaction.inTransaction) then
    spAddPlane.transaction.Commit;
    spAddPlane.Params[0].Value := ID;
    spAddPlane.Params[1].Value := MODEL;
    spAddPlane.Params[2].Value := FCLASS;
    spAddPlane.Params[3].Value := SCLASS;
    spAddPlane.Params[4].Value := ID_CREW;
    spAddPlane.Params[5].Value := ID_TEHN;
    spAddPlane.ExecProc;
    if (spAddPlane.transaction.inTransaction) then
    spAddPlane.transaction.Commit;
end;

procedure TMyServer.smDeletePlane(ID: Integer);
begin
    if (spDeletePlane.transaction.inTransaction) then
    spDeletePlane.transaction.Commit;
    spDeletePlane.Params[0].Value := ID;
    spDeletePlane.ExecProc;
    if (spDeletePlane.transaction.inTransaction) then
    spDeletePlane.transaction.Commit;
end;

procedure TMyServer.smAddPodgot(ID_PL: Integer; DAT: TDateTime;
  const RESULT: WideString);
begin
    if (spAddPodgot.transaction.inTransaction) then
    spAddPodgot.transaction.Commit;
    spAddPodgot.Params[0].Value := ID_PL;
    spAddPodgot.Params[1].Value := DAT;
    spAddPodgot.Params[2].Value := RESULT;
    spAddPodgot.ExecProc;
    if (spAddPodgot.transaction.inTransaction) then
    spAddPodgot.transaction.Commit;
end;

procedure TMyServer.smDeletePodot(ID_PL: Integer);
begin
    if (spDeletePodgot.transaction.inTransaction) then
    spDeletePodgot.transaction.Commit;
    spDeletePodgot.Params[0].Value := ID_PL;
    spDeletePodgot.ExecProc;
    if (spDeletePodgot.transaction.inTransaction) then
    spDeletePodgot.transaction.Commit;
end;

procedure TMyServer.smAddRet(ID_T: Integer; DAT: TDateTime);
begin
    if (spAddRet.transaction.inTransaction) then
    spAddRet.transaction.Commit;
    spAddRet.Params[0].Value := ID_T;
    spAddRet.Params[1].Value := DAT;
    spAddRet.ExecProc;
    if (spAddRet.transaction.inTransaction) then
    spAddRet.transaction.Commit;
end;

procedure TMyServer.smDeleteRet(ID_T: Integer);
begin
    if (spDeleteRet.transaction.inTransaction) then
    spDeleteRet.transaction.Commit;
    spDeleteRet.Params[0].Value := ID_T;
    spDeleteRet.ExecProc;
    if (spDeleteRet.transaction.inTransaction) then
    spDeleteRet.transaction.Commit;
end;

procedure TMyServer.smAddRoute(ID: Integer; const PLACE_FROM,
  PLACE_IN: WideString; TIM, PRICE_1, PRICE_2: Single);
begin
    if (spAddRoute.transaction.inTransaction) then
    spAddRoute.transaction.Commit;
    spAddRoute.Params[0].Value := ID;
    spAddRoute.Params[1].Value := PLACE_FROM;
    spAddRoute.Params[2].Value := PLACE_IN;
    spAddRoute.Params[3].Value := TIM;
    spAddRoute.Params[4].Value := PRICE_1;
    spAddRoute.Params[5].Value := PRICE_2;
    spAddRoute.ExecProc;
    if (spAddRoute.transaction.inTransaction) then
    spAddRoute.transaction.Commit;
end;

procedure TMyServer.smDeleteRoute(ID: Integer);
begin
     if (spDeleteRoute.transaction.inTransaction) then
    spDeleteRoute.transaction.Commit;
    spDeleteRoute.Params[0].Value := ID;
    spDeleteRoute.ExecProc;
    if (spDeleteRoute.transaction.inTransaction) then
    spDeleteRoute.transaction.Commit;
end;

procedure TMyServer.smAddTicket(ID, ID_PAS, ID_FL: Integer;
  DATE_SALE: TDateTime; const RESER: WideString; ID_TIMETABLE,
  CLAS: Integer);
begin
    if (spAddTicket.transaction.inTransaction) then
    spAddTicket.transaction.Commit;
    spAddTicket.Params[0].Value := ID;
    spAddTicket.Params[1].Value := ID_PAS;
    spAddTicket.Params[2].Value := ID_FL;
    spAddTicket.Params[3].Value := DATE_SALE;
    spAddTicket.Params[4].Value := RESER;
    spAddTicket.Params[5].Value := ID_TIMETABLE;
    spAddTicket.Params[6].Value := CLAS;
    spAddTicket.ExecProc;
    if (spAddTicket.transaction.inTransaction) then
    spAddTicket.transaction.Commit;
end;

procedure TMyServer.smDeleteTicket(ID: Integer);
begin
    if (spDeleteTicket.transaction.inTransaction) then
    spDeleteTicket.transaction.Commit;
    spDeleteTicket.Params[0].Value := ID;
    spDeleteTicket.ExecProc;
    if (spDeleteTicket.transaction.inTransaction) then
    spDeleteTicket.transaction.Commit;
end;

procedure TMyServer.smAddTimetable(ID, ID_FL: Integer; DAT: TDateTime;
  const TIM: WideString);
begin
    if (spAddTimetable.transaction.inTransaction) then
    spAddTimetable.transaction.Commit;
    spAddTimetable.Params[0].Value := ID;
    spAddTimetable.Params[1].Value := ID_FL;
    spAddTimetable.Params[2].Value := DAT;
    spAddTimetable.Params[3].Value := TIM;
    spAddTimetable.ExecProc;
    if (spAddTimetable.transaction.inTransaction) then
    spAddTimetable.transaction.Commit;
end;

procedure TMyServer.smDeleteTimetable(ID: Integer);
begin
    if (spDeleteTimetable.transaction.inTransaction) then
    spDeleteTimetable.transaction.Commit;
    spDeleteTimetable.Params[0].Value := ID;
    spDeleteTimetable.ExecProc;
    if (spDeleteTimetable.transaction.inTransaction) then
    spDeleteTimetable.transaction.Commit;
end;

initialization
  TComponentFactory.Create(ComServer, TMyServer,
    Class_MyServer, ciMultiInstance, tmSingle);
end.
