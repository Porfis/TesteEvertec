unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TMain = class(TForm)
    mmnMain: TMainMenu;
    meiCadastro: TMenuItem;
    meiCidade: TMenuItem;
    meiCliente: TMenuItem;
    meiRelatorio: TMenuItem;
    meiRelClientes: TMenuItem;
    meiSobre: TMenuItem;
    procedure meiClienteClick(Sender: TObject);
    procedure meiCidadeClick(Sender: TObject);
    procedure meiRelClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses
  uFrmCadClientes, uFrmCadCidades, uFrmRelClientes;

{$R *.dfm}

procedure TMain.meiCidadeClick(Sender: TObject);
begin
  with TFrmCadCidades.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMain.meiClienteClick(Sender: TObject);
begin
  with TFrmCadClientes.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMain.meiRelClientesClick(Sender: TObject);
begin
  with TFrmRelClientes.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

end.
