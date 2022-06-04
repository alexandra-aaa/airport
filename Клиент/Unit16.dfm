object fmNewPlane: TfmNewPlane
  Left = 244
  Top = 243
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1099#1081' '#1089#1072#1084#1086#1083#1077#1090' '
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
    Left = 152
    Top = 72
    Width = 39
    Height = 13
    Caption = #1052#1086#1076#1077#1083#1100
  end
  object Label2: TLabel
    Left = 80
    Top = 104
    Width = 115
    Height = 13
    Caption = #1052#1077#1089#1090' '#1074' '#1087#1077#1088#1074#1086#1084' '#1082#1083#1072#1089#1089#1077
  end
  object Label3: TLabel
    Left = 72
    Top = 136
    Width = 120
    Height = 13
    Caption = #1052#1077#1089#1090' '#1074#1086' '#1074#1090#1086#1088#1086#1084' '#1082#1083#1072#1089#1089#1077
  end
  object Label4: TLabel
    Left = 104
    Top = 168
    Width = 89
    Height = 13
    Caption = #1041#1088#1080#1075#1072#1076#1072' '#1087#1080#1083#1086#1090#1086#1074' '
  end
  object Label5: TLabel
    Left = 104
    Top = 200
    Width = 94
    Height = 13
    Caption = #1041#1088#1080#1075#1072#1076#1072' '#1090#1077#1093#1085#1080#1082#1086#1074' '
  end
  object eModel: TEdit
    Left = 224
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eClass_f: TEdit
    Left = 224
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object eClass_s: TEdit
    Left = 224
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object eTehn: TEdit
    Left = 224
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object eCrew: TEdit
    Left = 224
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 248
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 256
    Top = 248
    Width = 75
    Height = 25
    TabOrder = 6
    Kind = bkCancel
  end
  object Button1: TButton
    Left = 344
    Top = 160
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 344
    Top = 192
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 8
    OnClick = Button2Click
  end
end
