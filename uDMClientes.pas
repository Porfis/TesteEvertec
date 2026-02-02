unit uDMClientes;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB;

type
  TDMClientes = class(TDataModule)
    qryCidades: TADOQuery;
    qryCidadesID_Cidade: TAutoIncField;
    qryCidadesNome: TStringField;
    qryCidadesEstado: TStringField;
    qryCidadesCep_Inicial: TIntegerField;
    qryCidadesCep_Final: TIntegerField;
    qryClientes: TADOQuery;
    qryClientesID_Cliente: TAutoIncField;
    qryClientesCPF_CNPJ_Cliente: TStringField;
    qryClientesNome: TStringField;
    qryClientesTelefone: TStringField;
    qryClientesEndereco: TStringField;
    qryClientesBairro: TStringField;
    qryClientesComplemento: TStringField;
    qryClientesE_mail: TStringField;
    qryClientesCep: TIntegerField;
    qryClientesID_Cidade: TIntegerField;
    qryClientesNOME_CIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCidadesCep_InicialGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMClientes: TDMClientes;

implementation

uses
  uDMConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMClientes.DataModuleCreate(Sender: TObject);
begin
  qryCidades.Connection := DMConexao.ADOConnection;
  qryCidades.Open;
end;

procedure TDMClientes.qryCidadesCep_InicialGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
  begin
    Text := '';
    Exit;
  end;

  Text := Format('%.8d', [Sender.AsInteger]);
end;

end.
