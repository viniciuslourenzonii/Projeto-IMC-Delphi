unit Imc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TImcform = class(TForm)
    Presultados: TPanel;
    Resultado: TLabel;
    cor: TGroupBox;
    resultadovalor: TEdit;
    Tresult: TStaticText;
    classificacao: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Imcform: TImcform;

implementation

{$R *.dfm}

end.
