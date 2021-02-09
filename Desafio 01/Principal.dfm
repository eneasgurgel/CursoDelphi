object Caixa: TCaixa
  Left = 0
  Top = 0
  Caption = 'Caixa'
  ClientHeight = 327
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 24
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Memo1: TMemo
    Left = 24
    Top = 16
    Width = 209
    Height = 303
    ReadOnly = True
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 250
    Top = 43
    Width = 87
    Height = 21
    TabOrder = 1
  end
  object BtnArroz: TButton
    Left = 248
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Arroz'
    TabOrder = 2
    OnClick = BtnArrozClick
  end
  object BtnFeijao: TButton
    Left = 250
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Feij'#227'o'
    TabOrder = 3
    OnClick = BtnFeijaoClick
  end
  object BtnAcucar: TButton
    Left = 250
    Top = 184
    Width = 75
    Height = 25
    Caption = 'A'#231'ucar'
    TabOrder = 4
    OnClick = BtnAcucarClick
  end
  object BtnRefrigerante: TButton
    Left = 250
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Refrigerante'
    TabOrder = 5
    OnClick = BtnRefrigeranteClick
  end
  object BtnGerar: TButton
    Left = 239
    Top = 271
    Width = 105
    Height = 48
    Caption = 'Gerar'
    TabOrder = 6
    OnClick = BtnGerarClick
  end
end
