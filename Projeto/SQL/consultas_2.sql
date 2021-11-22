-- INICIO CONSULTAS

-- INICIO 2A
/*
    a) Acrescente uma coluna nova �data de inclus�o� no formato date, na primeira tabela criada.
    
    Objetivo:
    incluir a tabela data de inclus�o na tabela candidato
*/
ALTER TABLE TB_LOJA
ADD DT_INCLUSAO DATE;
-- FIM 2A

-- INICIO 2B
/*
    b) Altere o valor desta coluna colocando a data do sistema.
    
    Objetivo:
    Definir para todos os candidatos a data da inclus�o como a data do sistema
*/
UPDATE TB_LOJA
SET DT_INCLUSAO = SYSDATE;
-- FIM 2B

-- INICIO 2C
/*
    c) Altere o tamanho de qualquer campo da tabela principal de seu sistema e
    acrescente a restri��o de n�o permitir valores nulos.
    
    Objetivo:
    Altera o tamanho do endere�o da tabela Loja de 50 para 60 e atribuir a
    restri��o not null na coluna endere�o.
*/
ALTER TABLE TB_LOJA
MODIFY (TX_ENDERECO VARCHAR2(60) NOT NULL);
-- FIM 2C

-- INICIO 2D
/*
    d) Excluir a coluna acrescentada na quest�o 1.
    
    Objetivo:
    Excluir a coluna "data da inclus�o" da tabela candidato
*/
ALTER TABLE TB_LOJA
DROP COLUMN DT_INCLUSAO;
-- FIM 2D

-- INICIO 2E
/*
    e) Escreva um comando Select utilizando a cl�usula LIKE.
    
    Objetivo:
    listar c�digo, endere�o, telefone e cidade da loja, c�digo do produto,
    quantidade em estoque na loja e nome do medicamento em que o nome do
    laborat�rio cont�m a palavra 'Sanofi'.
*/
SELECT
    l.COD_LOJA,
    lp.COD_PRODUTO,
    l.TX_ENDERECO AS ENDERECO,
    l.TX_TELEFONE AS TELEFONE,
    l.NM_CIDADE AS CIDADE,
    lp.VL_QTDE_EST_LOJA AS QUANTIDADE,
    p.NM_MEDICAMENTO AS MEDICAMENTO
FROM TB_LOJA l
INNER JOIN TB_LOJA_PRODUTO lp
ON l.COD_LOJA = lp.COD_LOJA
INNER JOIN TB_PRODUTO p
ON p.COD_PRODUTO = lp.COD_PRODUTO
WHERE p.NM_LAB LIKE '%Sanofi%';
-- FIM 2E

-- INICIO 2F
/*
    f) Escreva um comando Select que utilize a cl�usula where com 2 condi��es
    e order by.
    
    Objetivo:
    listar c�digo da loja e do produto, nome da cidade, quantidade em estoque e
    nome do medicamento em que a loja esteja localizada nas cidades de Itu,
    Sorocaba ou Votorantim. Al�m disso a quantidade em estoque deve ser maior que 15.
    Essa lista � ordenada pela quantidade em estoque do maior para o menor. 
*/
SELECT
    l.COD_LOJA,
    p.COD_PRODUTO,
    l.NM_CIDADE AS CIDADE,
    lp.VL_QTDE_EST_LOJA AS QUANTIDADE,
    p.NM_MEDICAMENTO AS MEDICAMENTO
FROM TB_LOJA l
INNER JOIN TB_LOJA_PRODUTO lp
ON l.COD_LOJA = lp.COD_LOJA
INNER JOIN TB_PRODUTO p
ON p.COD_PRODUTO = lp.COD_PRODUTO
WHERE l.NM_CIDADE IN ('Itu', 'Sorocaba', 'Votorantim')
AND lp.VL_QTDE_EST_LOJA > 15
ORDER BY lp.VL_QTDE_EST_LOJA DESC;
-- FIM 2F

-- INICIO 2G
/*
    g) Escreva um comando Select utilizando a cl�usula distinct.
    
    Objetivo:
    exibir a lista de medicamentos �nicos presentes nos estoques de Sorocaba
    com quantidade maior que 30 ordenados alfabeticamente.
*/
SELECT DISTINCT p.NM_MEDICAMENTO AS MEDICAMENTO
FROM TB_PRODUTO p
INNER JOIN TB_ESTOQUE_PRODUTO ep
ON p.COD_PRODUTO = ep.COD_PRODUTO
INNER JOIN TB_ESTOQUE e
ON e.COD_ESTOQUE = ep.COD_ESTOQUE
WHERE e.NM_CIDADE = 'Sorocaba'
AND ep.VL_QUANTIDADE > 30
ORDER BY p.NM_MEDICAMENTO;
-- FIM 2G

-- INICIO 2H
/*
    h) Escreva um comando que utilize uma fun��o de soma de datas dentro da
    cl�usula where.
    
    Objetivo:
    listar os pedidos entregues no m�ximo 10 dias ap�s a data de elabora��o.
    A lista cont�m o c�digo do pedido, c�digo da loja,
    data de elabora��o e de entrega, quantidade e nome do medicamento.
*/
SELECT
    p.COD_PEDIDO,
    p.COD_LOJA,
    p.DT_ELABORACAO,
    p.DT_ENTREGA,
    pp.VL_QUANTIDADE,
    prod.NM_MEDICAMENTO
FROM TB_PEDIDO p
INNER JOIN TB_PEDIDO_PRODUTO pp
ON p.COD_PEDIDO = pp.COD_PEDIDO
INNER JOIN TB_PRODUTO prod
ON prod.COD_PRODUTO = pp.COD_PRODUTO
WHERE DT_ENTREGA <=  DT_ELABORACAO + 10;
-- FIM 2H

-- INICIO 2I
/*
    i) Escreva um comando select para listar a data do sistema mostrando dia,
    m�s, ano, hora, minuto e segundo.
    
    Objetivo:
    lista a data do sistema com m�s, ano, hora, minuto e segundo.
*/
SELECT TO_CHAR(SYSDATE, 'DD-MM-YYYY:HH24:MI:SS')
FROM DUAL;
-- FIM I

-- INICIO 2J
/*
    j) Escreva uma consulta usando jun��o de mais de 2 tabelas.
    
    Objetivo:
    listar c�digo e nome do medicamento, o c�digo e a cidade da loja que vendem
    esse produto e o c�digo, nome da empresa e cidade que fornece esse
    medicamento.
    Ordenado pelo c�digo do produto e pelo c�digo da loja.
*/
SELECT
    p.COD_PRODUTO,
    p.NM_MEDICAMENTO AS MEDICAMENTO,
    l.COD_LOJA,
    l.NM_CIDADE AS CIDADE_LOJA,
    f.COD_FORNECEDOR,
    f.NM_EMPRESA AS EMPRESA,
    f.NM_CIDADE AS CIDADE_FORNECEDOR
FROM TB_PRODUTO p
INNER JOIN TB_LOJA_PRODUTO lp
ON p.COD_PRODUTO = lp.COD_PRODUTO
INNER JOIN TB_LOJA l
ON l.COD_LOJA = lp.COD_LOJA
INNER JOIN TB_FORNECEDOR_PRODUTO fp
ON p.COD_PRODUTO = fp.COD_PRODUTO
INNER JOIN TB_FORNECEDOR f
ON f.COD_FORNECEDOR = fp.COD_FORNECEDOR
ORDER BY p.COD_PRODUTO, l.COD_LOJA;
-- FIM J

-- INICIO 2K
/*
    k) Escreva uma consulta que seja �til para a l�gica de neg�cios usando
    jun��o e uma ou mais fun��es de totaliza��o.
    
    Objetivo:
    lista c�digo da loja, cidade dessa loja, m�dia de dias de entrega dos
    pedidos, quantidade de pedidos por loja e quantidade de produtos diferentes
    pedidos por loja.
*/
SELECT
    l.COD_LOJA,
    l.NM_CIDADE AS CIDADE_LOJA,
    ROUND(AVG(DT_ENTREGA - DT_ELABORACAO)) AS MEDIA_DIAS_ENTREGA,
    COUNT(p.COD_PEDIDO) AS PEDIDOS_POR_LOJA,
    SUM(prod.COD_PRODUTO) AS QTDE_PROD_DIF_PEDIDOS_POR_LOJA
FROM TB_PEDIDO p
INNER JOIN TB_PEDIDO_PRODUTO pp
ON p.COD_PEDIDO = pp.COD_PEDIDO
INNER JOIN TB_PRODUTO prod
ON prod.COD_PRODUTO = pp.COD_PRODUTO
INNER JOIN TB_LOJA l
ON l.COD_LOJA = p.COD_LOJA
GROUP BY l.COD_LOJA, l.NM_CIDADE
ORDER BY l.COD_LOJA;
-- FIM K

-- INICIO 2L
/*
    l) Escreva uma consulta usando jun��o externa left join ou right join.
    
    Objetivo:
    listar c�digo do pedido, c�digo da loja, e quantidade dos pedidos em que a
    quantidade � maior que 100.
*/
SELECT 
    p.COD_PEDIDO,
    p.COD_LOJA,
    pp.COD_PRODUTO,
    pp.VL_QUANTIDADE
FROM TB_PEDIDO p
RIGHT JOIN TB_PEDIDO_PRODUTO pp
ON p.COD_PEDIDO = pp.COD_PEDIDO
WHERE pp.VL_QUANTIDADE > 100
ORDER BY pp.COD_PEDIDO;
-- FIM L

-- INICIO 2M
/*
    m) Escreva uma consulta usando o operador de Uni�o.
    
    Objetivo:
    exibe o c�digo da loja em que o faturamento foi maior oou igual a 10000 ou
    fez pedidos dentro do primeiro semestre de 2021.
*/
SELECT l.COD_LOJA
FROM TB_LOJA l
WHERE l.VL_FATURAMENTO >= 10000
UNION
SELECT p.COD_LOJA
FROM TB_PEDIDO p
WHERE p.DT_ELABORACAO BETWEEN '01/01/2021' AND '30/06/2021';
-- FIM M

-- INICIO 2N
/*
    n) Escreva uma consulta usando o operador Minus.
    
    Objetivo:
    exibe os dados da loja que n�o tem os medicamentos que cont�m em sua
    composi��o Dipirona e Cafe�na.
*/
SELECT *
FROM TB_LOJA l
MINUS
SELECT
    l.COD_LOJA,
    l.TX_ENDERECO,
    l.TX_TELEFONE,
    l.NM_CIDADE,
    l.VL_FATURAMENTO
FROM TB_LOJA l
INNER JOIN TB_LOJA_PRODUTO lp
ON l.COD_LOJA = lp.COD_LOJA
INNER JOIN TB_PRODUTO p
ON p.COD_PRODUTO = lp.COD_PRODUTO
WHERE p.NM_COMPOSICAO LIKE '%Dipirona%'
OR p.NM_COMPOSICAO LIKE '%Cafe�na%';
-- FIM N

-- INICIO 2O
/*
    o) Escreva uma consulta usando o operador de intersec��o.
    
    Objetivo:
    listar os dados das lojas que tiveram algum pedido entregue no segundo semestre
    de 2021 e que tem medicamentos contendo o texto 'ina' em suas prateleiras.
*/
SELECT
    l.COD_LOJA,
    l.TX_ENDERECO,
    l.TX_TELEFONE,
    l.NM_CIDADE,
    l.VL_FATURAMENTO
FROM TB_LOJA l
INNER JOIN TB_PEDIDO p
ON l.COD_LOJA = p.COD_LOJA
WHERE p.DT_ENTREGA BETWEEN '01/07/2021' AND '31/12/2021'
INTERSECT
SELECT
    l.COD_LOJA,
    l.TX_ENDERECO,
    l.TX_TELEFONE,
    l.NM_CIDADE,
    l.VL_FATURAMENTO
FROM TB_LOJA l
INNER JOIN TB_LOJA_PRODUTO lp
ON l.COD_LOJA = lp.COD_LOJA
INNER JOIN TB_PRODUTO p
ON p.COD_PRODUTO = lp.COD_PRODUTO
WHERE p.NM_MEDICAMENTO LIKE '%ina%';
-- FIM O

-- INICIO 2P
/*
    o) Escreva uma View usando Group by e Having.
    
    Objetivo:
    vis�o que lista o c�digo, cidade e faturamento das lojas que tenham mais de
    1 pedido.
*/
CREATE OR REPLACE VIEW LOJAS_COM_MAIS_1_PEDIDO
AS
SELECT
    p.COD_LOJA,
    l.NM_CIDADE AS CIDADE,
    l.VL_FATURAMENTO AS FATURAMENTO,
    COUNT(p.COD_PEDIDO) AS QTDE_PEDIDOS
FROM TB_PEDIDO p
INNER JOIN TB_LOJA l
ON p.COD_LOJA = l.COD_LOJA
GROUP BY p.COD_LOJA, l.NM_CIDADE, l.VL_FATURAMENTO
HAVING COUNT(p.COD_PEDIDO) > 1;
-- FIM P

-- FIM CONSULTAS