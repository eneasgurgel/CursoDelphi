object Calculador: TCalculador
  Left = 0
  Top = 0
  Caption = 'Calculador de Juros Compostos'
  ClientHeight = 299
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 239
    Top = 13
    Width = 57
    Height = 13
    Caption = 'Capital (R$)'
  end
  object Label2: TLabel
    Left = 239
    Top = 77
    Width = 111
    Height = 13
    Caption = 'Taxa de juros (% a.a.)'
  end
  object Label3: TLabel
    Left = 239
    Top = 149
    Width = 67
    Height = 13
    Caption = 'Tempo (Anos)'
  end
  object Resultado: TMemo
    Left = 8
    Top = 8
    Width = 225
    Height = 273
    TabOrder = 0
  end
  object EdtCapital: TEdit
    Left = 239
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdtTaxa: TEdit
    Left = 239
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdtTempo: TEdit
    Left = 239
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object BtnGerar: TButton
    Left = 250
    Top = 222
    Width = 100
    Height = 59
    Caption = 'Gerar'
    TabOrder = 4
    OnClick = BtnGerarClick
  end
end
