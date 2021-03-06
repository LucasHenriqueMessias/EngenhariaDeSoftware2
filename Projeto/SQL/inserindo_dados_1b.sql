-- INICIO 1B
-- Dados TB_LOJA
INSERT INTO TB_LOJA (COD_LOJA, TX_ENDERECO, TX_TELEFONE, NM_CIDADE, VL_FATURAMENTO) VALUES (1, 'Rua Paulo Sergio, 25', '1532323232', 'Sorocaba', 10000);
INSERT INTO TB_LOJA (COD_LOJA, TX_ENDERECO, TX_TELEFONE, NM_CIDADE, VL_FATURAMENTO) VALUES (2, 'Avenida das Americas, 1100', '1136352636', 'S?o Paulo', 15000);
INSERT INTO TB_LOJA (COD_LOJA, TX_ENDERECO, TX_TELEFONE, NM_CIDADE, VL_FATURAMENTO) VALUES (3, 'Rua Marilia Fernandes, 36', '1132353698', 'Itu', 9000);
INSERT INTO TB_LOJA (COD_LOJA, TX_ENDERECO, TX_TELEFONE, NM_CIDADE, VL_FATURAMENTO) VALUES (4, 'Avenida Amelia Pereira, 13', '1536985632', 'Itapeva', 25000);
INSERT INTO TB_LOJA (COD_LOJA, TX_ENDERECO, TX_TELEFONE, NM_CIDADE, VL_FATURAMENTO) VALUES (5, 'Rua Luis Antonio, 13', '1536525252', 'Votorantim', 5600);

-- Dados TB_PEDIDO
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (1, 1, '15/03/2021', '25/03/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (2, 1, '15/05/2021', '25/05/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (3, 2, '26/05/2021', '30/05/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (4, 2, '23/05/2021', '02/06/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (5, 3, '01/02/2021', '06/02/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (6, 3, '01/10/2021', '15/10/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (7, 3, '12/10/2021', '25/10/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (8, 4, '13/06/2021', '25/06/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (9, 5, '01/09/2021', '15/09/2021');
INSERT INTO TB_PEDIDO (COD_PEDIDO, COD_LOJA, DT_ELABORACAO, DT_ENTREGA) VALUES (10, 5, '26/08/2021', '01/09/2021');

-- Dados TB_FORNECEDOR
INSERT INTO TB_FORNECEDOR (COD_FORNECEDOR, TX_CNPJ, NM_EMPRESA, NM_CIDADE, TX_TELEFONE, TX_EMAIL) VALUES (1, '59535995000138', 'Empresa Farmaceutica Ltda', 'S?o Paulo', '1129211503', 'contato@empresafarmaceutica.com');
INSERT INTO TB_FORNECEDOR (COD_FORNECEDOR, TX_CNPJ, NM_EMPRESA, NM_CIDADE, TX_TELEFONE, TX_EMAIL) VALUES (2, '97598037000103', 'Bayer Empreendimentos Ltda', 'S?o Paulo', '1132353698', 'contato@bayer.com');
INSERT INTO TB_FORNECEDOR (COD_FORNECEDOR, TX_CNPJ, NM_EMPRESA, NM_CIDADE, TX_TELEFONE, TX_EMAIL) VALUES (3, '91195962000107', 'Eurofarma SA', 'S?o Paulo', '1132353532', 'contato@eurofarma.com');
INSERT INTO TB_FORNECEDOR (COD_FORNECEDOR, TX_CNPJ, NM_EMPRESA, NM_CIDADE, TX_TELEFONE, TX_EMAIL) VALUES (4, '50007057000190', 'Sanofi Ltda', 'Sorocaba', '1532323238', 'contato@sanofi.com');
INSERT INTO TB_FORNECEDOR (COD_FORNECEDOR, TX_CNPJ, NM_EMPRESA, NM_CIDADE, TX_TELEFONE, TX_EMAIL) VALUES (5, '42417961000146', 'Medley Ltda', 'Campinas', '1936352631', 'contato@medley.com');

-- Dados TB_ESTOQUE
INSERT INTO TB_ESTOQUE (COD_ESTOQUE, TX_ENDERECO, NM_CIDADE) VALUES (1, 'Avenida Leopoldino Marinho, 101', 'Sorocaba');
INSERT INTO TB_ESTOQUE (COD_ESTOQUE, TX_ENDERECO, NM_CIDADE) VALUES (2, 'Avenida Calota Santana, 200', 'Sorocaba');
INSERT INTO TB_ESTOQUE (COD_ESTOQUE, TX_ENDERECO, NM_CIDADE) VALUES (3, 'Rua Maria Danielly Pereira, 51', 'S?o Paulo');
INSERT INTO TB_ESTOQUE (COD_ESTOQUE, TX_ENDERECO, NM_CIDADE) VALUES (4, 'Avenida Marina Delza, 13', 'S?o Paulo');
INSERT INTO TB_ESTOQUE (COD_ESTOQUE, TX_ENDERECO, NM_CIDADE) VALUES (5, 'Avenida Gabriela Rocha, 25', 'Sorocaba');

-- Dados TB_PRODUTO
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (1, 'Neosoro', 'Descongestionante nasal de uso local, com um r?pido in?cio de a??o vasoconstritora e com efeito prolongado.', 'Cloridrato de nafazolina', 'Brainfarma Ind?stria Qu?mica e Farmac?utica S.A.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (2, 'Glifage XR', 'Antidiab?tico de uso oral utilizado para o tratamento do diabetes tipo 2.', 'Cloridrato de metformina', 'Merck. S.A.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (3, 'Cozaar', 'Indicado para o tratamento da hipertens?o', 'Losartana pot?ssica', 'Merck Sharp e Dohme Farmac?utica Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (4, 'Torsilax', 'Medicamento indicado para o tratamento de reumatismo.', 'Cafe?na, Carisoprodol, Diclofenaco s?dico, Paracetamol', 'Brainfarma Ind?stria Qu?mica e Farmac?utica S.A');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (5, 'Dorflex', 'Indicado no al?vio da dor associada a contraturas musculares, incluindo dor de cabe?a tensional.', 'Cafe?na, Dipirona monoidratada, citrato de orfenadrina', 'Sanofi Medley Farmac?utica Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (6, 'Salonpas', 'Combate a fadiga muscular, dores musculares e lombares, rigidez nos ombros, contus?es, pancadas, tor??es, entorses, torcicolo, dores nas costas, nevralgia e dores articulares.', 'Salicilato de metila, Levomentol', 'Hisamitsu Farmac?utica do Brasil Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (7, 'Dipimed', 'Este medicamento ? indicado como analg?sico (para dor) e antit?rmico (para febre).', 'Dipirona mono-hidratada', 'Mequ?mica Ind?stria Farmac?utica Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (8, 'Loratamed', 'Indicado para o al?vio dos sintomas associados com a rinite al?rgica.', 'Loratadina', 'Cimed Ind?stria de Medicamentos Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (9, 'Clorana', 'Destinado ao tratamento da hipertens?o arterial e no tratamento dos edemas associados com insufici?ncia card?aca congestiva, cirrose hep?tica e com a terapia por corticosteroides ou estr?genos.', 'Hidroclorotiazida', 'Sanofi Medley Farmac?utica Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (10, 'Novalgina', 'Este medicamento ? indicado como analg?sico (para dor) e antit?rmico (para febre).', 'Dipirona monoidratada', 'Sanofi Medley Farmac?utica Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (11, 'Strepsils', 'Indicado para a inflama??o da garganta, proporcionando al?vio sintom?tico por at? 3 horas.', 'Flurbiprofeno', 'Reckitt Benckiser Healthcare International Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (12, 'Microvlar', 'Indicado para prevenir a gravidez.', 'Levonorgestrel, Einilestradiol', 'Schering do Brasil, Qu?mica e Farmac?utica Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (13, 'Infralax', 'Medicamento indicado para o tratamento de reumatismo.', 'Cafe?na, Carisoprodol, Diclofenaco s?dico, Paracetamol', 'Novamed Fabrica??o de Produtos Farmac?uticos Ltda');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (14, 'Ibupril', 'A??o contra a inflama??o (rea??o de defesa do organismo a uma agress?o) dor e febre', 'Ibuprofeno', 'Laborat?rio Teuto Brasileiro S.A.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (15, 'Neosaldina', 'Medicamento com atividade analg?sica e antiespasm?dica.', 'Dipirona, Mucato de isometepteno, Cafe?na anidra', 'Cosmed Ind?stria de Cosm?ticos e Medicamentos S.A.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (16, 'Tylemax ', 'Reduz a febre e diminui a sensibilidade para a dor.', 'Paracetamol', 'Natulab Laborat?rio S.A.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (17, 'Doralgina', 'Medicamento com atividade analg?sica e antiespasm?dica indicado para o tratamento de diversos tipos de dor de cabe?a, incluindo enxaquecas ou para o tratamento de c?licas.', 'Dipirona, Mucato de isometepteno, Cafe?na', 'Brainfarma Ind?stria Qu?mica e Farmac?utica S.A.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (18, 'Naridrin', 'Indicado como vasoconstritor destinado ao tratamento da congest?o nasal de origem al?rgica ou inflamat?ria, nas rinites e rinofaringites.', 'Cloridrato de nafazolina, Dexapantenol', 'EMS S.A.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (19, 'Bepantriz', 'Preven??o e tratamento da dermatite de fraldas (assaduras), preven??o e tratamento das fissuras (rachaduras) de pele e mucosas, feridas (ferimentos leves e escoria??es) e escaras.', 'Dexpantenol', 'Cimed Ind?stria de Medicamentos Ltda.');
INSERT INTO TB_PRODUTO (COD_PRODUTO, NM_MEDICAMENTO, TX_DESCRICAO, NM_COMPOSICAO, NM_LAB) VALUES (20, 'Buscopan', 'Indicado para tratamento dos sintomas de c?licas gastrintestinais, c?licas e movimentos involunt?rios anormais das vias biliares e c?licas dos ?rg?os sexuais e urin?rios.', 'Butilbrometo de escopolamina', 'Cosmed Ind?stria de Cosm?ticos e Medicamentos S.A.');

-- Dados TB_PEDIDO_PRODUTO
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(1, 1, 10);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(1, 2, 100);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(1, 3, 50);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(2, 1, 55);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(2, 4, 500);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(2, 5, 26);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(3, 1, 23);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(3, 6, 150);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(3, 7, 160);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(3, 8, 24);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(4, 9, 13);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(5, 10, 5);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(5, 11, 26);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(5, 12, 56);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(6, 5, 44);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(6, 13, 50);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(6, 14, 300);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(6, 15, 265);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(6, 16, 35);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(7, 1, 65);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(7, 2, 45);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(7, 17, 20);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(7, 18, 110);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(8, 19, 60);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(8, 20, 30);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(9, 1, 100);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(9, 15, 150);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(10, 16, 20);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(10, 18, 10);
INSERT INTO TB_PEDIDO_PRODUTO (COD_PEDIDO, COD_PRODUTO, VL_QUANTIDADE) VALUES(10, 20, 15);

-- Dados TB_LOJA_PRODUTO
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (1, 1, 15);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (1, 2, 20);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (1, 3, 35);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (1, 4, 100);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (1, 5, 36);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (1, 6, 23);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (2, 6, 150);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (2, 7, 25);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (2, 8, 200);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (2, 9, 150);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (2, 10, 30);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (3, 11, 52);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (3, 12, 41);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (3, 13, 20);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (3, 14, 253);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (3, 15, 10);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (4, 16, 260);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (4, 17, 26);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (4, 18, 26);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (4, 19, 26);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (4, 20, 25);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (5, 1, 20);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (5, 6, 15);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (5, 11, 20);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (5, 16, 36);
INSERT INTO TB_LOJA_PRODUTO (COD_LOJA, COD_PRODUTO, VL_QTDE_EST_LOJA) VALUES (5, 18, 210);

-- Dados TB_ESTOQUE_PRODUTO
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 1, 100);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 2, 0);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 3, 120);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 4, 200);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 5, 12);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 6, 20);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 7, 12);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 8, 45);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 9, 50);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 10, 0);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 11, 23);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 12, 42);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 13, 63);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 14, 75);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 15, 420);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 16, 150);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 17, 45);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 18, 65);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 19, 10);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (1, 20, 25);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (2, 1, 100);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (2, 2, 115);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (2, 3, 20);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (2, 4, 10);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (2, 5, 30);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (3, 6, 25);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (3, 7, 26);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (3, 8, 29);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (3, 9, 160);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (3, 10, 360);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (4, 11, 300);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (4, 12, 162);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (4, 13, 365);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (4, 14, 52);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (4, 15, 65);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (5, 16, 140);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (5, 17, 152);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (5, 18, 364);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (5, 19, 85);
INSERT INTO TB_ESTOQUE_PRODUTO (COD_ESTOQUE, COD_PRODUTO, VL_QUANTIDADE) VALUES (5, 20, 30);

-- Dados TB_ESTOQUE_FORNECEDOR
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (1, 1);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (1, 2);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (1, 3);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (1, 4);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (1, 5);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (2, 1);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (2, 2);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (2, 3);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (2, 4);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (2, 5);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (3, 1);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (3, 3);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (4, 2);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (4, 4);
INSERT INTO TB_ESTOQUE_FORNECEDOR (COD_ESTOQUE, COD_FORNECEDOR) VALUES (5, 5);

-- Dados TB_FORNECEDOR_PRODUTO
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (1, 1);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (1, 2);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (1, 3);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (2, 4);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (2, 5);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (2, 6);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (3, 7);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (3, 8);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (3, 9);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (3, 10);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (3, 11);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (3, 12);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (4, 13);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (4, 14);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (4, 15);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (4, 16);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (4, 17);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (5, 18);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (5, 19);
INSERT INTO TB_FORNECEDOR_PRODUTO (COD_FORNECEDOR, COD_PRODUTO) VALUES (5, 20);

-- FIM 1B
