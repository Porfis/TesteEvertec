unit uFrmSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmSobre = class(TForm)
    pnlFundo: TPanel;
    lblProduto: TLabel;
    lblVersao: TLabel;
    lblCopyright: TLabel;
    lblEmpresa: TLabel;
    btnFechar: TBitBtn;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    function GetVersionInfo(const AFieldName: string): string;
  public
  end;

var
  FrmSobre: TFrmSobre;

implementation

{$R *.dfm}

function TFrmSobre.GetVersionInfo(const AFieldName: string): string;
var
  n, Len: DWORD;
  Buf: PByte;
  Value: PChar;
  Lang: string;
begin
  Result := '';
  n := GetFileVersionInfoSize(PChar(ParamStr(0)), n);
  if n > 0 then
  begin
    GetMem(Buf, n);
    try
      GetFileVersionInfo(PChar(ParamStr(0)), 0, n, Buf);
      Lang := '040904E4';
      if VerQueryValue(Buf, PChar('\StringFileInfo\' + Lang + '\' + AFieldName), Pointer(Value), Len) then
        Result := Value;
    finally
      FreeMem(Buf);
    end;
  end;
end;

procedure TFrmSobre.FormCreate(Sender: TObject);
begin
  lblProduto.Caption   := GetVersionInfo('ProductName');
  lblVersao.Caption    := 'Versão: ' + GetVersionInfo('FileVersion');
  lblCopyright.Caption := GetVersionInfo('LegalCopyright');
  lblEmpresa.Caption   := GetVersionInfo('CompanyName');
end;

procedure TFrmSobre.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.