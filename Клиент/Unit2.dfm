object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 201
  Top = 178
  Height = 448
  Width = 995
  object DCOMConnection1: TDCOMConnection
    Connected = True
    ServerGUID = '{F1E26B7E-F02C-4EAD-8785-9CBD6069FE50}'
    ServerName = 'Project1.MyServer'
    Left = 24
    Top = 16
  end
  object cdsOtdel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOtdel'
    RemoteServer = DCOMConnection1
    Left = 24
    Top = 96
    object cdsOtdelID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOtdelNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 60
    end
  end
  object cdsBrigad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBrigad'
    RemoteServer = DCOMConnection1
    Left = 96
    Top = 96
    object cdsBrigadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBrigadOTDEL_NAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1072
      FieldKind = fkLookup
      FieldName = 'OTDEL_NAME'
      LookupDataSet = cdsOtdel
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_OTD'
      Size = 50
      Lookup = True
    end
    object cdsBrigadEMPL_NAME: TStringField
      DisplayLabel = #1060#1048#1054
      FieldKind = fkLookup
      FieldName = 'EMPL_NAME'
      LookupDataSet = cdsEmpl
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'ID_EMPL'
      Size = 50
      Lookup = True
    end
    object cdsBrigadID_OTD: TIntegerField
      FieldName = 'ID_OTD'
      Visible = False
    end
    object cdsBrigadID_EMPL: TIntegerField
      FieldName = 'ID_EMPL'
      Visible = False
    end
    object cdsBrigadNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1088#1080#1075#1072#1076#1099
      FieldName = 'NAME'
      Size = 40
    end
  end
  object cdsDolzh: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDolzh'
    RemoteServer = DCOMConnection1
    Left = 176
    Top = 96
    object cdsDolzhID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDolzhNAME: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
    end
  end
  object cdsEmerg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmerg'
    RemoteServer = DCOMConnection1
    Left = 256
    Top = 96
    object cdsEmergID_F: TIntegerField
      FieldName = 'ID_F'
      Required = True
      Visible = False
    end
    object cdsEmergPLACE_FROM: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1074#1099#1083#1077#1090#1072
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLACE_FROM'
      LookupDataSet = cdsFlight
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_FROM'
      KeyFields = 'ID_F'
      Size = 50
      Lookup = True
    end
    object cdsEmergPLACE_IN: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1083#1077#1090#1072
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLACE_IN'
      LookupDataSet = cdsFlight
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_IN'
      KeyFields = 'ID_F'
      Size = 50
      Lookup = True
    end
    object cdsEmergREASON: TStringField
      DisplayLabel = #1054#1090#1084#1077#1085#1072
      DisplayWidth = 15
      FieldName = 'REASON'
      Size = 60
    end
    object cdsEmergRESULT: TStringField
      DisplayLabel = #1047#1072#1076#1077#1088#1078#1082#1072
      DisplayWidth = 15
      FieldName = 'RESULT'
      Size = 60
    end
  end
  object cdsEmpl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpl'
    RemoteServer = DCOMConnection1
    Left = 336
    Top = 96
    object cdsEmplID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmplFIO: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 30
      FieldName = 'FIO'
      Size = 60
    end
    object cdsEmplID_DOL: TIntegerField
      FieldName = 'ID_DOL'
      Visible = False
    end
    object cdsEmplDOLZH_NAME: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DOLZH_NAME'
      LookupDataSet = cdsDolzh
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_DOL'
      Size = 50
      Lookup = True
    end
    object cdsEmplDAT_PR: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
      FieldName = 'DAT_PR'
    end
    object cdsEmplPOL: TStringField
      DisplayLabel = #1055#1086#1083
      FieldName = 'POL'
      Size = 1
    end
    object cdsEmplDAT_BIRTH: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'DAT_BIRTH'
    end
    object cdsEmplCHILDREN: TIntegerField
      DisplayLabel = #1044#1077#1090#1080
      FieldName = 'CHILDREN'
    end
    object cdsEmplSALARY: TFloatField
      DisplayLabel = #1047'.'#1055'.'
      FieldName = 'SALARY'
    end
  end
  object cdsFlight: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFlight'
    RemoteServer = DCOMConnection1
    Left = 416
    Top = 96
    object cdsFlightID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFlightID_PL: TIntegerField
      FieldName = 'ID_PL'
      Visible = False
    end
    object cdsFlightID_ROUTE: TIntegerField
      FieldName = 'ID_ROUTE'
      Visible = False
    end
    object cdsFlightPLANE_NAME: TStringField
      DisplayLabel = #1057#1072#1084#1086#1083#1077#1090
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLANE_NAME'
      LookupDataSet = cdsPlane
      LookupKeyFields = 'ID'
      LookupResultField = 'MODEL'
      KeyFields = 'ID_PL'
      Size = 50
      Lookup = True
    end
    object cdsFlightPLASE_FROM: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1074#1099#1083#1077#1090#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLACE_FROM'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_FROM'
      KeyFields = 'ID_ROUTE'
      Size = 60
      Lookup = True
    end
    object cdsFlightPLACE_IN: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1083#1077#1090#1072
      FieldKind = fkLookup
      FieldName = 'PLACE_IN'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_IN'
      KeyFields = 'ID_ROUTE'
      Size = 50
      Lookup = True
    end
    object cdsFlightTIME: TIntegerField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
      FieldKind = fkLookup
      FieldName = 'TIME'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID'
      LookupResultField = 'TIM'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsFlightPRICE: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      FieldKind = fkLookup
      FieldName = 'PRICE'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID'
      LookupResultField = 'PRICE_1'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
  end
  object cdsPass: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPass'
    RemoteServer = DCOMConnection1
    Left = 496
    Top = 96
    object cdsPassID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPassFIO: TStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Size = 60
    end
    object cdsPassPASSPORT: TIntegerField
      DisplayLabel = #1055#1072#1089#1087#1086#1088#1090
      FieldName = 'PASSPORT'
    end
    object cdsPassPOL: TStringField
      DisplayLabel = #1055#1086#1083
      FieldName = 'POL'
      Size = 1
    end
    object cdsPassDATE_BIRTH: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'DATE_BIRTH'
    end
  end
  object cdsPlane: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlane'
    RemoteServer = DCOMConnection1
    Left = 576
    Top = 96
    object cdsPlaneID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPlaneMODEL: TStringField
      FieldName = 'MODEL'
      Size = 40
    end
    object cdsPlaneCLASS_F: TIntegerField
      FieldName = 'CLASS_F'
    end
    object cdsPlaneCLASS_S: TIntegerField
      FieldName = 'CLASS_S'
    end
    object cdsPlaneID_CREW: TIntegerField
      FieldName = 'ID_CREW'
      Visible = False
    end
    object cdsPlaneID_TEHN: TIntegerField
      FieldName = 'ID_TEHN'
      Visible = False
    end
    object cdsPlaneCREW_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'CREW_NAME'
      LookupDataSet = cdsBrigad
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_CREW'
      Size = 50
      Lookup = True
    end
    object cdsPlaneTEHN_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'TEHN_NAME'
      LookupDataSet = cdsBrigad
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_TEHN'
      Size = 50
      Lookup = True
    end
  end
  object cdsPodgot: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPodgot'
    RemoteServer = DCOMConnection1
    Left = 656
    Top = 96
    object cdsPodgotID_PL: TIntegerField
      FieldName = 'ID_PL'
      Required = True
      Visible = False
    end
    object cdsPodgotDAT: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DAT'
    end
    object cdsPodgotRESULT: TStringField
      DisplayLabel = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      DisplayWidth = 30
      FieldName = 'RESULT'
      Size = 60
    end
    object cdsPodgotPLANE_NAME: TStringField
      DisplayLabel = #1057#1072#1084#1086#1083#1077#1090
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLANE_NAME'
      LookupDataSet = cdsPlane
      LookupKeyFields = 'ID'
      LookupResultField = 'MODEL'
      KeyFields = 'ID_PL'
      Size = 50
      Lookup = True
    end
  end
  object cdsRet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRet'
    RemoteServer = DCOMConnection1
    Left = 736
    Top = 96
    object cdsRetFIO: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'FIO'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'ID_T'
      Size = 60
      Lookup = True
    end
    object cdsRetID_T: TIntegerField
      FieldName = 'ID_T'
      Required = True
      Visible = False
    end
    object cdsRetDAT: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DAT'
    end
    object cdsRetID_FL: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ID_FL'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'ID_FL'
      KeyFields = 'ID_T'
      Lookup = True
    end
    object cdsRetDATE_FL: TDateField
      DisplayLabel = #1042#1099#1083#1077#1090
      FieldKind = fkLookup
      FieldName = 'DATE_FL'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'DATE_FL'
      KeyFields = 'ID_T'
      Visible = False
      Lookup = True
    end
    object cdsRetPLACE_FROM: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1074#1099#1083#1077#1090#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLACE_FROM'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_FROM'
      KeyFields = 'ID_T'
      Visible = False
      Size = 60
      Lookup = True
    end
    object cdsRetPLACE_IN: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1083#1077#1090#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLACE_IN'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_IN'
      KeyFields = 'ID_T'
      Visible = False
      Size = 60
      Lookup = True
    end
    object cdsRetPRICE: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      FieldKind = fkLookup
      FieldName = 'PRICE'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'PRICE'
      KeyFields = 'ID_T'
      Visible = False
      Lookup = True
    end
    object cdsRetAGE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'AGE'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'AGE'
      KeyFields = 'ID_T'
      Visible = False
      Lookup = True
    end
    object cdsRetSEX: TStringField
      DisplayLabel = #1055#1086#1083
      FieldKind = fkLookup
      FieldName = 'SEX'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID'
      LookupResultField = 'SEX'
      KeyFields = 'ID_T'
      Visible = False
      Size = 10
      Lookup = True
    end
  end
  object cdsRoute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRoute'
    RemoteServer = DCOMConnection1
    Left = 816
    Top = 96
    object cdsRouteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRoutePLACE_FROM: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1074#1099#1083#1077#1090#1072
      FieldName = 'PLACE_FROM'
      Size = 50
    end
    object cdsRoutePLACE_IN: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1083#1077#1090#1072
      FieldName = 'PLACE_IN'
      Size = 50
    end
    object cdsRouteTIM: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'TIM'
    end
    object cdsRoutePRICE_1: TFloatField
      DisplayLabel = #1062#1077#1085#1072' 1'
      FieldName = 'PRICE_1'
    end
    object cdsRoutePRICE_2: TFloatField
      DisplayLabel = #1062#1077#1085#1072' 2'
      FieldName = 'PRICE_2'
    end
  end
  object cdsTicket: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTicket'
    RemoteServer = DCOMConnection1
    Left = 24
    Top = 168
    object cdsTicketID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsTicketID_PAS: TIntegerField
      FieldName = 'ID_PAS'
      Visible = False
    end
    object cdsTicketID_FL: TIntegerField
      FieldName = 'ID_FL'
      Visible = False
    end
    object cdsTicketDATE_SALE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
      DisplayWidth = 15
      FieldName = 'DATE_SALE'
    end
    object cdsTicketRESER: TStringField
      DisplayLabel = #1041#1088#1086#1085#1100
      FieldName = 'RESER'
      Size = 10
    end
    object cdsTicketID_TIMETABLE: TIntegerField
      FieldName = 'ID_TIMETABLE'
      Visible = False
    end
    object cdsTicketCLASS: TIntegerField
      DisplayLabel = #1050#1083#1072#1089#1089
      FieldName = 'CLASS'
    end
    object cdsTicketFIO: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'FIO'
      LookupDataSet = cdsPass
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'ID_PAS'
      Size = 60
      Lookup = True
    end
    object cdsTicketTIME: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldKind = fkLookup
      FieldName = 'TIME'
      LookupDataSet = cdsTimetable
      LookupKeyFields = 'ID'
      LookupResultField = 'TIM'
      KeyFields = 'ID_TIMETABLE'
      Lookup = True
    end
    object cdsTicketPLACE_FROM: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1074#1099#1083#1077#1090#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLACE_FROM'
      LookupDataSet = cdsFlight
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_FROM'
      KeyFields = 'ID_FL'
      Visible = False
      Size = 60
      Lookup = True
    end
    object cdsTicketPLACE_IN: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1083#1077#1090#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLACE_IN'
      LookupDataSet = cdsFlight
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_IN'
      KeyFields = 'ID_FL'
      Visible = False
      Size = 60
      Lookup = True
    end
    object cdsTicketDATE_FL: TDateField
      DisplayLabel = #1042#1099#1083#1077#1090
      FieldKind = fkLookup
      FieldName = 'DATE_FL'
      LookupDataSet = cdsTimetable
      LookupKeyFields = 'ID'
      LookupResultField = 'DAT'
      KeyFields = 'ID_TIMETABLE'
      Visible = False
      Lookup = True
    end
    object cdsTicketPRICE: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      FieldKind = fkLookup
      FieldName = 'PRICE'
      LookupDataSet = cdsFlight
      LookupKeyFields = 'ID'
      LookupResultField = 'PRICE'
      KeyFields = 'ID_FL'
      Visible = False
      Lookup = True
    end
    object cdsTicketAGE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'AGE'
      LookupDataSet = cdsPass
      LookupKeyFields = 'ID'
      LookupResultField = 'DATE_BIRTH'
      KeyFields = 'ID_PAS'
      Visible = False
      Lookup = True
    end
    object cdsTicketSEX: TStringField
      DisplayLabel = #1055#1086#1083
      FieldKind = fkLookup
      FieldName = 'SEX'
      LookupDataSet = cdsPass
      LookupKeyFields = 'ID'
      LookupResultField = 'POL'
      KeyFields = 'ID_PAS'
      Visible = False
      Size = 10
      Lookup = True
    end
  end
  object cdsTimetable: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTimetable'
    RemoteServer = DCOMConnection1
    Left = 96
    Top = 168
    object cdsTimetableID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTimetablePLACE_FROM: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1074#1099#1083#1077#1090#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLACE_FROM'
      LookupDataSet = cdsFlight
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_FROM'
      KeyFields = 'ID_FL'
      Size = 60
      Lookup = True
    end
    object cdsTimetablePLACE_IN: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1083#1077#1090#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PLACE_IN'
      LookupDataSet = cdsFlight
      LookupKeyFields = 'ID'
      LookupResultField = 'PLACE_IN'
      KeyFields = 'ID_FL'
      Size = 60
      Lookup = True
    end
    object cdsTimetableID_FL: TIntegerField
      FieldName = 'ID_FL'
      Required = True
      Visible = False
    end
    object cdsTimetableDAT: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DAT'
      Required = True
    end
    object cdsTimetableTIM: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'TIM'
      Size = 10
    end
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTmp'
    RemoteServer = DCOMConnection1
    Left = 168
    Top = 176
    object cdsTmpID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTmpNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
  end
  object cdsTmp2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTmp2'
    RemoteServer = DCOMConnection1
    Left = 232
    Top = 176
    object cdsTmp2ID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTmp2NAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object cdsTmp2SUMM: TIntegerField
      FieldName = 'SUMM'
    end
    object cdsTmp2PROC: TBCDField
      FieldName = 'PROC'
      Precision = 18
      Size = 2
    end
  end
end
