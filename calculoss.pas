unit calculoss;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Imc;

type
  Tcalculos = class(TForm)
    fundo: TPanel;
    Logoimc: TStaticText;
    ealtura: TEdit;
    epeso: TEdit;
    altura: TStaticText;
    peso: TStaticText;
    calcular: TButton;
    Sexo: TRadioGroup;
    Button1: TButton;
    procedure calcularClick(Sender: TObject);
    procedure ealturaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calculos: Tcalculos;

implementation

{$R *.dfm}

procedure Tcalculos.calcularClick(Sender: TObject);
var peso, altura, valorr: real;
begin
peso :=strtofloat (epeso.text);
altura :=strtofloat (ealtura.Text);
valorr := peso / (altura*altura);
Imcform.resultadovalor.text := floattostr (valorr);
if sexo.itemindex > -1 then
begin
if sexo.ItemIndex = 0 then
begin
imcform.classificacao.caption := 'Abaixo do peso';
if valorr > 20.7 then
imcform.classificacao.caption := 'Peso normal';
begin
if valorr > 26.4 then
imcform.classificacao.caption := 'Levemente acima do peso';
begin
if valorr > 27.8then
imcform.classificacao.caption := 'Acima do peso';
begin
if valorr > 31.1 then
imcform.classificacao.caption := 'Obeso';
end;
end;
end;
end
else
begin
if sexo.ItemIndex = 1 then
imcform.classificacao.caption := 'Abaixo do peso';
if valorr > 19.1 then
imcform.classificacao.caption := 'Peso normal';
begin
if valorr > 25.8 then
imcform.classificacao.caption := 'Levemente acima do peso';
begin
if valorr > 27.3 then
imcform.classificacao.caption := 'Acima do peso';
begin
if valorr > 32.3 then
imcform.classificacao.caption := 'Obeso';
end;
end;
end;
end;
end
else
MessageDlg('Voc� n�o escolheu nada, apenas o IMC estar� dispon�vel.', mtError, [mbOk],0);
Imcform.Showmodal;

end;

end.
