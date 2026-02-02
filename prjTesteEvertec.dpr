program prjTesteEvertec;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Main},
  uFrmCadastroBase in 'uFrmCadastroBase.pas' {frmCadastroBase},
  uFrmCadClientes in 'uFrmCadClientes.pas' {FrmCadClientes},
  uDMConexao in 'uDMConexao.pas' {DMConexao: TDataModule},
  uDMClientes in 'uDMClientes.pas' {DMClientes: TDataModule},
  uFrmCadCidades in 'uFrmCadCidades.pas' {frmCadCidades},
  uFrmRelCidades in 'uFrmRelCidades.pas' {FrmRelCidades},
  uFrmRelClientes in 'uFrmRelClientes.pas' {frmRelClientes},
  uFrmSobre in 'uFrmSobre.pas' {FrmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TFrmSobre, FrmSobre);
  Application.Run;
end.
