object fmNewRoute: TfmNewRoute
  Left = 278
  Top = 175
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1099#1081' '#1052#1072#1088#1096#1088#1091#1090
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 24
    Width = 70
    Height = 13
    Caption = #1055#1091#1085#1082#1090' '#1074#1099#1083#1077#1090#1072
  end
  object Label2: TLabel
    Left = 112
    Top = 72
    Width = 74
    Height = 13
    Caption = #1055#1091#1085#1082#1090' '#1087#1088#1080#1083#1077#1090#1072
  end
  object Label3: TLabel
    Left = 112
    Top = 112
    Width = 67
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
  end
  object Label4: TLabel
    Left = 240
    Top = 152
    Width = 67
    Height = 13
    Caption = #1062#1077#1085#1072' '#1073#1080#1083#1077#1090#1072' '
  end
  object Label5: TLabel
    Left = 120
    Top = 176
    Width = 73
    Height = 13
    Caption = #1055#1077#1088#1074#1099#1081' '#1082#1083#1072#1089#1089
  end
  object Label6: TLabel
    Left = 128
    Top = 208
    Width = 69
    Height = 13
    Caption = #1042#1090#1086#1088#1086#1081' '#1082#1083#1072#1089#1089
  end
  object eFr: TEdit
    Left = 216
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eIn: TEdit
    Left = 216
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = eInChange
  end
  object ePr1: TEdit
    Left = 216
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = ePr1KeyPress
  end
  object ePr2: TEdit
    Left = 216
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = ePr2KeyPress
  end
  object eTim: TEdit
    Left = 216
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 256
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 240
    Top = 256
    Width = 75
    Height = 25
    TabOrder = 6
    Kind = bkCancel
  end
end
