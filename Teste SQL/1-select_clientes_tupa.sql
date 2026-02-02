SELECT 
    C.Nome
FROM 
    dbo.CLIENTES C
WHERE 
    EXISTS (
        SELECT 1
        FROM dbo.CIDADES CID
        WHERE 
            CID.ID_Cidade = C.ID_Cidade AND 
            CID.Nome = 'TUPA'
    );