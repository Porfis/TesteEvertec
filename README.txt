Teste Prático Delphi – Cadastro de Cidades e Clientes

Aplicação desenvolvida em Delphi com SQL Server para atender ao teste
proposto, contemplando cadastros, consultas, validações e relatórios.

Decisões Técnicas Adotadas

1. Arquitetura de Telas com Herança

Foi criada uma tela base de cadastro (TFrmCadastroBase) contendo: -
Botões padrão (Incluir, Alterar, Excluir, Visualizar, Salvar,
Cancelar) - Filtros de consulta - PageControl com abas de consulta e
cadastro

As telas de Cidades e Clientes herdam desta tela base.

2. DataModule de Conexão

A conexão com o banco foi isolada no dmConexao com ADOConnection.

3. Uso de SQL Server + T-SQL

Utilização de constraints, foreign keys, check constraints e validações
no banco e na aplicação.

4. Validações Centralizadas

Validações feitas no método virtual ValidarDados da tela base e
especializadas nas telas filhas.

5. Controle de Estados do Cadastro

Controle de inclusão, alteração, visualização e consulta, evitando perda
de dados.

6. Relatórios

Uso do FastReport Trial apenas para geração do executável, sem
dependência para compilação.

Estrutura do Banco de Dados

Banco: TesteEvertec

Scripts: /Banco/script_criacao.sql /Banco/script_seeds.sql

Como criar o banco

1.  Abrir o SSMS
2.  Conectar em localhost
3.  Executar script_criacao.sql
4.  Executar script_seeds.sql

String de Conexão

Provider=SQLOLEDB; Data Source=localhost; Initial Catalog=TesteEvertec;
Integrated Security=SSPI;

Funcionalidades

Cadastro de Cidades

CRUD completo e relatório. UF via ComboBox fixo.

Cadastro de Clientes

CRUD, relacionamento com cidades, validação CEP x cidade, formatação
CEP.

Relatórios

Listagem de cidades e clientes agrupados por cidade.

Autor

Fernando Porfirio
