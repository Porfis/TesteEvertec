Teste de Lógica
===============

Arquivo: /Teste Logica/Algoritmo-Troca-Pneu.txt

Teste SQLServer
===============

Scripts: 
	/Teste SQL/1-select_clientes_tupa.sql
	/Teste SQL/2-select_cliente_cidade.sql
	/Teste SQL/3-select_cod_nome_ordenado.sql
	/Teste SQL/4-delete_clientes_intervalo.sql
	/Teste SQL/5-update_estado_cidades.sql
	/Teste SQL/6-insert_cliente_completo.sql
	/Teste SQL/7-view_cidades.sql
	/Teste SQL/8-procedure_cidades.sql

Teste Prático Delphi – Cadastro de Cidades e Clientes
=====================================================

Aplicação desenvolvida em Delphi com SQL Server para atender ao teste
proposto, contemplando cadastros, consultas, validações e relatórios.

Decisões Técnicas Adotadas
--------------------------

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
---------------------------

Banco: TesteEvertecNew

Scripts: 
	/Database/1-create_database.sql
	/Database/2-create_tables.sql
	/Database/3-constraints.sql
	/Database/4-indexes.sql
	/Database/5-seed.sql
	/Database/6-trigger.sql

Como criar o banco

1.  Abrir o SSMS
2.  Conectar em localhost
3.  Executar 1-create_database.sql
4.  Executar 2-create_tables.sql
5.  Executar 3-constraints.sql
6.  Executar 4-indexes.sql
7.  Executar 5-seed.sql
8.  Executar 6-trigger.sql

String de Conexão
-----------------

Provider=SQLOLEDB;Data Source=localhost\SQLEXPRESS;Initial Catalog=TesteEvertecNew;
Integrated Security=SSPI;

Funcionalidades
---------------

1. Cadastro de Cidades

CRUD completo e relatório. UF via ComboBox fixo.
Botão relatório na tela do cadastro, passando o filtro dinâmico para o relatório.

2. Cadastro de Clientes

CRUD, relacionamento com cidades, validação CEP x cidade, formatação
CEP.

3. Relatório de clientes

Opção de agrupamento por cidade.

4. Relatório Listagem de Cidades 

Listagem de cidades (Abrindo pelo Form principal é uma listagem completa sem filtros). 



Autor

Fernando Porfirio
