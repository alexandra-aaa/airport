program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {dm: TDataModule},
  Unit3 in 'Unit3.pas' {fmOtdel},
  Unit4 in 'Unit4.pas' {fmNewOtdel},
  Unit5 in 'Unit5.pas' {fmDolzh},
  Unit6 in 'Unit6.pas' {fmNewDolzh},
  Unit7 in 'Unit7.pas' {fmRoute},
  Unit8 in 'Unit8.pas' {fmNewRoute},
  Unit9 in 'Unit9.pas' {fmPass},
  Unit10 in 'Unit10.pas' {fmNewPass},
  Unit11 in 'Unit11.pas' {fmEmpl},
  Unit12 in 'Unit12.pas' {fmNewEmpl},
  Unit13 in 'Unit13.pas' {fmBrigad},
  Unit14 in 'Unit14.pas' {fmNewBrigad},
  Unit15 in 'Unit15.pas' {fmPlane},
  Unit16 in 'Unit16.pas' {fmNewPlane},
  Unit17 in 'Unit17.pas' {fmPodgot},
  Unit18 in 'Unit18.pas' {fmNewPodgot},
  Unit19 in 'Unit19.pas' {fmFlight},
  Unit20 in 'Unit20.pas' {fmNewFlight},
  Unit21 in 'Unit21.pas' {fmEmerg},
  Unit22 in 'Unit22.pas' {fmNewEmerg},
  Unit23 in 'Unit23.pas' {fmTimetable},
  Unit24 in 'Unit24.pas' {fmNewTimetable},
  Unit25 in 'Unit25.pas' {fmTicket},
  Unit26 in 'Unit26.pas' {fmNewTicket},
  Unit27 in 'Unit27.pas' {fmReturn},
  Unit28 in 'Unit28.pas' {fmNewReturn},
  Unit29 in 'Unit29.pas' {Ot1},
  Unit30 in 'Unit30.pas' {Ot2},
  Unit31 in 'Unit31.pas' {Ot3},
  Unit32 in 'Unit32.pas' {Ot4},
  Unit33 in 'Unit33.pas' {Ot5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfmOtdel, fmOtdel);
  Application.CreateForm(TfmNewOtdel, fmNewOtdel);
  Application.CreateForm(TfmDolzh, fmDolzh);
  Application.CreateForm(TfmNewDolzh, fmNewDolzh);
  Application.CreateForm(TfmRoute, fmRoute);
  Application.CreateForm(TfmNewRoute, fmNewRoute);
  Application.CreateForm(TfmPass, fmPass);
  Application.CreateForm(TfmNewPass, fmNewPass);
  Application.CreateForm(TfmEmpl, fmEmpl);
  Application.CreateForm(TfmNewEmpl, fmNewEmpl);
  Application.CreateForm(TfmBrigad, fmBrigad);
  Application.CreateForm(TfmNewBrigad, fmNewBrigad);
  Application.CreateForm(TfmPlane, fmPlane);
  Application.CreateForm(TfmNewPlane, fmNewPlane);
  Application.CreateForm(TfmPodgot, fmPodgot);
  Application.CreateForm(TfmNewPodgot, fmNewPodgot);
  Application.CreateForm(TfmFlight, fmFlight);
  Application.CreateForm(TfmNewFlight, fmNewFlight);
  Application.CreateForm(TfmEmerg, fmEmerg);
  Application.CreateForm(TfmNewEmerg, fmNewEmerg);
  Application.CreateForm(TfmTimetable, fmTimetable);
  Application.CreateForm(TfmNewTimetable, fmNewTimetable);
  Application.CreateForm(TfmTicket, fmTicket);
  Application.CreateForm(TfmNewTicket, fmNewTicket);
  Application.CreateForm(TfmReturn, fmReturn);
  Application.CreateForm(TfmNewReturn, fmNewReturn);
  Application.CreateForm(TOt1, Ot1);
  Application.CreateForm(TOt2, Ot2);
  Application.CreateForm(TOt3, Ot3);
  Application.CreateForm(TOt4, Ot4);
  Application.CreateForm(TOt5, Ot5);
  Application.Run;
end.
