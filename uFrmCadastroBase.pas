unit ufrmCadastroBase;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Vcl.Controls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TModoTela = (mtConsulta, mtVisualizacao, mtInclusao, mtEdicao);

  TfrmCadastroBase = class(TForm)
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    btnVisualizar: TButton;
    pnlTop: TPanel;
    dsDados: TDataSource;
    pgPrincipal: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    grdConsulta: TDBGrid;
    qryDados: TADOQuery;
    pnlFiltro: TPanel;
    lblTxtFiltro: TLabel;
    edtFiltro: TEdit;
    ActionList1: TActionList;
    actFiltrar: TAction;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure grdConsultaDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pgPrincipalChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtFiltroChange(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
  private
    var
      FModo: TModoTela;
  protected
    procedure ConfigurarSQL; virtual; abstract;
    procedure ConfigurarCampos; virtual;
    procedure AbrirDados;
    procedure SetModo(AModo: TModoTela);
    procedure HabilitarCampos(AHabilitar: Boolean);
    function ValidarDados: Boolean; virtual;
    procedure AplicarFiltro; virtual;
    function TratarPendencia: Boolean;
    procedure AdicLinhaMensagem(var MsgBase: String; const NovaMsg: String);
  public
    procedure AfterConstruction; override;
  end;

implementation

{$R *.dfm}

uses
  Dialogs;


{ TfrmCadastroBase }

procedure TfrmCadastroBase.actFiltrarExecute(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmCadastroBase.AdicLinhaMensagem(var MsgBase: String; const NovaMsg: String);
begin
  if (MsgBase = EmptyStr) then
    MsgBase := MsgBase + NovaMsg
  else
    MsgBase := MsgBase + #13#10 + NovaMsg;
end;

procedure TfrmCadastroBase.AfterConstruction;
begin
  inherited;
  ConfigurarSQL;
  AbrirDados;
  ConfigurarCampos;
end;

procedure TfrmCadastroBase.AplicarFiltro;
begin

end;

procedure TfrmCadastroBase.AbrirDados;
begin
  if qryDados.Active then
    qryDados.Close;
  qryDados.Open;
end;

procedure TfrmCadastroBase.ConfigurarCampos;
begin

end;

procedure TfrmCadastroBase.edtFiltroChange(Sender: TObject);
begin
  actFiltrar.Execute;
end;

procedure TfrmCadastroBase.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := TratarPendencia;
end;

procedure TfrmCadastroBase.FormCreate(Sender: TObject);
begin
  SetModo(mtConsulta);
end;

procedure TfrmCadastroBase.HabilitarCampos(AHabilitar: Boolean);
var
  I: Integer;
begin
  for I := 0 to tsCadastro.ControlCount - 1 do
    if tsCadastro.Controls[I] is TWinControl then
      TWinControl(tsCadastro.Controls[I]).Enabled := AHabilitar;

  btnSalvar.Enabled := AHabilitar;
  btnCancelar.Enabled := AHabilitar;
  btnIncluir.Enabled := Not AHabilitar;
  btnAlterar.Enabled := Not AHabilitar;
  btnVisualizar.Enabled := Not AHabilitar;
  btnExcluir.Enabled := Not AHabilitar;
end;

procedure TfrmCadastroBase.pgPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := TratarPendencia;
  if AllowChange then
    SetModo(mtConsulta);
end;

procedure TfrmCadastroBase.SetModo(AModo: TModoTela);
begin
  FModo := AModo;

  case FModo of
    mtConsulta:
      begin
        pgPrincipal.ActivePage := tsConsulta;
        HabilitarCampos(False);
      end;

    mtVisualizacao:
      begin
        pgPrincipal.ActivePage := tsCadastro;
        HabilitarCampos(False);
      end;

    mtInclusao:
      begin
        pgPrincipal.ActivePage := tsCadastro;
        qryDados.Append;
        HabilitarCampos(True);
      end;

    mtEdicao:
      begin
        pgPrincipal.ActivePage := tsCadastro;
        qryDados.Edit;
        HabilitarCampos(True);
      end;
  end;
end;

function TfrmCadastroBase.TratarPendencia: Boolean;
var
  Resp: Integer;
begin
  Result := True;

  if qryDados.State in [dsInsert, dsEdit] then
  begin
    Resp := MessageDlg(
      'Existem alterações não salvas. Deseja salvar?',
      mtConfirmation,
      [mbYes, mbNo, mbCancel],
      0);

    case Resp of
      mrYes:
        begin
          if ValidarDados then
          begin
            Try
              qryDados.Post;
            Except
              On E:Exception do
              begin
                Result := False;
                MessageDlg(E.Message, mtError, [mbOk], 0);
              end;
            End;
          end
          else
            Result := False;
        end;

      mrNo:
        qryDados.Cancel;

      mrCancel:
        Result := False;
    end;
  end;
end;

function TfrmCadastroBase.ValidarDados: Boolean;
begin
  ActiveControl := nil;
  Result := True;
end;

procedure TfrmCadastroBase.btnIncluirClick(Sender: TObject);
begin
  SetModo(mtInclusao);
end;

procedure TfrmCadastroBase.btnAlterarClick(Sender: TObject);
begin
  SetModo(mtEdicao);
end;

procedure TfrmCadastroBase.btnVisualizarClick(Sender: TObject);
begin
  SetModo(mtVisualizacao);
end;

procedure TfrmCadastroBase.grdConsultaDblClick(Sender: TObject);
begin
  SetModo(mtVisualizacao);
end;

procedure TfrmCadastroBase.btnCancelarClick(Sender: TObject);
begin
  qryDados.Cancel;
  SetModo(mtConsulta);
end;

procedure TfrmCadastroBase.btnSalvarClick(Sender: TObject);
begin
  if ValidarDados then
  begin
    qryDados.Post;
    SetModo(mtConsulta);
  end;
end;

procedure TfrmCadastroBase.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    qryDados.Delete;
end;


end.
