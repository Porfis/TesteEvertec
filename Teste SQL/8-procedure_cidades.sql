CREATE PROCEDURE sp_CrudCidades
    @Operacao CHAR(1), --I=Insert U=Update D=Delete
    @ID_Cidade INT = NULL,
    @Nome VARCHAR(50) = NULL,
    @Estado CHAR(2) = NULL,
    @Cep_Inicial INT = NULL,
    @Cep_Final INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @Operacao = 'I'
    BEGIN
        INSERT INTO dbo.CIDADES (Nome, Estado, Cep_Inicial, Cep_Final)
            VALUES (@Nome, @Estado, @Cep_Inicial, @Cep_Final);
    END
    ELSE IF @Operacao = 'U'
    BEGIN
        UPDATE 
            dbo.CIDADES
        SET 
            Nome = @Nome,
            Estado = @Estado,
            Cep_Inicial = @Cep_Inicial,
            Cep_Final = @Cep_Final
        WHERE 
            ID_Cidade = @ID_Cidade;
    END
    ELSE IF @Operacao = 'D'
    BEGIN
        DELETE FROM 
            dbo.CIDADES
        WHERE 
            ID_Cidade = @ID_Cidade;
    END
END;