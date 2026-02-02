object DMClientes: TDMClientes
  OnCreate = DataModuleCreate
  Height = 203
  Width = 270
  object qryCidades: TADOQuery
    Connection = DMConexao.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '    * '
      'FROM '
      '    CIDADES;')
    Left = 56
    Top = 40
    object qryCidadesID_Cidade: TAutoIncField
      FieldName = 'ID_Cidade'
      ReadOnly = True
    end
    object qryCidadesNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryCidadesEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object qryCidadesCep_Inicial: TIntegerField
      FieldName = 'Cep_Inicial'
      OnGetText = qryCidadesCep_InicialGetText
    end
    object qryCidadesCep_Final: TIntegerField
      FieldName = 'Cep_Final'
      OnGetText = qryCidadesCep_InicialGetText
    end
  end
  object qryClientes: TADOQuery
    Active = True
    Connection = DMConexao.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT C.*, CID.NOME AS NOME_CIDADE FROM CLIENTES C  '
      'INNER JOIN CIDADES CID ON (C.ID_CIDADE = CID.ID_CIDADE);')
    Left = 160
    Top = 40
    object qryClientesID_Cliente: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_Cliente'
      ReadOnly = True
    end
    object qryClientesCPF_CNPJ_Cliente: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPF_CNPJ_Cliente'
      Size = 14
    end
    object qryClientesNome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object qryClientesTelefone: TStringField
      FieldName = 'Telefone'
    end
    object qryClientesEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Endereco'
      Size = 150
    end
    object qryClientesBairro: TStringField
      FieldName = 'Bairro'
      Size = 100
    end
    object qryClientesComplemento: TStringField
      FieldName = 'Complemento'
      Size = 100
    end
    object qryClientesE_mail: TStringField
      DisplayLabel = 'Email'
      FieldName = 'E_mail'
      Size = 150
    end
    object qryClientesCep: TIntegerField
      FieldName = 'Cep'
      DisplayFormat = '00000000'
      MaxValue = 99999999
    end
    object qryClientesID_Cidade: TIntegerField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'ID_Cidade'
      ProviderFlags = []
    end
    object qryClientesNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 100
    end
  end
end
