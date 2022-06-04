object fmNewFlight: TfmNewFlight
  Left = 329
  Top = 181
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1099#1081' '#1088#1077#1081#1089
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
    Left = 120
    Top = 56
    Width = 44
    Height = 13
    Caption = #1057#1072#1084#1086#1083#1077#1090
  end
  object Label2: TLabel
    Left = 120
    Top = 96
    Width = 48
    Height = 13
    Caption = #1052#1072#1088#1096#1088#1091#1090' '
  end
  object ePlane: TEdit
    Left = 184
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eRoute: TEdit
    Left = 184
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 304
    Top = 48
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 96
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
end
