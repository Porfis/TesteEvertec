object FrmSobre: TFrmSobre
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sobre'
  ClientHeight = 220
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 220
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblProduto: TLabel
      Left = 28
      Top = 24
      Width = 137
      Height = 21
      Caption = 'Nome do Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVersao: TLabel
      Left = 28
      Top = 51
      Width = 61
      Height = 13
      Caption = 'Vers'#227'o 1.0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCopyright: TLabel
      Left = 28
      Top = 100
      Width = 102
      Height = 13
      Caption = #169' 2026 Fernando P.'
    end
    object lblEmpresa: TLabel
      Left = 28
      Top = 120
      Width = 92
      Height = 13
      Caption = 'Nome da Empresa'
    end
    object Bevel1: TBevel
      Left = 24
      Top = 155
      Width = 353
      Height = 2
    end
    object btnFechar: TBitBtn
      Left = 302
      Top = 175
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
end
