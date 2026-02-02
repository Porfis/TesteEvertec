USE TesteEvertecNew;
GO

CREATE TRIGGER TR_CLIENTES_VALIDA_CEP
ON dbo.CLIENTES
FOR INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN dbo.CIDADES c ON c.ID_Cidade = i.ID_Cidade
        WHERE i.Cep < c.Cep_Inicial
           OR i.Cep > c.Cep_Final
    )
    BEGIN
        RAISERROR ('CEP fora do intervalo permitido para a cidade.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

GO