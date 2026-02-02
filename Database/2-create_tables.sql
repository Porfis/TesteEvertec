USE TesteEvertec;
GO

CREATE TABLE dbo.CIDADES (
    ID_Cidade       INT IDENTITY(1,1) NOT NULL,
    NOME            VARCHAR(50) NOT NULL,
    UF              CHAR(2) NOT NULL,
    CEP_Inicial     INT NOT NULL,
    CEP_Final       INT NOT NULL,

    CONSTRAINT PK_CIDADES PRIMARY KEY (ID_Cidade)
);
GO

CREATE TABLE dbo.CLIENTES(
	ID_Cliente 			INT IDENTITY(1,1) NOT NULL,
	CPF_CNPJ_Cliente 	varchar(14) NOT NULL,
	Nome				varchar(50) NOT NULL,
	Telefone			varchar(14) NULL,
	Endereco			varchar(50) NULL,
	Bairro				varchar(30) NULL,
	Complemento			varchar(50) NULL,
	E_mail				varchar(50) NULL,
	Cep					int NOT NULL,
	ID_Cidade			int NOT NULL,
 CONSTRAINT PK_CLIENTES PRIMARY KEY (ID_Cliente)
);
GO
