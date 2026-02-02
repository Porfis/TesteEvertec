unit uFrmRelCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Forms, Data.DB,
  frxClass, frxDBSet, frxSmartMemo, frCoreClasses;

type
  TFrmRelCidades = class(TForm)
    frxReport: TfrxReport;
    frxDBDados: TfrxDBDataset;
    dsCidades: TDataSource;
  private
  public
    procedure ExecutarRelatorio(ADataSet: TDataSet; AFiltros: String);
  end;

implementation

uses
  uDMClientes;

{$R *.dfm}

procedure TFrmRelCidades.ExecutarRelatorio(ADataSet: TDataSet; AFiltros: String);
begin
  frxDBDados.DataSet := ADataSet;
  frxDBDados.UserName := 'CIDADES';

  frxReport.Variables['vFiltros'] := '''' + AFiltros + '''';
  frxReport.ShowReport;
end;

end.
