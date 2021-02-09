program Desafio02;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Dados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDados, Dados);
  Application.Run;
end.
