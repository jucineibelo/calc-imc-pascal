unit uDadosPessoa;

interface

uses
  System.SysUtils;

Type
  RDados_Pessoa = record
    Altura: Double;
    Peso: Double;
    Sexo: String;
    IMC: String;
  end;

function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;

var
  P_Dados_Pessoa: RDados_Pessoa;

implementation

function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;

var
  l_IMC: Double;
  l_StrIMC: String;

begin
  if p_Sexo = '' then
    raise Exception.Create('Obrigat�rio informar o sexo!');

  try

    l_IMC := p_Peso / (p_Altura * p_Altura);
    if p_Sexo = 'F' then
    
    begin
      if (l_IMC < 18.5) then
        l_StrIMC := 'Abaixo do peso'
      else if (l_IMC >= 18.5) and (l_IMC <= 24.9) then
        l_StrIMC := 'Peso ideal'
      else if (l_IMC > 25) and (l_IMC <= 29.9) then
        l_StrIMC := 'Levemente acima do peso'
      else if (l_IMC > 30) and (l_IMC <= 34.9) then
        l_StrIMC := 'Acima do peso, cuidado!'
      else if (l_IMC > 35) then
        l_StrIMC := 'Obesidade, procure um profissional de sa�de!';

    end

    else
    begin
      if p_Sexo = 'M' then
      begin
        if (l_IMC < 20.7) then
          l_StrIMC := 'Abaixo do peso'
        else if (l_IMC >= 20.7) and (l_IMC <= 26.4) then
          l_StrIMC := 'Peso ideal'
        else if (l_IMC >= 26.4) and (l_IMC <= 27.8) then
          l_StrIMC := 'Levemente acima do peso'
        else if (l_IMC > 27.8) and (l_IMC <= 31.1) then
          l_StrIMC := 'Acima do peso, cuidado!'
        else if (l_IMC > 31.1) then
          l_StrIMC := 'Obesidade, procure um profissional de sa�de!';

      end;

    end;
    Result := l_StrIMC;

  except

    raise Exception.Create('Erro ao efetuar c�lculo de IMC');

  end;

end;

end.
