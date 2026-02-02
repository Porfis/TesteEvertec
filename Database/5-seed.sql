USE TesteEvertec;
GO

INSERT INTO dbo.CIDADES (NOME, UF, CEP_Inicial, CEP_Final)
VALUES
('Tupã', 'SP', 17605000, 17805999),
('Bauru', 'SP', 17000000, 17099999),
('Marília', 'SP', 17500000, 17599999);

INSERT INTO dbo.CLIENTES(CPF_CNPJ_Cliente, Nome, Telefone, Endereco, Bairro, Complemento, E_mail, Cep, ID_Cidade)
VALUES
('12345678901', 'Cliente Teste 1', '(14)99888-1111', 'Rua das Flores, 123', 'Centro', 'Casa', 'cliente1@email.com', 17010000, 2),
('98765432100', 'Cliente Teste 2', '(14)99777-2222', 'Av. Paulista, 1000', 'Jardim Paulista', 'Apto 12', 'cliente2@email.com', 17520000, 3),
('45678912300', 'Cliente Teste 3', '(14)99666-3333', 'Rua XV de Novembro, 500', 'Vila Santista', 'Fundos', 'cliente3@email.com', 17605080, 1);
GO
