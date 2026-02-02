inherited frmCadCidades: TfrmCadCidades
  Caption = 'Cadastro de Cidades'
  ClientHeight = 298
  ClientWidth = 641
  Constraints.MinHeight = 257
  Constraints.MinWidth = 657
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 657
  ExplicitHeight = 337
  TextHeight = 15
  inherited pnlTop: TPanel
    Height = 298
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 298
    object btnRelatorio: TButton
      Left = 2
      Top = 211
      Width = 57
      Height = 28
      Caption = 'Relat'#243'rio'
      TabOrder = 6
      OnClick = btnCancelarClick
    end
  end
  inherited pgPrincipal: TPageControl
    Width = 576
    Height = 298
    ActivePage = tsCadastro
    ExplicitWidth = 576
    ExplicitHeight = 298
    inherited tsConsulta: TTabSheet
      ExplicitWidth = 568
      ExplicitHeight = 268
      inherited grdConsulta: TDBGrid
        Width = 568
        Height = 233
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_Cidade'
            Title.Alignment = taRightJustify
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estado'
            Width = 43
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Cep_Inicial'
            Width = 72
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Cep_Final'
            Width = 72
            Visible = True
          end>
      end
      inherited pnlFiltro: TPanel
        Width = 568
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 568
        inherited lblTxtFiltro: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited edtFiltro: TEdit
          Width = 516
          TextHint = 'Digite parte do Nome da Cidade ou sigla do Estado / UF...'
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 516
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitWidth = 568
      ExplicitHeight = 268
      object lblCodigo: TLabel
        Left = 20
        Top = 16
        Width = 42
        Height = 15
        Caption = 'C'#243'digo:'
      end
      object lblNome: TLabel
        Left = 26
        Top = 45
        Width = 36
        Height = 15
        Caption = 'Nome:'
      end
      object lblCepIni: TLabel
        Left = 4
        Top = 76
        Width = 58
        Height = 15
        Caption = 'CEP Inicial:'
      end
      object lblUF: TLabel
        Left = 452
        Top = 45
        Width = 38
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Estado:'
      end
      object lblCepFin: TLabel
        Left = 266
        Top = 76
        Width = 52
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'CEP Final:'
      end
      object dbeCodigo: TDBEdit
        Left = 66
        Top = 13
        Width = 121
        Height = 23
        Color = clInactiveCaption
        DataField = 'ID_Cidade'
        DataSource = dsDados
        ReadOnly = True
        TabOrder = 0
      end
      object dbeNome: TDBEdit
        Left = 66
        Top = 42
        Width = 377
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Nome'
        DataSource = dsDados
        TabOrder = 1
      end
      object dbeCepIni: TDBEdit
        Left = 65
        Top = 73
        Width = 121
        Height = 23
        DataField = 'Cep_Inicial'
        DataSource = dsDados
        MaxLength = 8
        TabOrder = 3
      end
      object dbeCepFin: TDBEdit
        Left = 322
        Top = 73
        Width = 121
        Height = 23
        Anchors = [akTop, akRight]
        DataField = 'Cep_Final'
        DataSource = dsDados
        MaxLength = 8
        TabOrder = 4
      end
      object dbcUF: TDBComboBox
        Left = 496
        Top = 42
        Width = 57
        Height = 23
        Style = csDropDownList
        Anchors = [akTop, akRight]
        DataField = 'Estado'
        DataSource = dsDados
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 2
      end
    end
  end
  inherited dsDados: TDataSource
    Left = 411
  end
  inherited qryDados: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'SELECT C.* FROM CIDADES C;')
    Left = 352
    object qryDadosID_Cidade: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_Cidade'
      ReadOnly = True
    end
    object qryDadosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qryDadosEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object qryDadosCep_Inicial: TIntegerField
      DisplayLabel = 'CEP Inicial'
      FieldName = 'Cep_Inicial'
      DisplayFormat = '00000000'
    end
    object qryDadosCep_Final: TIntegerField
      DisplayLabel = 'CEP Final'
      FieldName = 'Cep_Final'
      DisplayFormat = '00000000'
    end
  end
  inherited ActionList1: TActionList
    Left = 480
    Top = 8
  end
end
