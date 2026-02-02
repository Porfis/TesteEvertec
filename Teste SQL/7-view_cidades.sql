CREATE VIEW vw_Cidades AS
SELECT 
    ID_Cidade,
    Nome,
    Estado,
    Cep_Inicial,
    Cep_Final
FROM 
    dbo.CIDADES;