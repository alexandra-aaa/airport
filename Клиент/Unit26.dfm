object fmNewTicket: TfmNewTicket
  Left = 212
  Top = 239
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1099#1081' '#1073#1080#1083#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 56
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 240
    Top = 88
    Width = 25
    Height = 13
    Caption = #1056#1077#1081#1089
  end
  object Label3: TLabel
    Left = 200
    Top = 128
    Width = 73
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
  end
  object Label4: TLabel
    Left = 232
    Top = 168
    Width = 31
    Height = 13
    Caption = #1041#1088#1086#1085#1100
  end
  object Label5: TLabel
    Left = 200
    Top = 208
    Width = 73
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1074#1099#1083#1077#1090#1072
  end
  object Label6: TLabel
    Left = 240
    Top = 248
    Width = 31
    Height = 13
    Caption = #1050#1083#1072#1089#1089
  end
  object eFIO: TEdit
    Left = 280
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eFlight: TEdit
    Left = 280
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object eReser: TEdit
    Left = 280
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object eTime: TEdit
    Left = 280
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object eClass: TEdit
    Left = 280
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object dtpDate: TDateTimePicker
    Left = 280
    Top = 128
    Width = 121
    Height = 21
    Date = 43978.757996157410000000
    Time = 43978.757996157410000000
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 296
    Width = 75
    Height = 25
    TabOrder = 6
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 336
    Top = 296
    Width = 75
    Height = 25
    TabOrder = 7
    Kind = bkCancel
  end
  object Button1: TButton
    Left = 400
    Top = 48
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 88
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 400
    Top = 208
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 10
    OnClick = Button3Click
  end
end
