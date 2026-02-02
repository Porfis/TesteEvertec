unit uDMConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDMConexao = class(TDataModule)
    ADOConnection: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  ADOConnection.Connected := True;
end;

end.
