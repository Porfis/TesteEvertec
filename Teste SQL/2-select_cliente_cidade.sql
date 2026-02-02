SELECT 
    C.Nome AS Nome_Cliente,
    CID.Nome AS Nome_Cidade
FROM 
    dbo.CLIENTES C
        INNER JOIN dbo.CIDADES CID ON (C.ID_Cidade = CID.ID_Cidade);