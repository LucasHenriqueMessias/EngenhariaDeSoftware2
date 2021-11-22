-- INICIO SUBCONSULTAS

-- INICIO 3A
/*
    a) Exemplo de um comando utilizando subconsultas que utilize o
    operador = ou <,>, <= etc.
    
    Objetivo:
    listar código da loja, código do produto, nome do medicamento nas lojas e
    nome do laboratório com faturamento maior que a média de todas as lojas.
*/
SELECT
    l.COD_LOJA,
    p.COD_PRODUTO,
    p.NM_MEDICAMENTO AS MEDICAMENTO,
    p.NM_LAB AS LABORATORIO
FROM TB_LOJA l
INNER JOIN TB_LOJA_PRODUTO lp
ON l.COD_LOJA = lp.COD_LOJA
INNER JOIN TB_PRODUTO p
ON p.COD_PRODUTO = lp.COD_PRODUTO
WHERE l.VL_FATURAMENTO > (
    SELECT AVG(l.VL_FATURAMENTO)
    FROM TB_LOJA l
);
-- FIM 3A

-- INICIO 3B
/*
    b) Exemplo de um comando utilizando subconsultas que utilize o operador in.
    
    Objetivo:
    listar código da loja, código do pedido e quantidade de produtos
    solicitados nesses pedidos para os pedidos elaborados entre
    abril e maio de 2021.
*/
SELECT
    l.COD_LOJA,
    p.COD_PEDIDO,
    COUNT(pp.COD_PRODUTO) AS QTDE_PRODUTOS
FROM TB_LOJA l
INNER JOIN TB_PEDIDO p
ON l.COD_LOJA = p.COD_LOJA
INNER JOIN TB_PEDIDO_PRODUTO pp
ON p.COD_PEDIDO = pp.COD_PEDIDO
WHERE l.COD_LOJA IN (
    SELECT p.COD_LOJA
    FROM TB_PEDIDO p
    WHERE p.DT_ELABORACAO BETWEEN '01/04/2021' AND '31/05/2021'
)
GROUP BY l.COD_LOJA, p.COD_PEDIDO
ORDER BY l.COD_LOJA, P.COD_PEDIDO;
-- FIM 3B

-- INICIO 3C
/*
    c) Um comando utilizando subconsultas que utilize o operador not in.
    
    Objetivo:
    exibir dados dos estoques que não tenham um fornecedor de
    campinas ou Sorocaba
    .
*/
SELECT
    e.COD_ESTOQUE,
    e.TX_ENDERECO,
    e.NM_CIDADE
FROM TB_ESTOQUE e
INNER JOIN TB_ESTOQUE_FORNECEDOR ef
ON e.COD_ESTOQUE = ef.COD_ESTOQUE
WHERE ef.COD_FORNECEDOR NOT IN (
    SELECT f.COD_FORNECEDOR
    FROM TB_FORNECEDOR f
    WHERE f.NM_CIDADE IN ('Campinas', 'Sorocaba')
)
GROUP BY e.COD_ESTOQUE, e.TX_ENDERECO, e.NM_CIDADE
ORDER BY e.COD_ESTOQUE;
-- FIM 3C

-- FIM SUBCONSULTAS