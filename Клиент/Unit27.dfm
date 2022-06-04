object fmReturn: TfmReturn
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = #1042#1086#1079#1074#1088#1072#1090' '#1073#1080#1083#1077#1090#1086#1074' '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 854
    Height = 391
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 136
    Top = 96
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      OnClick = N5Click
    end
    object N51: TMenuItem
      Caption = #1054#1090#1095#1077#1090'5'
      OnClick = N51Click
    end
  end
  object DataSource1: TDataSource
    Left = 488
    Top = 128
  end
end
