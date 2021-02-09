program Desafio03;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Calculador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalculador, Calculador);
  Application.Run;
end.
