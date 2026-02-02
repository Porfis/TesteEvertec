inherited FrmCadClientes: TFrmCadClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 298
  ClientWidth = 684
  Constraints.MinHeight = 257
  Constraints.MinWidth = 700
  StyleElements = [seFont, seClient, seBorder]
  OnDestroy = FormDestroy
  ExplicitWidth = 700
  ExplicitHeight = 337
  TextHeight = 15
  inherited pnlTop: TPanel
    Height = 298
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 298
  end
  inherited pgPrincipal: TPageControl
    Width = 619
    Height = 298
    ActivePage = tsCadastro
    ExplicitWidth = 619
    ExplicitHeight = 298
    inherited tsConsulta: TTabSheet
      ExplicitWidth = 611
      ExplicitHeight = 268
      inherited grdConsulta: TDBGrid
        Width = 611
        Height = 233
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_Cliente'
            Title.Alignment = taRightJustify
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF_CNPJ_Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CIDADE'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_Cidade'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Telefone'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Complemento'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'E_mail'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Cep'
            Visible = False
          end>
      end
      inherited pnlFiltro: TPanel
        Width = 611
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 611
        DesignSize = (
          611
          35)
        inherited lblTxtFiltro: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited edtFiltro: TEdit
          Width = 559
          TextHint = 'Digite parte do CPF, CNPJ ou Nome do Cliente...'
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 559
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitWidth = 611
      ExplicitHeight = 268
      object lblCodigo: TLabel
        Left = 20
        Top = 16
        Width = 42
        Height = 15
        Caption = 'C'#243'digo:'
      end
      object lblCpfCnpj: TLabel
        Left = 6
        Top = 45
        Width = 56
        Height = 15
        Caption = 'CPF/CNPJ:'
      end
      object lblNome: TLabel
        Left = 236
        Top = 45
        Width = 36
        Height = 15
        Caption = 'Nome:'
      end
      object lblFone: TLabel
        Left = 12
        Top = 74
        Width = 50
        Height = 15
        Caption = 'Telefone: '
      end
      object lblEndereco: TLabel
        Left = 217
        Top = 74
        Width = 55
        Height = 15
        Caption = 'Endere'#231'o: '
      end
      object lblBairro: TLabel
        Left = 25
        Top = 103
        Width = 37
        Height = 15
        Caption = 'Bairro: '
      end
      object lblComplemento: TLabel
        Left = 192
        Top = 103
        Width = 80
        Height = 15
        Caption = 'Complemento:'
      end
      object lblCep: TLabel
        Left = 38
        Top = 132
        Width = 24
        Height = 15
        Caption = 'CEP:'
      end
      object lblEmail: TLabel
        Left = 240
        Top = 132
        Width = 32
        Height = 15
        Caption = 'Email:'
      end
      object lblCidade: TLabel
        Left = 22
        Top = 161
        Width = 40
        Height = 15
        Caption = 'Cidade:'
      end
      object lblFaixaCep: TLabel
        Left = 400
        Top = 161
        Width = 204
        Height = 15
        Caption = 'Faixa de CEP: 00000000 a 99999999  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeCodigo: TDBEdit
        Left = 66
        Top = 13
        Width = 121
        Height = 23
        Color = clInactiveCaption
        DataField = 'ID_Cliente'
        DataSource = dsDados
        ReadOnly = True
        TabOrder = 0
      end
      object dbeCpfCnpj: TDBEdit
        Left = 66
        Top = 42
        Width = 121
        Height = 23
        DataField = 'CPF_CNPJ_Cliente'
        DataSource = dsDados
        TabOrder = 1
      end
      object dbeNome: TDBEdit
        Left = 277
        Top = 42
        Width = 328
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Nome'
        DataSource = dsDados
        TabOrder = 2
      end
      object dbeFone: TDBEdit
        Left = 66
        Top = 71
        Width = 121
        Height = 23
        DataField = 'Telefone'
        DataSource = dsDados
        TabOrder = 3
      end
      object dbeEndereco: TDBEdit
        Left = 277
        Top = 71
        Width = 328
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Endereco'
        DataSource = dsDados
        TabOrder = 4
      end
      object dbeBairro: TDBEdit
        Left = 65
        Top = 100
        Width = 121
        Height = 23
        DataField = 'Bairro'
        DataSource = dsDados
        TabOrder = 5
      end
      object dbeComplemento: TDBEdit
        Left = 276
        Top = 100
        Width = 328
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Complemento'
        DataSource = dsDados
        TabOrder = 6
      end
      object dbeCep: TDBEdit
        Left = 65
        Top = 129
        Width = 121
        Height = 23
        DataField = 'Cep'
        DataSource = dsDados
        MaxLength = 8
        TabOrder = 7
      end
      object dbeEmail: TDBEdit
        Left = 276
        Top = 129
        Width = 328
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        DataField = 'E_mail'
        DataSource = dsDados
        TabOrder = 8
      end
      object dlcCidade: TDBLookupComboBox
        Left = 65
        Top = 159
        Width = 329
        Height = 23
        DataField = 'ID_Cidade'
        DataSource = dsDados
        KeyField = 'ID_Cidade'
        ListField = 'Nome'
        ListSource = dsCidades
        TabOrder = 9
      end
    end
  end
  object dsCidades: TDataSource [3]
    DataSet = DMClientes.qryCidades
    Left = 464
    Top = 216
  end
  inherited qryDados: TADOQuery
    CursorType = ctStatic
    AfterOpen = qryDadosAfterScroll
    AfterClose = qryDadosAfterScroll
    AfterInsert = qryDadosAfterScroll
    AfterEdit = qryDadosAfterScroll
    AfterCancel = qryDadosAfterScroll
    AfterDelete = qryDadosAfterScroll
    AfterScroll = qryDadosAfterScroll
    OnCalcFields = qryDadosCalcFields
    SQL.Strings = (
      'SELECT C.* FROM CLIENTES C; ')
    object qryDadosID_Cliente: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_Cliente'
      ReadOnly = True
    end
    object qryDadosCPF_CNPJ_Cliente: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPF_CNPJ_Cliente'
      Size = 14
    end
    object qryDadosNome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object qryDadosTelefone: TStringField
      FieldName = 'Telefone'
    end
    object qryDadosEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Endereco'
      Size = 150
    end
    object qryDadosBairro: TStringField
      FieldName = 'Bairro'
      Size = 100
    end
    object qryDadosComplemento: TStringField
      FieldName = 'Complemento'
      Size = 100
    end
    object qryDadosE_mail: TStringField
      DisplayLabel = 'Email'
      FieldName = 'E_mail'
      Size = 150
    end
    object qryDadosCep: TIntegerField
      FieldName = 'Cep'
      DisplayFormat = '00000000'
      MaxValue = 99999999
    end
    object qryDadosID_Cidade: TIntegerField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'ID_Cidade'
      ProviderFlags = []
      OnChange = qryDadosID_CidadeChange
    end
    object qryDadosNOME_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkCalculated
      FieldName = 'NOME_CIDADE'
      ProviderFlags = []
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList1: TActionList
    Left = 64
  end
end
