object Dados: TDados
  Left = 0
  Top = 0
  Caption = 'Dados'
  ClientHeight = 299
  ClientWidth = 398
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
  object Resultado: TMemo
    Left = 8
    Top = 8
    Width = 265
    Height = 283
    TabOrder = 0
  end
  object BtnGerar: TButton
    Left = 293
    Top = 112
    Width = 97
    Height = 41
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = BtnGerarClick
  end
end
