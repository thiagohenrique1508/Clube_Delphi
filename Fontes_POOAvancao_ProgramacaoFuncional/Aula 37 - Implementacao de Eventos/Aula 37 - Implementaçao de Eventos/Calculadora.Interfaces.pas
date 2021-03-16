unit Calculadora.Interfaces;

interface

uses Calculadora.Eventos;

type
  iCalculadora = interface;
  iOperacoesDisplay = interface;

  iOperacoes = interface
    ['{655C8757-9943-4A39-840C-D2DBC0B7039A}']
    function Executar: String;
    function Display : iOperacoesDisplay;
  end;

  iOperacoesDisplay = interface
    ['{823A4CEC-3CF2-45D6-9E18-63A4E616D32F}']
    function Resultado(Value : TEvDisplayTotal) : iOperacoesDisplay;
    function EndDisplay : iOperacoes;
  end;

  iCalculadoraDisplay = interface
    ['{A76BDC2E-B018-45AC-9885-4830DA28A3E0}']
    function Resultado(Value : TEvDisplayTotal) : iCalculadoraDisplay;
    function EndDisplay : iCalculadora;
  end;

  iCalculadora = interface
    ['{240DB1E0-C030-48E9-AA35-F6BD012184A6}']
    function Add(Value: String): iCalculadora; overload;
    function Add(Value: Integer): iCalculadora; overload;
    function Add(Value: Currency): iCalculadora; overload;
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
    function Display : iCalculadoraDisplay;
  end;

implementation

end.
