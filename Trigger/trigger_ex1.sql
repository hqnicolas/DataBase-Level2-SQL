-- Criando um gatilho para atualizar o saldo
CREATE OR ALTER TRIGGER tr_AtualizarSaldo ON Lancamento AFTER INSERT
AS
BEGIN
    IF (ROWCOUNT_BIG() = 0)
        RETURN;

    -- Atualiza o saldo para operações de Débito (D)
    UPDATE S
    SET ValorSaldo = S.ValorSaldo - I.ValorOperacao
    FROM Saldo S
    INNER JOIN inserted I ON S.CodigoConta = I.CodigoConta AND S.DataSaldo = I.DataOperacao
    WHERE I.TipoOperacao = 'D';

    -- Atualiza o saldo para operações de Crédito (C)
    UPDATE S
    SET ValorSaldo = S.ValorSaldo + I.ValorOperacao
    FROM Saldo S
    INNER JOIN inserted I ON S.CodigoConta = I.CodigoConta AND S.DataSaldo = I.DataOperacao
    WHERE I.TipoOperacao = 'C';

    -- Insere novo registro de saldo para Débito (D) caso não exista
    INSERT INTO Saldo (DataSaldo, CodigoConta, ValorSaldo)
    SELECT I.DataOperacao, I.CodigoConta, -I.ValorOperacao
    FROM inserted I
    WHERE I.TipoOperacao = 'D' AND NOT EXISTS (
        SELECT 1
        FROM Saldo S
        WHERE S.CodigoConta = I.CodigoConta AND S.DataSaldo = I.DataOperacao
    );

    -- Insere novo registro de saldo para Crédito (C) caso não exista
    INSERT INTO Saldo (DataSaldo, CodigoConta, ValorSaldo)
    SELECT I.DataOperacao, I.CodigoConta, I.ValorOperacao
    FROM inserted I
    WHERE I.TipoOperacao = 'C' AND NOT EXISTS (
        SELECT 1
        FROM Saldo S
        WHERE S.CodigoConta = I.CodigoConta AND S.DataSaldo = I.DataOperacao
    );
END;


-- Exemplo de uso:
-- Inserindo uma conta 
INSERT INTO Conta (NomeCorrentista) VALUES ('João Silva');

-- Adicionando uma transação 
EXEC sp_AdicionarLancamento '2024-10-22', 1, 'Depósito inicial', 'C', 1000.00;  





------
-- Testando o procedimento de adicionar lançamento

DECLARE @CodigoConta INT;

-- Inserindo uma conta 
BEGIN TRY
    INSERT INTO Conta (NomeCorrentista, Status) VALUES ('Maria Souza', 1);
    SET @CodigoConta = SCOPE_IDENTITY();
END TRY
BEGIN CATCH
    PRINT 'Erro ao inserir a conta.';
    -- Tratar o erro aqui se necessário
END CATCH

-- Testando com lançamento de crédito
EXEC sp_AdicionarLancamento '2024-10-22', @CodigoConta, 'Depósito', 'C', 500.00;

-- Testando com lançamento de débito
EXEC sp_AdicionarLancamento '2024-10-22', @CodigoConta, 'Retirada', 'D', 200.00;

-- Testando com lançamento em outra data
EXEC sp_AdicionarLancamento '2024-10-23', @CodigoConta, 'Depósito', 'C', 300.00;

-- Verificando o saldo
SELECT * FROM Saldo WHERE CodigoConta = @CodigoConta;

-- Testando erro de conta não encontrada
BEGIN TRY
    EXEC sp_AdicionarLancamento '2024-10-22', 999, 'Teste', 'C', 100.00;
END TRY
BEGIN CATCH
    PRINT 'Erro: Conta não encontrada.';
    -- Tratar o erro aqui se necessário
END CATCH

-- Testando erro de tipo de operação inválido
BEGIN TRY
    EXEC sp_AdicionarLancamento '2024-10-22', @CodigoConta, 'Teste', 'X', 100.00;
END TRY
BEGIN CATCH
    PRINT 'Erro: Tipo de operação inválido.';
    -- Tratar o erro aqui se necessário
END CATCH

-- Testando erro de valor de operação inválido
BEGIN TRY
    EXEC sp_AdicionarLancamento '2024-10-22', @CodigoConta, 'Teste', 'C', 0.00;
END TRY
BEGIN CATCH
    PRINT 'Erro: Valor de operação inválido.';
    -- Tratar o erro aqui se necessário
END CATCH





