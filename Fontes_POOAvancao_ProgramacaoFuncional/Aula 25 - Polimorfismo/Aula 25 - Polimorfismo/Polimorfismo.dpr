program Polimorfismo;

uses
  System.StartUpCopy,
  FMX.Forms,
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Principal in 'Principal.pas' {Form1},
  Conexao.SQLServer in 'Conexao.SQLServer.pas',
  Conexao.MySQL in 'Conexao.MySQL.pas',
  Interfaces in 'Interfaces.pas',
  Classe.Fornecedor in 'Classe.Fornecedor.pas',
  Classe in 'Classe.pas',
  Classe.Cliente in 'Classe.Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
