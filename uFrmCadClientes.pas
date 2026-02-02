unit uFrmCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroBase, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.Win.ADODB, System.Actions, Vcl.ActnList;

type
  TFrmCadClientes = class(TfrmCadastroBase)
    lblCodigo: TLabel;
    dbeCodigo: TDBEdit;
    dbeCpfCnpj: TDBEdit;
    lblCpfCnpj: TLabel;
    dbeNome: TDBEdit;
    lblNome: TLabel;
    dbeFone: TDBEdit;
    lblFone: TLabel;
    dbeEndereco: TDBEdit;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    dbeBairro: TDBEdit;
    lblComplemento: TLabel;
    dbeComplemento: TDBEdit;
    lblCep: TLabel;
    dbeCep: TDBEdit;
    lblEmail: TLabel;
    dbeEmail: TDBEdit;
    lblCidade: TLabel;
    dlcCidade: TDBLookupComboBox;
    dsCidades: TDataSource;
    qryDadosID_Cliente: TAutoIncField;
    qryDadosCPF_CNPJ_Cliente: TStringField;
    qryDadosNome: TStringField;
    qryDadosTelefone: TStringField;
    qryDadosEndereco: TStringField;
    qryDadosBairro: TStringField;
    qryDadosComplemento: TStringField;
    qryDadosE_mail: TStringField;
    qryDadosCep: TIntegerField;
    qryDadosID_Cidade: TIntegerField;
    qryDadosNOME_CIDADE: TStringField;
    lblFaixaCep: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryDadosID_CidadeChange(Sender: TField);
    procedure qryDadosAfterScroll(DataSet: TDataSet);
    procedure qryDadosCalcFields(DataSet: TDataSet);
  private
    procedure AtualizarFaixaCep;
  protected
    procedure ConfigurarSQL; override;
    procedure AplicarFiltro; override;
    function ValidarDados: Boolean; override;
  public
    { Public declarations }
  end;

var
  FrmCadClientes: TFrmCadClientes;

implementation

uses
  uDMConexao, uDMClientes;

{$R *.dfm}

{ TFrmCadClientes }

procedure TFrmCadClientes.AplicarFiltro;
begin
  inherited;
  qryDados.Close;
  qryDados.Parameters[0].Value := '%' + edtFiltro.Text + '%';
  qryDados.Parameters[1].Value := '%' + edtFiltro.Text + '%';
  qryDados.Open;
end;

procedure TFrmCadClientes.AtualizarFaixaCep;
begin
  lblFaixaCEP.Caption := '';

  if (qryDados.FieldByName('ID_CIDADE').AsInteger <= 0) then
    Exit;

  with DMClientes do
  begin
    if (not qryCidades.IsEmpty) then
      lblFaixaCEP.Caption :=
        'Faixa de CEP: ' +
        qryCidades.FieldByName('CEP_INICIAL').Text +
        ' a ' +
        qryCidades.FieldByName('CEP_FINAL').Text;
  end;
end;

procedure TFrmCadClientes.ConfigurarSQL;
begin
  inherited;
  qryDados.Connection := DMConexao.AdoConnection;
  qryDados.SQL.Text :=
    'SELECT C.* FROM CLIENTES C ' +
    'WHERE C.NOME LIKE ? OR C.CPF_CNPJ_CLIENTE LIKE ?';
  AplicarFiltro;
end;

procedure TFrmCadClientes.FormCreate(Sender: TObject);
begin
  inherited;
  DMClientes := TDMClientes.Create(Self);
end;

procedure TFrmCadClientes.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DMClientes);
  inherited;
end;

procedure TFrmCadClientes.qryDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AtualizarFaixaCep;
end;

procedure TFrmCadClientes.qryDadosCalcFields(DataSet: TDataSet);
begin
  inherited;

  with DMClientes do
  begin
    qryDadosNOME_CIDADE.AsString := '';
    if (qryCidadesID_Cidade.AsInteger <> qryDadosID_Cidade.AsInteger) then
      if Not qryCidades.Locate('ID_Cidade', qryDadosID_Cidade.AsInteger, []) then
        Exit;

    qryDadosNOME_CIDADE.AsString := qryCidadesNome.AsString;
  end;
end;

procedure TFrmCadClientes.qryDadosID_CidadeChange(Sender: TField);
begin
  inherited;
  AtualizarFaixaCep;
end;

function TFrmCadClientes.ValidarDados: Boolean;
var
  sMsg: String;

  procedure AdicLinhaMensagem(Msg: String);
  begin
    if (sMsg = EmptyStr) then
      sMsg := sMsg + Msg
    else
      sMsg := sMsg + #13#10 + Msg;
  end;

begin
  Result := inherited ValidarDados;

  if qryDados.FieldByName('NOME').AsString = '' then
  begin
    AdicLinhaMensagem('Informe o Nome.');
    Result := False;
  end;

  if qryDados.FieldByName('CPF_CNPJ_CLIENTE').AsString = '' then
  begin
    AdicLinhaMensagem('Informe o CPF / CNPJ.');
    Result := False;
  end;

  if qryDados.FieldByName('CEP').AsString = '' then
  begin
    AdicLinhaMensagem('Informe o CEP.');
    Result := False;
  end;

  if qryDados.FieldByName('ID_Cidade').AsString = '' then
  begin
    AdicLinhaMensagem('Selecione a Cidade.');
    Result := False;
  end;

  if not Result then
    MessageDlg(sMsg, mtWarning, [mbOk], 0);
end;

end.
