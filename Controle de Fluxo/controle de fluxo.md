Usar os blocos IF e WHILE para controlar o fluxo do programa
Concluído
100 XP
3 minutos
Todas as linguagens de programação incluem elementos que ajudam a determinar o fluxo do programa ou a ordem em que as instruções são executadas. Embora não seja tenha tantos recursos quanto as linguagens como C#, o T-SQL fornece um conjunto de palavras-chave de controle de fluxo que você pode usar para executar testes lógicos e criar loops que contenham suas instruções de manipulação de dados T-SQL. Nesta lição, você aprenderá a usar as palavras-chave T-SQL IF e WHILE.

Entender o controle T-SQL da linguagem de fluxo
O SQL Server fornece elementos de linguagem que controlam o fluxo de execução do programa em lotes T-SQL, procedimentos armazenados e funções definidas pelo usuário de várias instruções. Esses elementos de controle de fluxo significam que você pode determinar programaticamente se deseja executar instruções e determinar programaticamente a ordem dessas instruções que devem ser executadas.

Esses elementos incluem, entre outros:

IF...ELSE, que executa um código baseado em uma expressão booliana.
WHILE, que cria um loop que é executado desde que uma condição seja true.
BEGIN…END, que define uma série de instruções T-SQL que devem ser executadas juntas.
Outras palavras-chave, por exemplo, são BREAK, CONTINUE, WAITFOR e RETURN, usadas para dar suporte a operações de controle de fluxo T-SQL.
Confira um exemplo de uma instrução IF:

SQL

Copiar
IF OBJECT_ID('dbo.tl') IS NOT NULL
    DROP TABLE dbo.tl
GO
Usar a lógica condicional em seus programas usando IF...ELSE
A estrutura IF...ELSE é usada em T-SQL para executar condicionalmente um bloco de código com base em um predicado. A instrução IF determina se a instrução ou o bloco seguinte (se BEGIN...END for usado) é executado ou não. Se o predicado for avaliado como TRUE, o código no bloco será executado. Quando o predicado é avaliado como FALSE ou UNKNOWN, o bloco não é executado, a menos que a palavra-chave opcional ELSE seja usada para identificar outro bloco de código.

Na instrução IF a seguir, estamos perguntando ao banco de dados se o OBJECT_ID é NULL. Em caso afirmativo, ele retorna a instrução PRINT. Neste exemplo, o objeto NÃO é nulo e, portanto, FALSE, o que significa que o código BEGIN/END não será executado. A instrução PRINT só será executada se o objeto não existir no banco de dados.

SQL

Copiar
USE TSQL;
GO
IF OBJECT_ID('HR.Employees') IS NULL --this object does exist in the sample database
BEGIN
    PRINT 'The specified object does not exist';
END;
Devido às limitações com o código acima com apenas uma instrução IF, isso pode ser confuso. A combinação de IF e ELSE oferece mais flexibilidade com a lógica em seu código e você pode usar várias instruções ELSE. Com o uso de ELSE, você tem outra opção de execução quando o predicado IF é avaliado como FALSE ou UNKNOWN, como no seguinte exemplo:

SQL

Copiar
IF OBJECT_ID('HR.Employees') IS NULL --this object does exist in the sample database
BEGIN
    PRINT 'The specified object does not exist';
END
ELSE
BEGIN
    PRINT 'The specified object exists';
END;
Nas operações de manipulação de dados, usar IF com a palavra-chave EXISTS pode ser uma ferramenta útil para verificações de existência eficientes, como no seguinte exemplo:

SQL

Copiar
IF EXISTS (SELECT * FROM Sales.EmpOrders WHERE empid =5)
BEGIN
    PRINT 'Employee has associated orders';
END;
Noções básicas sobre loop usando instruções WHILE
A instrução WHILE é usada para executar o código em um loop com base em um predicado. Como a instrução IF, a instrução WHILE determina se a instrução ou o bloco seguinte (se BEGIN...END for usado) é executado. O loop continua a ser executado, desde que a condição seja avaliada como TRUE. Normalmente, você controla o loop com uma variável testada pelo predicado e manipulada no corpo do próprio loop.

O seguinte exemplo usa a variável @empid no predicado e altera o valor dela no bloco BEGIN...END:

SQL

Copiar
DECLARE @empid AS INT = 1, @lname AS NVARCHAR(20);
WHILE @empid <=5
   BEGIN
	SELECT @lname = lastname FROM HR.Employees
		WHERE empid = @empid;
	PRINT @lname;
	SET @empid += 1;
   END;
Para obter opções adicionais em um loop WHILE, você pode usar as palavras-chave CONTINUE e BREAK para controlar o fluxo.