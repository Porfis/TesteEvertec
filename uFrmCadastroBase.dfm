object frmCadastroBase: TfrmCadastroBase
  Left = 0
  Top = 0
  Caption = 'Cadastro Base'
  ClientHeight = 323
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 65
    Height = 323
    Align = alLeft
    TabOrder = 0
    object btnIncluir: TButton
      Left = 2
      Top = 7
      Width = 57
      Height = 28
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 2
      Top = 41
      Width = 57
      Height = 28
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnVisualizar: TButton
      Left = 2
      Top = 75
      Width = 57
      Height = 28
      Caption = 'Visualizar'
      TabOrder = 2
      OnClick = btnVisualizarClick
    end
    object btnExcluir: TButton
      Left = 2
      Top = 109
      Width = 57
      Height = 28
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSalvar: TButton
      Left = 1
      Top = 143
      Width = 57
      Height = 28
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 2
      Top = 177
      Width = 57
      Height = 28
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btnCancelarClick
    end
  end
  object pgPrincipal: TPageControl
    Left = 65
    Top = 0
    Width = 527
    Height = 323
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 1
    OnChanging = pgPrincipalChanging
    object tsConsulta: TTabSheet
      Caption = 'Consulta'
      object grdConsulta: TDBGrid
        Left = 0
        Top = 35
        Width = 519
        Height = 258
        Align = alClient
        DataSource = dsDados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = grdConsultaDblClick
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 519
        Height = 35
        Align = alTop
        TabOrder = 1
        DesignSize = (
          519
          35)
        object lblTxtFiltro: TLabel
          Left = 9
          Top = 11
          Width = 30
          Height = 15
          Caption = 'Filtro:'
        end
        object edtFiltro: TEdit
          Left = 43
          Top = 7
          Width = 467
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          OnChange = edtFiltroChange
        end
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
    end
  end
  object dsDados: TDataSource
    DataSet = qryDados
    Left = 259
    Top = 7
  end
  object qryDados: TADOQuery
    Connection = DMConexao.ADOConnection
    Parameters = <>
    Left = 168
    Top = 8
  end
  object ActionList1: TActionList
    Left = 80
    object actFiltrar: TAction
      Caption = 'Filtrar'
      OnExecute = actFiltrarExecute
    end
  end
end
