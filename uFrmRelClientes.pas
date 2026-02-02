unit uFrmRelClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxSmartMemo, frCoreClasses, Data.DB, Data.Win.ADODB;

type
  TfrmRelClientes = class(TForm)
    pnlFiltros: TPanel;
    btnImprimir: TButton;
    chkAgruparCidade: TCheckBox;
    edtCliIni: TEdit;
    edtCliFim: TEdit;
    lblCodCli: TLabel;
    lblCodCid: TLabel;
    edtCidIni: TEdit;
    edtCidFim: TEdit;
    lblEstado: TLabel;
    cbEstado: TComboBox;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExecutarRelatorio(ADataSet: TDataSet; AFiltros: String);
  end;

var
  frmRelClientes: TfrmRelClientes;

implementation

uses
  uDMClientes;


{$R *.dfm}

procedure TfrmRelClientes.btnImprimirClick(Sender: TObject);
begin
  ExecutarRelatorio(DMClientes.qryClientes, '');
end;

procedure TfrmRelClientes.ExecutarRelatorio(ADataSet: TDataSet; AFiltros: String);
var
  vFiltroDesc: string;
  sCodCliIni, sCodCliFim, sCodCidIni, sCodCidFim: string;
begin
  frxDBDataSet.DataSet := ADataSet;
  vFiltroDesc := Format('Clientes: %s a %s | Cidades: %s a %s | UF: %s',
    [edtCliIni.Text, edtCliFim.Text, edtCidIni.Text, edtCidFim.Text, cbEstado.Text]);

  frxReport.Variables['vFiltroDesc'] := QuotedStr(vFiltroDesc);
  frxReport.Variables['vAgrupar'] := chkAgruparCidade.Checked;

  frxReport.Variables['vFiltros'] := '''' + AFiltros + '''';

  sCodCliIni := edtCliIni.Text;
  if (StrToIntDef(edtCliIni.Text, 0) = 0) then
    sCodCliIni := '0';

  sCodCliFim := edtCliFim.Text;
  if (StrToIntDef(edtCliFim.Text, 0) = 0) then
    sCodCliFim := '999999999';

  sCodCidIni  := edtCidIni.Text;
  if (StrToIntDef(edtCidIni.Text, 0) = 0) then
    sCodCidIni := '0';

  sCodCidFim := edtCidFim.Text;
  if (StrToIntDef(edtCidFim.Text, 0) = 0) then
    sCodCidFim := '999999999';

  with TADOQuery(ADataSet) do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT C.*, CID.NOME AS NOME_CIDADE FROM CLIENTES C');
    SQL.Add('INNER JOIN CIDADES CID ON (C.ID_CIDADE = CID.ID_CIDADE)');
    SQL.Add('WHERE 1=1');
    SQL.Add('AND C.ID_CLIENTE BETWEEN ' + sCodCliIni + ' AND ' + sCodCliFim);
    SQL.Add('AND C.ID_CIDADE BETWEEN ' + sCodCidIni + ' AND ' + sCodCidFim);

    if cbEstado.Text <> '' then
      SQL.Add('AND CID.ESTADO = ' + QuotedStr(cbEstado.Text));

    if chkAgruparCidade.Checked then
      SQL.Add('ORDER BY C.ID_CIDADE, C.NOME')
    else
      SQL.Add('ORDER BY C.NOME');

    Open;
  end;

  frxReport.ShowReport;
end;

procedure TfrmRelClientes.FormCreate(Sender: TObject);
begin
  DMClientes := TDMClientes.Create(Self);
end;

procedure TfrmRelClientes.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DMClientes);
end;

end.
