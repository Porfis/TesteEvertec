unit uFrmCadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroBase, Data.DB,
  System.Actions, Vcl.ActnList, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadCidades = class(TfrmCadastroBase)
    qryDadosID_Cidade: TAutoIncField;
    qryDadosNome: TStringField;
    qryDadosEstado: TStringField;
    qryDadosCep_Inicial: TIntegerField;
    qryDadosCep_Final: TIntegerField;
    lblCodigo: TLabel;
    dbeCodigo: TDBEdit;
    lblNome: TLabel;
    dbeNome: TDBEdit;
    lblCepIni: TLabel;
    dbeCepIni: TDBEdit;
    lblUF: TLabel;
    lblCepFin: TLabel;
    dbeCepFin: TDBEdit;
    dbcUF: TDBComboBox;
    btnRelatorio: TButton;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure ConfigurarSQL; override;
    procedure AplicarFiltro; override;
    function ValidarDados: Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

uses
  uDMConexao, uFrmRelCidades, uFrmCadClientes;

{$R *.dfm}

{ TfrmCadCidades }

procedure TfrmCadCidades.AplicarFiltro;
begin
  inherited;
  qryDados.Close;
  qryDados.Parameters[0].Value := '%' + edtFiltro.Text + '%';
  qryDados.Parameters[1].Value := '%' + edtFiltro.Text + '%';
  qryDados.Open;
end;

procedure TfrmCadCidades.btnCancelarClick(Sender: TObject);
var
  Frm: TFrmRelCidades;
  sFiltros: String;
begin
  sFiltros := '';
  if (Trim(edtFiltro.Text) <> '') then
    sFiltros := 'Filtros: Nome da Cidade ou Sigla do Estado contendo "' + edtFiltro.Text + '"';

  Frm := TFrmRelCidades.Create(nil);

  try
    Frm.ExecutarRelatorio(qryDados, sFiltros);
  finally
    Frm.Free;
  end;
end;

procedure TfrmCadCidades.btnExcluirClick(Sender: TObject);
begin
  try
    inherited;
  except
    on E:Exception do
    begin
      if (Pos('FK_CLIENTES_CIDADES', E.Message) > 0) then
        MessageDlg('Não é possível excluir esta cidade pois existem clientes vinculados a ela.', mtWarning, [mbOk], 0)
      else
        MessageDlg('Erro na exclusão.', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmCadCidades.ConfigurarSQL;
begin
  inherited;
  qryDados.Connection := DMConexao.AdoConnection;
  qryDados.SQL.Text :=
    'SELECT C.* FROM CIDADES C ' +
    'WHERE C.NOME LIKE ? OR C.ESTADO LIKE ?';
  AplicarFiltro;
end;

function TfrmCadCidades.ValidarDados: Boolean;
var
  sMsg: String;
begin
  Result := inherited ValidarDados;

  if qryDados.FieldByName('NOME').AsString = '' then
  begin
    AdicLinhaMensagem(sMsg, 'Informe o Nome da Cidade.');
    Result := False;
  end;

  if qryDados.FieldByName('Estado').AsString = '' then
  begin
    AdicLinhaMensagem(sMsg, 'Informe o Estado / UF.');
    Result := False;
  end;

  if qryDados.FieldByName('Cep_Inicial').AsString = '' then
  begin
    AdicLinhaMensagem(sMsg, 'Informe o CEP Inicial.');
    Result := False;
  end;

  if qryDados.FieldByName('Cep_Final').AsString = '' then
  begin
    AdicLinhaMensagem(sMsg, 'Informe o CEP Final.');
    Result := False;
  end;

  if not Result then
    MessageDlg(sMsg, mtWarning, [mbOk], 0);
end;

end.
