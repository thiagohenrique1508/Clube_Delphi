unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Calculadora,
  Calculadora.Interfaces;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    FCalculadora: iCalculadora;
    { Private declarations }
  public
    { Public declarations }
    property Calculadora: iCalculadora read FCalculadora write FCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit3.Text := Calculadora
                  .Add(Edit1.Text)
                  .Add(Edit2.Text)
                  .Soma.Executar;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit3.Text :=  Calculadora
                  .Add(Edit1.Text)
                  .Add(Edit2.Text)
                  .Subtrair.Executar;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit3.Text :=  Calculadora
                  .Add(Edit1.Text)
                  .Add(Edit2.Text)
                  .Dividir.Executar;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit3.Text :=  Calculadora
                  .Add(Edit1.Text)
                  .Add(Edit2.Text)
                  .Multiplicar.Executar;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Calculadora := TCalculadora.New;
end;

end.
