program Imcdelphi;

uses
  Vcl.Forms,
  calculoss in '..\Desktop\IMC DELPHI\calculoss.pas' {calculos},
  Imc in 'Imc.pas' {Imcform};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tcalculos, calculos);
  Application.CreateForm(TImcform, Imcform);
  Application.Run;
end.
