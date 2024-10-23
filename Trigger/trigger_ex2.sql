-- Criando procedimento para transferência de valores entre contas
CREATE OR ALTER PROCEDURE sp_TransferirValor
(
    @CodigoContaOrigem INT,
    @CodigoContaDestino INT,
    @ValorTransferencia DECIMAL(10, 2),
    @DescricaoTransferencia VARCHAR(100)
)
AS
BEGIN

    -- Validações de entrada
    IF NOT EXISTS (SELECT 1 FROM Conta WHERE CodigoConta = @CodigoContaOrigem)
        THROW 50003, N'Conta de origem não encontrada.', 1;

    IF NOT EXISTS (SELECT 1 FROM Conta WHERE CodigoConta = @CodigoContaDestino)
        THROW 50004, N'Conta de destino não encontrada.', 1;

    IF @CodigoContaOrigem = @CodigoContaDestino
        THROW 50005, N'Conta de destino e de envio não podem ser as mesmas', 1;

    IF @ValorTransferencia <= 0
        THROW 50006, N'O valor de transferência deve ser maior que zero', 1;

    -- Verificar saldo suficiente na conta de origem
    DECLARE @SaldoAtual DECIMAL(10, 2);
    SELECT TOP 1 @SaldoAtual = ValorSaldo 
    FROM Saldo 
    WHERE CodigoConta = @CodigoContaOrigem 
    ORDER BY DataSaldo DESC;

    IF @SaldoAtual < @ValorTransferencia
        THROW 50007, N'Saldo insuficiente na conta de origem', 1;

    BEGIN TRANSACTION;

    BEGIN TRY
        -- Debitar conta de origem
        EXEC sp_AdicionarLancamento GETDATE(), @CodigoContaOrigem, @DescricaoTransferencia + ' (Débito)', 'D', @ValorTransferencia;

        -- Creditar conta de destino
        EXEC sp_AdicionarLancamento GETDATE(), @CodigoContaDestino, @DescricaoTransferencia + ' (Crédito)', 'C', @ValorTransferencia;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;


-- Ajuste na trigger para contemplar operações de transferência
-- Nenhuma alteração necessária, pois a trigger já atualiza o saldo com base nos lançamentos
-- e o procedimento de transferência utiliza o procedimento de adicionar lançamento.

-- Exemplo de uso:
-- Inserindo contas
INSERT INTO Conta (NomeCorrentista) VALUES ('João Silva');
INSERT INTO Conta (NomeCorrentista) VALUES ('Maria Souza');

-- Adicionando transações iniciais
EXEC sp_AdicionarLancamento '2024-10-22', 1, 'Depósito inicial', 'C', 1000.00;
EXEC sp_AdicionarLancamento '2024-10-22', 2, 'Depósito inicial', 'C', 500.00;

-- Transferindo valor
EXEC sp_TransferirValor 1, 2, 200.00, 'Transferência entre contas';
