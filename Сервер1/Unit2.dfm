object MyServer: TMyServer
  OldCreateOrder = False
  Left = 193
  Top = 147
  Height = 537
  Width = 1010
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:D:\11111\DB.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=123'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 40
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 104
    Top = 8
  end
  object TBrigad: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'BRIGADE'
    Left = 16
    Top = 88
  end
  object TDolzh: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DOLZH'
    Left = 88
    Top = 88
  end
  object TEmerg: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'EMERG'
    Left = 168
    Top = 88
  end
  object TEmpl: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'EMPL'
    Left = 240
    Top = 88
  end
  object TFlight: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'FLIGHT'
    Left = 312
    Top = 88
  end
  object TOtdel: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'OTDEL'
    Left = 384
    Top = 88
  end
  object TPass: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PASSENGER'
    Left = 464
    Top = 88
  end
  object TPlane: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PLANE'
    Left = 536
    Top = 88
  end
  object TPodgot: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PODGOT'
    Left = 616
    Top = 88
  end
  object TRet: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'RET'
    Left = 688
    Top = 88
  end
  object TRoute: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ROUTE'
    Left = 760
    Top = 88
  end
  object TTicket: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TICKET'
    Left = 848
    Top = 88
  end
  object TTimetable: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TIMETABLE'
    Left = 936
    Top = 88
  end
  object spAddBrigad: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_BRIGADE'
    Left = 16
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_OTD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_EMPL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end>
  end
  object spDeleteBrigad: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_BRIGADE'
    Left = 16
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddDolzh: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_DOLZH'
    Left = 88
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end>
  end
  object spDeleteDolzh: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_DOLZH'
    Left = 96
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddEmerg: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_EMERG'
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_F'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'INREASON'
        ParamType = ptInput
        Value = #1076#1072
      end
      item
        DataType = ftString
        Name = 'INRESULT'
        ParamType = ptInput
        Value = #1076#1072
      end>
  end
  object spDeleteEmerg: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_EMERG'
    Left = 168
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_F'
        ParamType = ptInput
      end>
  end
  object spAddEmpl: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_EMPL'
    Left = 240
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INFIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_DOL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDAT_PR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INPOL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDAT_BIRTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INCHILDREN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INSALARY'
        ParamType = ptInput
      end>
  end
  object spDeleteEmpl: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_EMPL'
    Left = 240
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddFlight: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_FLIGHT'
    Left = 312
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_PL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_ROUTE'
        ParamType = ptInput
      end>
  end
  object spDeleteFlight: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_FLIGHT'
    Left = 312
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddOtdel: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_OTDEL'
    Left = 384
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end>
  end
  object spDeleteOtdel: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_OTDEL'
    Left = 384
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddPass: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PASSENGER'
    Left = 464
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INFIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INPASSPORT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INPOL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_BIRTH'
        ParamType = ptInput
      end>
  end
  object spDeletePass: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PASS'
    Left = 464
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddPlane: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PLANE'
    Left = 536
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INMODEL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_1CLASS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_2CLASS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_CREW'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_TEHN'
        ParamType = ptInput
      end>
  end
  object spDeletePlane: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PLANE'
    Left = 536
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddPodgot: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PODGOT'
    Left = 616
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_PL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDAT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INRESULT'
        ParamType = ptInput
      end>
  end
  object spDeletePodgot: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PODGOT'
    Left = 616
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_PL'
        ParamType = ptInput
      end>
  end
  object spAddRet: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_RET'
    Left = 688
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_T'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDAT'
        ParamType = ptInput
      end>
  end
  object spDeleteRet: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_RET'
    Left = 688
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_T'
        ParamType = ptInput
      end>
  end
  object spAddRoute: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_ROUTE'
    Left = 760
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INPLACE_FROM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INPLACE_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INTIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE_1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE_2'
        ParamType = ptInput
      end>
  end
  object spDeleteRoute: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_ROUTE'
    Left = 760
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddTicket: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_TICKET'
    Left = 848
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_PAS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_FL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INRESER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_TIMETABLE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INCLASS'
        ParamType = ptInput
      end>
  end
  object spDeleteTicket: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_TICKET'
    Left = 848
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddTimetable: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_TIMETABLE'
    Left = 936
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_FL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDAT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INTIM'
        ParamType = ptInput
      end>
  end
  object spDeleteTimetable: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_TIMETABLE'
    Left = 936
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object dspBrigad: TDataSetProvider
    DataSet = TBrigad
    Left = 16
    Top = 256
  end
  object dspDolzh: TDataSetProvider
    DataSet = TDolzh
    Left = 88
    Top = 256
  end
  object dspEmerg: TDataSetProvider
    DataSet = TEmerg
    Left = 168
    Top = 256
  end
  object dspEmpl: TDataSetProvider
    DataSet = TEmpl
    Left = 240
    Top = 256
  end
  object dspFlight: TDataSetProvider
    DataSet = TFlight
    Left = 312
    Top = 256
  end
  object dspPass: TDataSetProvider
    DataSet = TPass
    Left = 464
    Top = 256
  end
  object dspOtdel: TDataSetProvider
    DataSet = TOtdel
    Left = 384
    Top = 256
  end
  object dspPlane: TDataSetProvider
    DataSet = TPlane
    Left = 536
    Top = 256
  end
  object dspPodgot: TDataSetProvider
    DataSet = TPodgot
    Left = 616
    Top = 256
  end
  object dspRet: TDataSetProvider
    DataSet = TRet
    Left = 688
    Top = 256
  end
  object dspRoute: TDataSetProvider
    DataSet = TRoute
    Left = 760
    Top = 256
  end
  object dspTicket: TDataSetProvider
    DataSet = TTicket
    Left = 848
    Top = 256
  end
  object dspTimetable: TDataSetProvider
    DataSet = TTimetable
    Left = 936
    Top = 256
  end
  object TTmp: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TMP'
    Left = 40
    Top = 360
  end
  object dspTmp: TDataSetProvider
    DataSet = TTmp
    Left = 40
    Top = 424
  end
  object TTmp2: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TMP2'
    Left = 168
    Top = 368
  end
  object dspTmp2: TDataSetProvider
    DataSet = TTmp2
    Left = 168
    Top = 432
  end
end
