unit Principal;
{
 Desenvolver uma aplicação para calcular juros compostos.

Exemplo:
Um capital de R$1400 foi aplicado a juros compostos em um fundo de investimento que rende 7% a.a. Qual será o juros acumulado após 24 meses?
Note que o tempo e a taxa estão em unidades diferentes, mas sabemos que 24 meses é igual a 2 anos, logo, t = 2 anos, e que a taxa precisa ser escrita na forma decimal, i = 0,07.
M = C (1 + i)t
M = 1400 (1 + 0,07)²
M = 1400 (1,07)²
M = 1400 * 1,1449
M = 1602,86
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCalculador = class(TForm)
    Resultado: TMemo;
    EdtCapital: TEdit;
    EdtTaxa: TEdit;
    EdtTempo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnGerar: TButton;
    procedure BtnGerarClick(Sender: TObject);  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculador: TCalculador;

implementation

uses
  Math;

{$R *.dfm}

procedure TCalculador.BtnGerarClick(Sender: TObject);
var
  Capital, Taxa, Montante: Double;
  Tempo: Integer;

begin
  Capital := StrToFloat(EdtCapital.Text);
  Taxa := StrToFloat(EdtTaxa.Text);
  Tempo := StrToInt(EdtTempo.Text);
  Montante := Capital * Power((1 + (Taxa/100)), Tempo);
  Resultado.Clear;
  REsultado.Lines.Add('Dados');
  Resultado.Lines.Add('Montante após ' + IntToStr(Tempo) + ' ano(s): R$' + FloatToStr(Montante));
  Resultado.Lines.Add('');
  Resultado.Lines.Add('Juros acumulados: R$' + FloatToStr(Montante - Capital));
end;

end.
