object fmNewEmerg: TfmNewEmerg
  Left = 194
  Top = 290
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1072#1103' '#1079#1072#1076#1077#1088#1078#1082#1072'/'#1086#1090#1084#1077#1085#1072
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
    Left = 168
    Top = 56
    Width = 25
    Height = 13
    Caption = #1056#1077#1081#1089
  end
  object eFlight: TEdit
    Left = 232
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cbZad: TCheckBox
    Left = 232
    Top = 104
    Width = 97
    Height = 17
    Caption = #1047#1072#1076#1077#1088#1078#1082#1072' '
    TabOrder = 1
  end
  object cbOtmen: TCheckBox
    Left = 232
    Top = 144
    Width = 97
    Height = 17
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
  end
  object Button1: TButton
    Left = 352
    Top = 48
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 3
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 200
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 200
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
end
