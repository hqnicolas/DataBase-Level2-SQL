-- Questão:10
-- 1a parte
-- Crie um indice nonclustered chamado "idx_placa" na tabela "apolice", usando como chave a coluna que contém os dados das placas dos carros.
-- Este indice deverá cobrir (cobertura) as colunas Código da Apólice, Data de Início da Vigência e Data de Fim da Vigência, com o objetivo de evitar problemas com Key Lookup e/ou RID Lookup.

-- Sua resposta deverá ser o comando completo de criação do indice.

CREATE INDEX idx_placa ON apolice (placa) INCLUDE(codapolice, data_inicio_vigencia, data_fm_vigencia);

-- 2a parte
-- Execute a consulta a seguir e informe o nome do tipo de operador de plano de acesso e o 
-- nome do indice que ele usou para execução em cada uma das etapas abaixo:
-- Etapa 1: Antes da criação do índice feita na 1a parte.
-- Etapa 2: Depois da criação do índice feita na 1a parte.

SELECT cod_apolice, data_inicio_vigencia, data_fim_vigencia
FROM apolice
WHERE placa = 'FFR1234'



-- Before creating the index
EXPLAIN (COSTS FALSE) SELECT codapolice, data_inicio_vigencia, data_fim_vigencia FROM apolice WHERE placa = 'FFR1234';

CREATE INDEX idx_placa ON apolice (placa) INCLUDE(codapolice, data_inicio_vigencia, data_fm_vigencia);

-- After creating the index
EXPLAIN (COSTS FALSE) SELECT codapolice, data_inicio_vigencia, data_fim_vigencia FROM apolice WHERE placa = 'FFR1234';


 Etapa 1:
Bitmap Heap Scan para acessar a tabela. 
 Etapa 2:
Index Scan com o índice "idx_placa" para buscar as colunas necessárias. 