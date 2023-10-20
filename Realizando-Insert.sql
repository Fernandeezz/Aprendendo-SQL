/*Realizando Insert's e Consultas em Tabelas SQL */

/* INSERTS NA TABELA CLIENTE */
 
INSERT INTO CLIENTE (cpf, nome,logradouro, num_log, cidade, bairro, estado, telefone)
VALUES  ("526.495.978-10", "Lais Fontinele", "Rua Flores de Maio", 25, "São Paulo", "Nova Era","São Paulo", 978456523),
        ("456.132.852-41", "Mirela Santos", "Avenida João Dias", 568, "Curtibia", "Jardim Jundia", "Paraná", 978456523),
        ("103.154.741-08", "Gabriel Almeida", "Rua Visconde de Sabugosa", 2078, "Jundiapeba", "Vila Camomila", "São Paulo", 978456523);
 
/* INSERTS NA TABELA VEICULO */
 
INSERT INTO VEICULO (renavan, chassi, modelo, cor, id_Cliente)
VALUES  (99241030314, "4Nv tLARL9 AA pJ2317", "Gol", "Branco", "526.495.978-10");
        (00276190750, "4Wx A57p8T j0 D66942", "Civic", "Cinza", "456.132.852-41");
        (44213989540, "6Y8 bxzt93 rx 963040", "Fiesta", "Preto", "103.154.741-08");
 
/* INSERTS NA TABELA RELATO_CLIENTE */
 
INSERT INTO RELATO_CLIENTE (idRelato, problema, dataRelato, id_veiculo)
VALUES  (1, "Batida", "2023-06-29", 99241030314);
        (2, "Arranhão", "2023-05-28", 00276190750);
        (3, "Falha Mecânica", "2023-09-01", 44213989540);
 
/* INSERTS NA TABELA ORCAMENTO */
 
INSERT INTO ORCAMENTO ( idOrcamento, formaPagamento, dataOrcamento, previsao_entrega, situacao, valor, idveiculo)
VALUES  (1, "Cartão de Crédito", "2023-06-29", "2023-07-15", "Finalizado", 395.25, 99241030314);
        (2, "Pix", "2023-05-28", "2023-06-20", "Em análise", 258.47, 00276190750);
        (3, "Dinheiro", "2023-09-02", "2023-09-30", "Faturado", 1057.49, 44213989540);
 
/* INSERTS NA TABELA SERVIÇO */
 
INSERT INTO SERVICO (idServico, tempoRealiza, custo, descricao)
VALUES (1, 250.25, "10:00", "Carro bateu em muro e quebrou o farol");
 (2, 110.47, "48:00", "Carro arranhou em estacionamento");
 (3, 307.49, "03:00 ", "Motor não está ligando");
 
/* INSERTS NA TABELA PRODUTO */
 
INSERT INTO PRODUTO (id_Produto, custo_prod, descricao)
VALUES (01, 50.00, "Produto para lavagem de carros");
 
INSERT INTO PRODUTO (id_Produto, custo_prod, descricao)
VALUES (02, 55.57, "Pretinho para pneus");
 
INSERT INTO PRODUTO (id_Produto, custo_prod, descricao)
VALUES (31, 100.00, "Farol do HONDA CIVIC");
 
 
/* INSERTS NA TABELA ITENS_PRODUCT */
 
INSERT INTO ITENS_PRODUCT (quantidade, custo_product, situacao, idOrca, idPro)
VALUES (01, 50.00, "Produto para lavagem de carros");
 
INSERT INTO ITENS_PRODUCT (quantidade, custo_product, situacao, idOrca, idPro)
VALUES (02, 55.57, "Pretinho para pneus");
 
INSERT INTO ITENS_PRODUCT (quantidade, custo_product, situacao, idOrca, idPro)
VALUES (31, 100.00, "Farol do HONDA CIVIC");
 
 
/* INSERTS NA TABELA ITENS_SERVICE_ONE */
 
INSERT INTO ITENS_SERVICE_ONE (idServico, idOrcamento, situacao, custo)
VALUES (01, 50.00, "Produto para lavagem de carros");
 
INSERT INTO ITENS_SERVICE_ONE (idServico, idOrcamento, situacao, custo)
VALUES (02, 55.57, "Pretinho para pneus");
 
INSERT INTO ITENS_SERVICE_ONE (idServico, idOrcamento, situacao, custo)
VALUES (31, 100.00, "Farol do HONDA CIVIC");
 
 
/* CONSULTA */
SELECT * FROM CLIENTE;
SELECT * FROM ITENS_PRODUCT;
SELECT * FROM ITENS_SERVICE_ONE;
SELECT * FROM ORCAMENTO;
SELECT * FROM PRODUTO;
SELECT * FROM RELATO_CLIENTE;
SELECT * FROM SERVICO;
SELECT * FROM VEICULO;
