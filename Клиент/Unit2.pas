unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  Tdm = class(TDataModule)
    DCOMConnection1: TDCOMConnection;
    cdsOtdel: TClientDataSet;
    cdsOtdelID: TIntegerField;
    cdsOtdelNAME: TStringField;
    cdsBrigad: TClientDataSet;
    cdsDolzh: TClientDataSet;
    cdsEmerg: TClientDataSet;
    cdsEmpl: TClientDataSet;
    cdsFlight: TClientDataSet;
    cdsPass: TClientDataSet;
    cdsPlane: TClientDataSet;
    cdsPodgot: TClientDataSet;
    cdsRet: TClientDataSet;
    cdsRoute: TClientDataSet;
    cdsTicket: TClientDataSet;
    cdsTimetable: TClientDataSet;
    cdsBrigadID: TIntegerField;
    cdsBrigadID_OTD: TIntegerField;
    cdsBrigadID_EMPL: TIntegerField;
    cdsBrigadNAME: TStringField;
    cdsDolzhID: TIntegerField;
    cdsDolzhNAME: TStringField;
    cdsEmergID_F: TIntegerField;
    cdsEmergREASON: TStringField;
    cdsEmergRESULT: TStringField;
    cdsEmplID: TIntegerField;
    cdsEmplFIO: TStringField;
    cdsEmplID_DOL: TIntegerField;
    cdsEmplDAT_PR: TDateField;
    cdsEmplPOL: TStringField;
    cdsEmplDAT_BIRTH: TDateField;
    cdsEmplCHILDREN: TIntegerField;
    cdsEmplSALARY: TFloatField;
    cdsFlightID: TIntegerField;
    cdsFlightID_PL: TIntegerField;
    cdsFlightID_ROUTE: TIntegerField;
    cdsPassID: TIntegerField;
    cdsPassFIO: TStringField;
    cdsPassPASSPORT: TIntegerField;
    cdsPassPOL: TStringField;
    cdsPassDATE_BIRTH: TDateField;
    cdsPlaneID: TIntegerField;
    cdsPlaneMODEL: TStringField;
    cdsPlaneCLASS_F: TIntegerField;
    cdsPlaneCLASS_S: TIntegerField;
    cdsPlaneID_CREW: TIntegerField;
    cdsPlaneID_TEHN: TIntegerField;
    cdsPodgotID_PL: TIntegerField;
    cdsPodgotDAT: TDateField;
    cdsPodgotRESULT: TStringField;
    cdsRetID_T: TIntegerField;
    cdsRetDAT: TDateField;
    cdsRouteID: TIntegerField;
    cdsRoutePLACE_FROM: TStringField;
    cdsRoutePLACE_IN: TStringField;
    cdsRouteTIM: TFloatField;
    cdsRoutePRICE_1: TFloatField;
    cdsRoutePRICE_2: TFloatField;
    cdsTicketID: TIntegerField;
    cdsTicketID_PAS: TIntegerField;
    cdsTicketID_FL: TIntegerField;
    cdsTicketDATE_SALE: TDateField;
    cdsTicketRESER: TStringField;
    cdsTicketCLASS: TIntegerField;
    cdsTimetableID_FL: TIntegerField;
    cdsTimetableDAT: TDateField;
    cdsEmplDOLZH_NAME: TStringField;
    cdsBrigadOTDEL_NAME: TStringField;
    cdsBrigadEMPL_NAME: TStringField;
    cdsPlaneCREW_NAME: TStringField;
    cdsPlaneTEHN_NAME: TStringField;
    cdsPodgotPLANE_NAME: TStringField;
    cdsFlightPLANE_NAME: TStringField;
    cdsFlightPLASE_FROM: TStringField;
    cdsFlightPLACE_IN: TStringField;
    cdsEmergPLACE_FROM: TStringField;
    cdsEmergPLACE_IN: TStringField;
    cdsTimetableID: TIntegerField;
    cdsTimetableTIM: TStringField;
    cdsTimetablePLACE_FROM: TStringField;
    cdsTimetablePLACE_IN: TStringField;
    cdsTicketID_TIMETABLE: TIntegerField;
    cdsTicketFIO: TStringField;
    cdsTicketTIME: TStringField;
    cdsRetFIO: TStringField;
    cdsTmp: TClientDataSet;
    cdsTmpID: TIntegerField;
    cdsTmpNAME: TStringField;
    cdsFlightTIME: TIntegerField;
    cdsFlightPRICE: TIntegerField;
    cdsTicketPLACE_FROM: TStringField;
    cdsTicketPLACE_IN: TStringField;
    cdsTicketDATE_FL: TDateField;
    cdsTicketPRICE: TIntegerField;
    cdsRetID_FL: TIntegerField;
    cdsRetDATE_FL: TDateField;
    cdsRetPLACE_FROM: TStringField;
    cdsRetPLACE_IN: TStringField;
    cdsRetPRICE: TIntegerField;
    cdsTicketAGE: TDateField;
    cdsTicketSEX: TStringField;
    cdsRetAGE: TDateField;
    cdsRetSEX: TStringField;
    cdsTmp2: TClientDataSet;
    cdsTmp2ID: TIntegerField;
    cdsTmp2NAME: TStringField;
    cdsTmp2SUMM: TIntegerField;
    cdsTmp2PROC: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
cdsOtdel.Open;
cdsBrigad.Open;
cdsDolzh.Open;
cdsEmerg.Open;
cdsEmpl.Open;
cdsFlight.Open;
cdsPass.Open;
cdsPlane.Open;
cdsPodgot.Open;
cdsRet.Open;
cdsRoute.Open;
cdsTicket.Open;
cdsTimetable.Open;
end;



end.
