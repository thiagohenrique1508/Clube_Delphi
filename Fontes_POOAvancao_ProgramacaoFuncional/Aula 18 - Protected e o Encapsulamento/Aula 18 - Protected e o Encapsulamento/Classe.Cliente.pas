unit Classe.Cliente;

interface

uses Classe.Pessoa, Interfaces;

type
  TCliente = class(TPessoa)
    Saldo : Currency;
    function Devedor : Currency;
  end;

implementation

{ TCliente }

{ TCliente }

function TCliente.Devedor: Currency;
var
  aSQL: string;
begin
  aSQL := 'R$ ' + Self.GetHHH;
  Result := Saldo;
end;

end.
