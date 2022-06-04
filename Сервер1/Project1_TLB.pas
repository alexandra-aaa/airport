unit Project1_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 04.06.2020 12:31:08 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\11111\Сервер1\Project1.tlb (1)
// LIBID: {DD489CF5-AC18-45A1-958E-7DE3B6D3619C}
// LCID: 0
// Helpfile: 
// HelpString: Project1 Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\SysWOW64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Project1MajorVersion = 1;
  Project1MinorVersion = 0;

  LIBID_Project1: TGUID = '{DD489CF5-AC18-45A1-958E-7DE3B6D3619C}';

  IID_IMyServer: TGUID = '{EF813438-7D66-45D2-9782-04CAFD6A8DEB}';
  CLASS_MyServer: TGUID = '{F1E26B7E-F02C-4EAD-8785-9CBD6069FE50}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMyServer = interface;
  IMyServerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  MyServer = IMyServer;


// *********************************************************************//
// Interface: IMyServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF813438-7D66-45D2-9782-04CAFD6A8DEB}
// *********************************************************************//
  IMyServer = interface(IAppServer)
    ['{EF813438-7D66-45D2-9782-04CAFD6A8DEB}']
    procedure smAddBrigad(ID: Integer; ID_OTD: Integer; ID_EMPL: Integer; const NAM: WideString); safecall;
    procedure smDeleteBrigad(ID: Integer); safecall;
    procedure smAddDolzh(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteDolzh(ID: Integer); safecall;
    procedure smAddEmerg(ID_F: Integer; const REASON: WideString; const RES: WideString); safecall;
    procedure smDeleteEmerg(ID_F: Integer); safecall;
    procedure smAddEmpl(ID: Integer; const FIO: WideString; ID_DOL: Integer; DAT_PR: TDateTime; 
                        const POL: WideString; DAT_BIRTH: TDateTime; CHILDREN: Integer; 
                        SALARY: Integer); safecall;
    procedure smDeleteEmpl(ID: Integer); safecall;
    procedure smAddFlight(ID: Integer; ID_PL: Integer; ID_ROUTE: Integer); safecall;
    procedure smDeleteFlight(ID: Integer); safecall;
    procedure smAddOtdel(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteOtdel(ID: Integer); safecall;
    procedure smAddPass(ID: Integer; const FIO: WideString; PASSPORT: Integer; 
                        const POL: WideString; DATE_BIRTH: TDateTime); safecall;
    procedure smDeletePass(ID: Integer); safecall;
    procedure smAddPlane(ID: Integer; const MODEL: WideString; FCLASS: Integer; SCLASS: Integer; 
                         ID_CREW: Integer; ID_TEHN: Integer); safecall;
    procedure smDeletePlane(ID: Integer); safecall;
    procedure smAddPodgot(ID_PL: Integer; DAT: TDateTime; const RESULT: WideString); safecall;
    procedure smDeletePodot(ID_PL: Integer); safecall;
    procedure smAddRet(ID_T: Integer; DAT: TDateTime); safecall;
    procedure smDeleteRet(ID_T: Integer); safecall;
    procedure smAddRoute(ID: Integer; const PLACE_FROM: WideString; const PLACE_IN: WideString; 
                         TIM: Single; PRICE_1: Single; PRICE_2: Single); safecall;
    procedure smDeleteRoute(ID: Integer); safecall;
    procedure smAddTicket(ID: Integer; ID_PAS: Integer; ID_FL: Integer; DATE_SALE: TDateTime; 
                          const RESER: WideString; ID_TIMETABLE: Integer; CLAS: Integer); safecall;
    procedure smDeleteTicket(ID: Integer); safecall;
    procedure smAddTimetable(ID: Integer; ID_FL: Integer; DAT: TDateTime; const TIM: WideString); safecall;
    procedure smDeleteTimetable(ID: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IMyServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF813438-7D66-45D2-9782-04CAFD6A8DEB}
// *********************************************************************//
  IMyServerDisp = dispinterface
    ['{EF813438-7D66-45D2-9782-04CAFD6A8DEB}']
    procedure smAddBrigad(ID: Integer; ID_OTD: Integer; ID_EMPL: Integer; const NAM: WideString); dispid 301;
    procedure smDeleteBrigad(ID: Integer); dispid 302;
    procedure smAddDolzh(ID: Integer; const NAME: WideString); dispid 303;
    procedure smDeleteDolzh(ID: Integer); dispid 304;
    procedure smAddEmerg(ID_F: Integer; const REASON: WideString; const RES: WideString); dispid 305;
    procedure smDeleteEmerg(ID_F: Integer); dispid 306;
    procedure smAddEmpl(ID: Integer; const FIO: WideString; ID_DOL: Integer; DAT_PR: TDateTime; 
                        const POL: WideString; DAT_BIRTH: TDateTime; CHILDREN: Integer; 
                        SALARY: Integer); dispid 307;
    procedure smDeleteEmpl(ID: Integer); dispid 308;
    procedure smAddFlight(ID: Integer; ID_PL: Integer; ID_ROUTE: Integer); dispid 309;
    procedure smDeleteFlight(ID: Integer); dispid 310;
    procedure smAddOtdel(ID: Integer; const NAME: WideString); dispid 311;
    procedure smDeleteOtdel(ID: Integer); dispid 312;
    procedure smAddPass(ID: Integer; const FIO: WideString; PASSPORT: Integer; 
                        const POL: WideString; DATE_BIRTH: TDateTime); dispid 313;
    procedure smDeletePass(ID: Integer); dispid 314;
    procedure smAddPlane(ID: Integer; const MODEL: WideString; FCLASS: Integer; SCLASS: Integer; 
                         ID_CREW: Integer; ID_TEHN: Integer); dispid 315;
    procedure smDeletePlane(ID: Integer); dispid 316;
    procedure smAddPodgot(ID_PL: Integer; DAT: TDateTime; const RESULT: WideString); dispid 317;
    procedure smDeletePodot(ID_PL: Integer); dispid 318;
    procedure smAddRet(ID_T: Integer; DAT: TDateTime); dispid 319;
    procedure smDeleteRet(ID_T: Integer); dispid 320;
    procedure smAddRoute(ID: Integer; const PLACE_FROM: WideString; const PLACE_IN: WideString; 
                         TIM: Single; PRICE_1: Single; PRICE_2: Single); dispid 321;
    procedure smDeleteRoute(ID: Integer); dispid 322;
    procedure smAddTicket(ID: Integer; ID_PAS: Integer; ID_FL: Integer; DATE_SALE: TDateTime; 
                          const RESER: WideString; ID_TIMETABLE: Integer; CLAS: Integer); dispid 323;
    procedure smDeleteTicket(ID: Integer); dispid 324;
    procedure smAddTimetable(ID: Integer; ID_FL: Integer; DAT: TDateTime; const TIM: WideString); dispid 325;
    procedure smDeleteTimetable(ID: Integer); dispid 326;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoMyServer provides a Create and CreateRemote method to          
// create instances of the default interface IMyServer exposed by              
// the CoClass MyServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMyServer = class
    class function Create: IMyServer;
    class function CreateRemote(const MachineName: string): IMyServer;
  end;

implementation

uses ComObj;

class function CoMyServer.Create: IMyServer;
begin
  Result := CreateComObject(CLASS_MyServer) as IMyServer;
end;

class function CoMyServer.CreateRemote(const MachineName: string): IMyServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MyServer) as IMyServer;
end;

end.
