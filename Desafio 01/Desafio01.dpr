program Desafio01;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Caixa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCaixa, Caixa);
  Application.Run;
end.
