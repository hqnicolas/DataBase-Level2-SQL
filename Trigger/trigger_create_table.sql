CREATE TABLE Conta (
    CodigoConta INT PRIMARY KEY IDENTITY(1,1),
    NomeCorrentista VARCHAR(100),
    Status BIT DEFAULT 1
);

CREATE TABLE Lancamento (
    CodigoLancamento INT PRIMARY KEY IDENTITY(1,1),
    DataOperacao DATE,
    CodigoConta INT,
    DescricaoOperacao VARCHAR(100),
    TipoOperacao CHAR(1) CHECK (TipoOperacao IN ('D', 'C')),
    ValorOperacao DECIMAL(10, 2),
    CONSTRAINT FK_Lancamento_Conta FOREIGN KEY (CodigoConta) REFERENCES Conta(CodigoConta)
);

CREATE TABLE Saldo (
    CodigoSaldo INT PRIMARY KEY IDENTITY(1,1),
    DataSaldo DATE,
    CodigoConta INT,
    ValorSaldo DECIMAL(10, 2),
    CONSTRAINT FK_Saldo_Conta FOREIGN KEY (CodigoConta) REFERENCES Conta(CodigoConta)
);