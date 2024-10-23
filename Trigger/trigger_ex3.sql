CREATE TABLE LogOperacoes (
    IdLog INT IDENTITY(1,1) PRIMARY KEY,
    DataHora DATETIME DEFAULT GETDATE(),
    TipoOperacao CHAR(1) CHECK (TipoOperacao IN ('D', 'I', 'U')),
    NomeUsuario VARCHAR(100) DEFAULT SUSER_NAME(),
    DescricaoOperacao VARCHAR(200),
    TabelaAfetada VARCHAR(50),
    CodigoRegistro INT
);
GO
-- Trigger para a tabela Conta
CREATE TRIGGER tr_LogConta ON Conta
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @TipoOperacao CHAR(1);
    SET @TipoOperacao = 
        CASE
            WHEN EXISTS (SELECT 1 FROM inserted) AND EXISTS (SELECT 1 FROM deleted) THEN 'U'
            WHEN EXISTS (SELECT 1 FROM inserted) THEN 'I'
            ELSE 'D'
        END;
    
    INSERT INTO LogOperacoes (TipoOperacao, DescricaoOperacao, TabelaAfetada, CodigoRegistro)
    SELECT 
        @TipoOperacao,
        CASE 
            WHEN @TipoOperacao = 'U' THEN 'Atualização de conta'
            WHEN @TipoOperacao = 'I' THEN 'Inserção de conta'
            ELSE 'Exclusão de conta'
        END, 
        'Conta',
        CASE 
            WHEN @TipoOperacao IN ('U', 'D') THEN deleted.CodigoConta
            ELSE inserted.CodigoConta
        END
    FROM inserted
    FULL OUTER JOIN deleted ON inserted.CodigoConta = deleted.CodigoConta;
END;
GO
-- Trigger para tabela Lancamento
CREATE TRIGGER tr_LogLancamento ON Lancamento
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @TipoOperacao CHAR(1);
    SET @TipoOperacao = 
        CASE
            WHEN EXISTS (SELECT 1 FROM inserted) AND EXISTS (SELECT 1 FROM deleted) THEN 'U'
            WHEN EXISTS (SELECT 1 FROM inserted) THEN 'I'
            ELSE 'D'
        END;
    
    INSERT INTO LogOperacoes (TipoOperacao, DescricaoOperacao, TabelaAfetada, CodigoRegistro)
    SELECT 
        @TipoOperacao,
        CASE 
            WHEN @TipoOperacao = 'U' THEN 'Atualização de lançamento'
            WHEN @TipoOperacao = 'I' THEN 'Inserção de lançamento'
            ELSE 'Exclusão de lançamento'
        END, 
        'Lancamento',
        CASE 
            WHEN @TipoOperacao IN ('U', 'D') THEN deleted.CodigoLancamento
            ELSE inserted.CodigoLancamento
        END
    FROM inserted
    FULL OUTER JOIN deleted ON inserted.CodigoLancamento = deleted.CodigoLancamento;
END;
GO
-- Trigger for table Saldo
CREATE TRIGGER tr_LogSaldo ON Saldo
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @TipoOperacao CHAR(1);
    SET @TipoOperacao = 
        CASE
            WHEN EXISTS (SELECT 1 FROM inserted) AND EXISTS (SELECT 1 FROM deleted) THEN 'U'
            WHEN EXISTS (SELECT 1 FROM inserted) THEN 'I'
            ELSE 'D'
        END;

    INSERT INTO LogOperacoes (TipoOperacao, DescricaoOperacao, TabelaAfetada, CodigoRegistro)
    SELECT 
        @TipoOperacao,
        CASE 
            WHEN @TipoOperacao = 'U' THEN 'Atualização de saldo'
            WHEN @TipoOperacao = 'I' THEN 'Inserção de saldo'
            ELSE 'Exclusão de saldo'
        END,
        'Saldo',
        CASE 
            WHEN @TipoOperacao IN ('U', 'D') THEN deleted.CodigoConta
            ELSE inserted.CodigoConta
        END
    FROM inserted
    FULL OUTER JOIN deleted ON inserted.CodigoConta = deleted.CodigoConta;
END;
GO