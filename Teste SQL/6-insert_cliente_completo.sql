INSERT INTO dbo.CLIENTES (
    CPF_CNPJ_Cliente,
    Nome,
    Telefone,
    Endereco,
    Bairro,
    Complemento,
    E_mail,
    Cep,
    ID_Cidade
)
VALUES (
    '11122233344',
    'Cliente Exemplo',
    '14999999999',
    'Rua Exemplo, 123',
    'Centro',
    'Apto 10',
    'cliente@exemplo.com',
    17010000,
    2
);

/*
SELECT * FROM CIDADES;

SELECT TOP 1 * FROM CLIENTES ORDER BY ID_CLIENTE DESC;
*/

