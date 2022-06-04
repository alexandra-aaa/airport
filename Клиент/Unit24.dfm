object fmNewTimetable: TfmNewTimetable
  Left = 365
  Top = 230
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1086#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077' '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 56
    Width = 25
    Height = 13
    Caption = #1056#1077#1081#1089
  end
  object Label2: TLabel
    Left = 232
    Top = 104
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label3: TLabel
    Left = 232
    Top = 144
    Width = 36
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '
  end
  object eFlight: TEdit
    Left = 296
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eTime: TEdit
    Left = 296
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 416
    Top = 56
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 184
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 328
    Top = 184
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object dtpDate: TDateTimePicker
    Left = 296
    Top = 96
    Width = 186
    Height = 21
    Date = 43978.675757337970000000
    Time = 43978.675757337970000000
    TabOrder = 5
  end
end
