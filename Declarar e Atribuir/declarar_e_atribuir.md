Declarar e atribuir variáveis e sinônimos


No T-SQL, assim como com outras linguagens de programação, as variáveis são objetos que permitem o armazenamento temporário de um valor para uso posterior. Você já encontrou variáveis quando as usou para passar valores de parâmetro para procedimentos armazenados e funções.

No T-SQL, as variáveis precisam ser declaradas antes que possam ser usadas. Elas podem receber um valor ou serem inicializadas quando são declaradas. Declarar uma variável inclui fornecer um nome e um tipo de dados, conforme mostrado abaixo. Para declarar uma variável, você precisa usar a instrução DECLARE.

As variáveis precisam ser declaradas no mesmo lote em que são referenciadas. Em outras palavras, todas as variáveis T-SQL são locais no escopo do lote, tanto na visibilidade quanto no tempo de vida. Somente outras instruções no mesmo lote podem ver uma variável declarada no lote. Uma variável é destruída automaticamente quando o lote termina.
