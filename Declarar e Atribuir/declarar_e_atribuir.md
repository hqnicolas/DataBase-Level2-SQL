Declarar e atribuir variáveis e sinônimos
Concluído
100 XP
3 minutos
No T-SQL, assim como com outras linguagens de programação, as variáveis são objetos que permitem o armazenamento temporário de um valor para uso posterior. Você já encontrou variáveis quando as usou para passar valores de parâmetro para procedimentos armazenados e funções.

No T-SQL, as variáveis precisam ser declaradas antes que possam ser usadas. Elas podem receber um valor ou serem inicializadas quando são declaradas. Declarar uma variável inclui fornecer um nome e um tipo de dados, conforme mostrado abaixo. Para declarar uma variável, você precisa usar a instrução DECLARE.

SQL

Copiar
--Declare and initialize the variables.
DECLARE @numrows INT = 3, @catid INT = 2;
--Use variables to pass the parameters to the procedure.
EXEC Production.ProdsByCategory @numrows = @numrows, @catid = @catid;
GO
As variáveis precisam ser declaradas no mesmo lote em que são referenciadas. Em outras palavras, todas as variáveis T-SQL são locais no escopo do lote, tanto na visibilidade quanto no tempo de vida. Somente outras instruções no mesmo lote podem ver uma variável declarada no lote. Uma variável é destruída automaticamente quando o lote termina.

Trabalhar com variáveis
Depois de declarar uma variável, você precisa inicializá-la ou atribuir um valor a ela. Você pode fazer isso de três maneiras:

No SQL Server 2008 ou posterior, você pode inicializar uma variável usando a instrução DECLARE.
Em qualquer versão do SQL Server, você pode atribuir um único valor (escalar) usando a instrução SET.
Em qualquer versão do SQL Server, você pode atribuir um valor a uma variável usando a instrução SELECT. Verifique se a instrução SELECT retorna exatamente uma linha. Um resultado vazio deixará a variável com o valor original dela; mais de um resultado terá o último resultado como retorno.
O seguinte exemplo mostra as três maneiras de declarar e atribuir valores a variáveis:

SQL

Copiar
DECLARE @var1 AS INT = 99;
DECLARE @var2 AS NVARCHAR(255);
SET @var2 = N'string';
DECLARE @var3 AS NVARCHAR(20);
SELECT @var3 = lastname FROM HR.Employees WHERE empid=1;
SELECT @var1 AS var1, @var2 AS var2, @var3 AS var3;
GO
Isso produz os resultados a seguir.

var1	var2	var3
99	string	Davis
 Dica

Para obter orientação completa sobre variáveis locais, consulte a documentação de referência do T-SQL.

Trabalhar com sinônimos
No SQL Server, os sinônimos fornecem um método para criar um link, ou alias, para um objeto armazenado no mesmo banco de dados ou até mesmo em outra instância do SQL Server. Os objetos que podem ter sinônimos definidos incluem tabelas, exibições, procedimentos armazenados e funções definidas pelo usuário.

Os sinônimos podem ser usados para fazer com que um objeto remoto pareça local ou para fornecer um nome alternativo para um objeto local. Por exemplo, os sinônimos podem ser usados para fornecer uma camada de abstração entre o código do cliente e os objetos de banco de dados reais usados pelo código. O código faz referência a objetos pelos aliases deles, independentemente do nome real do objeto.

 Observação

Você pode criar um sinônimo que aponta para um objeto que ainda não existe. Isso é chamado resolução diferida de nome. O mecanismo do SQL Server não verificará a existência do objeto real até que o sinônimo seja usado em runtime.

Para gerenciar sinônimos, use os comandos DDL (linguagem de definição de dados) CREATE SYNONYM, ALTER SYNONYM e DROP SYNONYM, como no seguinte exemplo:

SQL

Copiar
CREATE SYNONYM dbo.ProdsByCategory FOR TSQL.Production.ProdsByCategory;
GO
EXEC dbo.ProdsByCategory @numrows = 3, @catid = 2;
Para criar um sinônimo, você precisa ter a permissão 'CREATE SYNONYM', bem como a permissão para alterar o esquema no qual o sinônimo será armazenado.

 Observação

Para criar um sinônimo, o usuário precisa ter a permissão CREATE SYNONYM e ter propriedade ou permissão de ALTER SCHEMA no esquema de destino.

Um sinônimo é um objeto "vazio" que é resolvido para o objeto de origem quando referenciado em runtime.