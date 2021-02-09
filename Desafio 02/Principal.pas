unit Principal;
{
Dado um array de record contendo os dados: nome, sal�rio, n�mero de filhos.
Criar uma rotina para calcular e exibir:
- M�dia do n�mero de filhos
- Percentual de sal�rios menores que 1000,00
- M�dia de sal�rio
- Maior sal�rio
- Menor sal�rio
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDados = class(TForm)
    Resultado: TMemo;
    BtnGerar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dados: TDados;

implementation

type
  RFuncionario = record
      Nome: String;
      Salario: Double;
      NumFilhos: Integer;
  end;

{$R *.dfm}

var
  ListaEmpregados: Array[0..3] of RFuncionario;

procedure TDados.FormCreate(Sender: TObject);
begin
  ListaEmpregados[0].Nome := 'Jos�';
  ListaEmpregados[0].Salario := 1500;
  ListaEmpregados[0].NumFilhos := 3;

  ListaEmpregados[1].Nome := 'Ana';
  ListaEmpregados[1].Salario := 900;
  ListaEmpregados[1].NumFilhos := 2;

  ListaEmpregados[2].Nome := 'Pedro';
  ListaEmpregados[2].Salario := 2000;
  ListaEmpregados[2].NumFilhos := 0;

  ListaEmpregados[3].Nome := 'Carlos';
  ListaEmpregados[3].Salario := 780;
  ListaEmpregados[3].NumFilhos := 5;

end;

procedure TDados.BtnGerarClick(Sender: TObject);
Var
  MediaFilhos, SomaFilhos, PercSal, SomaSal, MediaSal, Maior, Menor: Double;
  I,Cont: Integer;
begin
  SomaSal := 0;
  SomaFilhos := 0;
  Cont := 0;
  Maior := -9999999;
  Menor := 99999999;
  for I := 0 to High(ListaEmpregados) do
  begin
    SomaFilhos := SomaFilhos + ListaEmpregados[I].NumFilhos;

    SomaSal := SomaSal + ListaEmpregados[I].Salario;

    if ListaEmpregados[I].Salario < 1000 then
      Cont := Cont + 1;

    if ListaEmpregados[I].Salario > Maior then
      Maior := ListaEmpregados[I].Salario;

    if ListaEmpregados[I].Salario < Menor then
      Menor := ListaEmpregados[I].Salario;

  end;
  MediaFilhos := SomaFilhos/Length(ListaEmpregados);

  MediaSal := SomaSal/Length(ListaEmpregados);

  PercSal := 25 * Cont;

  Resultado.Clear;
  Resultado.Lines.Add('Dados:');
  Resultado.Lines.Add('M�dia do N�mero de Filhos: ' + FloatToStr(MediaFilhos));
  Resultado.Lines.Add('Percentual de sal�rios menores que 1000,00: ' + FloatToStr(PercSal) + '%');
  Resultado.Lines.Add('M�dia de sal�rio: R$' + FloatToStr(MediaSal));
  Resultado.Lines.Add('Maior sal�rio: R$' + FloatToStr(Maior));
  Resultado.Lines.Add('Menor sal�rio: R$' + FloatToStr(Menor));

end;

end.
