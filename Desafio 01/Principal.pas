unit Principal;

{
Dado um array de record contendo os itens de uma venda: produto, quantidade e preço unitário.
Calcular o valor de cada item (quantidade * preço unitário - desconto) de acordo com as regras:
- Se quantidade <= 3 o desconto será de 0%
- Se quantidade > 3 e quantidade <= 10 o desconto será de 5%
- Se quantidade > 10 o desconto será de 10%
Exibir cada item com desconto e ao final o valor total da venda.
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCaixa = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    BtnArroz: TButton;
    BtnFeijao: TButton;
    BtnAcucar: TButton;
    BtnRefrigerante: TButton;
    BtnGerar: TButton;
    procedure BtnArrozClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFeijaoClick(Sender: TObject);
    procedure BtnAcucarClick(Sender: TObject);
    procedure BtnRefrigeranteClick(Sender: TObject);
    procedure BtnGerarClick(Sender: TObject);
  private
    { Private declarations }
    function GerarDesconto(Quantidade: Integer): Integer;
  public
    { Public declarations }
  end;

var
  Caixa: TCaixa;

implementation

type
  RProduto = record
    Quantidade: Integer;
    PrecoUnit: Double;
    Desconto: Integer;
  end;


{$R *.dfm}

var
  Produtos: Array[0..4] of RProduto;
  Pre_Arroz: Double;
  Pre_Feijao: Double;
  Pre_Acucar: Double;
  Pre_Refrigerante: Double;
  Cont: Integer;
  Conta: Double;




procedure TCaixa.BtnFeijaoClick(Sender: TObject);
var
  Produto: RProduto;
begin
  Produto.Quantidade := StrToInt(Edit1.Text);
  Produto.PrecoUnit := Pre_Feijao;
  Produto.Desconto := GerarDesconto(Produto.Quantidade);
  if Cont < 4 then
  begin
    Produtos[Cont] := Produto;
    Memo1.Lines.Add(IntToStr(Produto.Quantidade) + ' - Feijão Adicionado');
    Cont := Cont + 1;
    Conta := Conta + ((Produto.Quantidade * Produto.PrecoUnit) - (Produto.Quantidade * Produto.PrecoUnit * (Produto.Desconto/100)));
    Edit1.Text := '';
  end;

end;

procedure TCaixa.BtnGerarClick(Sender: TObject);
begin
  Memo1.Lines.Add('---------------');
  Memo1.Lines.Add('Total = R$' + FloatToStr(Conta));
  Edit1.Text := '';
end;

procedure TCaixa.BtnRefrigeranteClick(Sender: TObject);
var
  Produto: RProduto;
begin
  Produto.Quantidade := StrToInt(Edit1.Text);
  Produto.PrecoUnit := Pre_Refrigerante;
  Produto.Desconto := GerarDesconto(Produto.Quantidade);
  if Cont < 4 then
  begin
    Produtos[Cont] := Produto;
    Memo1.Lines.Add(IntToStr(Produto.Quantidade) + ' - Refrigerante Adicionado');
    Cont := Cont + 1;
    Conta := Conta + ((Produto.Quantidade * Produto.PrecoUnit) - (Produto.Quantidade * Produto.PrecoUnit * (Produto.Desconto/100)));
    Edit1.Text := '';
  end;
end;

procedure TCaixa.FormCreate(Sender: TObject);
begin
  Pre_Arroz := 2.98;
  Pre_feijao := 3.50;
  Pre_acucar := 4.00;
  Pre_Refrigerante := 9.00;
  Cont := 0;
  Conta := 0;
end;

function TCaixa.GerarDesconto(Quantidade: Integer): Integer;
begin
  if Quantidade <= 3 then
    result := 0
  else if (Quantidade > 3) and (Quantidade <= 10) then
    result := 5
  else
    result := 10
end;

procedure TCaixa.BtnAcucarClick(Sender: TObject);
var
  Produto: RProduto;
begin
  Produto.Quantidade := StrToInt(Edit1.Text);
  Produto.PrecoUnit := Pre_Acucar;
  Produto.Desconto := GerarDesconto(Produto.Quantidade);
  if Cont < 4 then
  begin
    Produtos[Cont] := Produto;
    Memo1.Lines.Add(IntToStr(Produto.Quantidade) + ' - Açucar Adicionado');
    Cont := Cont + 1;
    Conta := Conta + ((Produto.Quantidade * Produto.PrecoUnit) - (Produto.Quantidade * Produto.PrecoUnit * (Produto.Desconto/100)));
    Edit1.Text := '';
  end;
end;

procedure TCaixa.BtnArrozClick(Sender: TObject);
var
  Produto: RProduto;
begin
  Produto.Quantidade := StrToInt(Edit1.Text);
  Produto.PrecoUnit := Pre_Arroz;
  Produto.Desconto := GerarDesconto(Produto.Quantidade);
  if Cont < 4 then
  begin
    Produtos[Cont] := Produto;
    Memo1.Lines.Add(IntToStr(Produto.Quantidade) + ' - Arroz Adicionado');
    Cont := Cont + 1;
    Conta := Conta + ((Produto.Quantidade * Produto.PrecoUnit) - (Produto.Quantidade * Produto.PrecoUnit * (Produto.Desconto/100)));
    Edit1.Text := '';
  end;
end;

end.
