object fmNewPass: TfmNewPass
  Left = 232
  Top = 202
  Width = 534
  Height = 450
  Caption = #1053#1086#1074#1099#1081' '#1087#1072#1089#1089#1072#1078#1080#1088
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
    Left = 152
    Top = 64
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 112
    Top = 104
    Width = 110
    Height = 13
    Caption = #1055#1072#1089#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  end
  object Label3: TLabel
    Left = 152
    Top = 144
    Width = 20
    Height = 13
    Caption = #1055#1086#1083
  end
  object Label4: TLabel
    Left = 120
    Top = 176
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object eName: TEdit
    Left = 240
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object ePas: TEdit
    Left = 240
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object eSex: TEdit
    Left = 240
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = eSexKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 224
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 256
    Top = 224
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object eBirth: TDateTimePicker
    Left = 232
    Top = 176
    Width = 129
    Height = 21
    Date = 43978.480213819440000000
    Time = 43978.480213819440000000
    TabOrder = 5
  end
end
