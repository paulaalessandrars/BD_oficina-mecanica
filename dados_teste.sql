-- dados_teste.sql
-- População inicial de dados para testes


-- Clientes
INSERT INTO Cliente VALUES (11, 'Bryan Lopes', 'leandrocardoso@nunes.net', 'Praia Bernardo Lopes, 90', '(021) 1276 5096');
INSERT INTO Cliente VALUES (2, 'Ana Julia Almeida', 'camposmaria-eduarda@hotmail.com', 'Estação de Sales, 35', '+55 (071) 0305-2351');
INSERT INTO Cliente VALUES (3, 'Lucas Castro', 'salesleticia@bol.com.br', 'Setor de Costa, 258', '11 3848 3316');
INSERT INTO Cliente VALUES (4, 'Ian Martins', 'larissapereira@uol.com.br', 'Praia Marina Ribeiro, 22', '+55 (071) 7244 2462');
INSERT INTO Cliente VALUES (5, 'Amanda Moura', 'sophialopes@da.br', 'Rua Araújo, 17', '+55 84 8831-9959');
INSERT INTO Cliente VALUES (6, 'Noah Azevedo', 'andrecastro@hotmail.com', 'Rodovia Duarte, 55', '0500-489-7360');
INSERT INTO Cliente VALUES (7, 'Srta. Pietra Rocha', 'rodriguesthales@moura.br', 'Feira Daniela Cardoso, 81', '+55 84 9376 4567');
INSERT INTO Cliente VALUES (8, 'Francisco Cunha', 'tcampos@da.br', 'Colônia de Barbosa, 894', '+55 51 4150 6451');
INSERT INTO Cliente VALUES (9, 'Luna Freitas', 'ida-mota@uol.com.br', 'Viaduto de Ribeiro, 8', '84 7294-8624');
INSERT INTO Cliente VALUES (10, 'Luiz Henrique Fogaça', 'theopereira@sales.com', 'Rua Teixeira, 65', '61 3175 4397');

-- Veículos
INSERT INTO Veiculo VALUES (11, 'OBB-6741', 'Temporibus', 'da Costa - ME', 2008, 1);
INSERT INTO Veiculo VALUES (2, 'EZJ-9675', 'Hic', 'Alves', 2005, 2);
INSERT INTO Veiculo VALUES (3, 'JTH-6119', 'Quod', 'da Paz', 2013, 3);
INSERT INTO Veiculo VALUES (4, 'ROJ-1712', 'Aliquid', 'Novaes', 2012, 4);
INSERT INTO Veiculo VALUES (5, 'SRX-2181', 'Quo', 'Lima', 2012, 5);
INSERT INTO Veiculo VALUES (6, 'SNG-1811', 'Eligendi', 'Castro', 2009, 6);
INSERT INTO Veiculo VALUES (7, 'EEU-3302', 'Minus', 'Nogueira Fernandes - EI', 2008, 7);
INSERT INTO Veiculo VALUES (8, 'NVA-7618', 'Ducimus', 'Teixeira - ME', 2022, 8);
INSERT INTO Veiculo VALUES (9, 'XPK-5631', 'Eum', 'Ferreira Ribeiro - EI', 2007, 9);
INSERT INTO Veiculo VALUES (10, 'STN-7776', 'Numquam', 'Fogaça', 2023, 10);

-- Equipes
INSERT INTO Equipe_de_Mecanicos VALUES (5, 'Equipe Índigo');
INSERT INTO Equipe_de_Mecanicos VALUES (2, 'Equipe Branco fantasma');
INSERT INTO Equipe_de_Mecanicos VALUES (3, 'Equipe Amarelo creme');
INSERT INTO Equipe_de_Mecanicos VALUES (4, 'Equipe Kiwi');

-- Mecânicos
INSERT INTO Mecanicos VALUES (7, 'Bryan Azevedo', 'Via Monteiro, 15', 'Engenheiro de produção agroindustrial');
INSERT INTO Mecanicos VALUES (2, 'Srta. Marcela Rezende', 'Chácara Luiz Henrique Costela, 353', 'Técnico em rede');
INSERT INTO Mecanicos VALUES (3, 'Dr. Cauê Vieira', 'Lago de Azevedo, 28', 'Chaveiro');
INSERT INTO Mecanicos VALUES (4, 'Mariane Novaes', 'Vereda Augusto da Costa, 18', 'Radiooperador de vôo');
INSERT INTO Mecanicos VALUES (5, 'Sra. Marina Castro', 'Avenida Mariana das Neves, 35', 'Skatista');
INSERT INTO Mecanicos VALUES (6, 'Sr. Eduardo Barros', 'Travessa Carvalho', 'Técnico em agropecuária');

-- Relação Mecânicos x Equipes
INSERT INTO Mecanicos_Equipe VALUES (1, 4);
INSERT INTO Mecanicos_Equipe VALUES (2, 1);
INSERT INTO Mecanicos_Equipe VALUES (3, 1);
INSERT INTO Mecanicos_Equipe VALUES (4, 1);
INSERT INTO Mecanicos_Equipe VALUES (5, 2);
INSERT INTO Mecanicos_Equipe VALUES (6, 2);

-- Ordens de Serviço
INSERT INTO Ordem_de_Servico VALUES (13, '2025-07-23', '2025-07-18', 'Em andamento', 901.82, 9, 1);
INSERT INTO Ordem_de_Servico VALUES (2, '2025-07-26', '2025-07-28', 'Cancelada', 768.73, 7, 2);
INSERT INTO Ordem_de_Servico VALUES (3, '2025-07-05', '2025-07-07', 'Cancelada', 507.26, 1, 2);
INSERT INTO Ordem_de_Servico VALUES (4, '2025-07-12', '2025-07-28', 'Aberta', 548.92, 6, 1);
INSERT INTO Ordem_de_Servico VALUES (5, '2025-07-18', '2025-07-04', 'Aberta', 916.22, 6, 3);
INSERT INTO Ordem_de_Servico VALUES (6, '2025-07-20', '2025-07-28', 'Finalizada', 1020.87, 7, 1);
INSERT INTO Ordem_de_Servico VALUES (7, '2025-07-08', '2025-07-25', 'Aberta', 198.12, 6, 2);
INSERT INTO Ordem_de_Servico VALUES (8, '2025-07-13', '2025-07-09', 'Em andamento', 1059.81, 5, 1);
INSERT INTO Ordem_de_Servico VALUES (9, '2025-07-07', '2025-07-22', 'Em andamento', 538.69, 8, 3);
INSERT INTO Ordem_de_Servico VALUES (10, '2025-07-08', '2025-07-06', 'Em andamento', 710.85, 5, 1);
INSERT INTO Ordem_de_Servico VALUES (11, '2025-07-21', '2025-07-23', 'Finalizada', 1189.0, 8, 4);
INSERT INTO Ordem_de_Servico VALUES (12, '2025-07-25', '2025-07-02', 'Finalizada', 1034.99, 9, 2);

-- Serviços
INSERT INTO Servicos VALUES (9, 'A liberdade de inovar mais facilmente', 153.07);
INSERT INTO Servicos VALUES (2, 'O poder de inovar com força total', 64.45);
INSERT INTO Servicos VALUES (3, 'A possibilidade de realizar seus sonhos em estado puro', 191.95);
INSERT INTO Servicos VALUES (4, 'O direito de atingir seus objetivos em estado puro', 170.48);
INSERT INTO Servicos VALUES (5, 'A arte de avançar mais rapidamente', 144.94);
INSERT INTO Servicos VALUES (6, 'O prazer de atingir seus objetivos com confiança', 474.31);
INSERT INTO Servicos VALUES (7, 'O conforto de ganhar de maneira eficaz', 444.37);
INSERT INTO Servicos VALUES (8, 'A simplicidade de conseguir com força total', 191.61);

-- OS x Serviços
INSERT INTO OS_Servicos VALUES (1, 8, 2, 383.22);
INSERT INTO OS_Servicos VALUES (2, 8, 1, 191.61);
INSERT INTO OS_Servicos VALUES (3, 5, 1, 144.94);
INSERT INTO OS_Servicos VALUES (4, 4, 3, 511.44);
INSERT INTO OS_Servicos VALUES (5, 5, 3, 434.82);
INSERT INTO OS_Servicos VALUES (6, 7, 3, 1333.11);
INSERT INTO OS_Servicos VALUES (7, 7, 2, 888.74);
INSERT INTO OS_Servicos VALUES (8, 4, 1, 170.48);
INSERT INTO OS_Servicos VALUES (9, 8, 1, 191.61);
INSERT INTO OS_Servicos VALUES (10, 1, 1, 153.07);
INSERT INTO OS_Servicos VALUES (11, 3, 3, 575.85);
INSERT INTO OS_Servicos VALUES (12, 3, 3, 575.85);

-- Peças
INSERT INTO Pecas VALUES (18, 'Seize magnetic systems', 132.43);
INSERT INTO Pecas VALUES (2, 'Strategize bricks-and-clicks applications', 28.42);
INSERT INTO Pecas VALUES (3, 'Enable clicks-and-mortar users', 120.67);
INSERT INTO Pecas VALUES (4, 'Redefine synergistic e-services', 298.88);
INSERT INTO Pecas VALUES (5, 'Evolve customized bandwidth', 163.44);
INSERT INTO Pecas VALUES (6, 'Synthesize web-enabled solutions', 291.61);
INSERT INTO Pecas VALUES (7, 'Benchmark compelling communities', 259.63);
INSERT INTO Pecas VALUES (8, 'Enable world-class e-markets', 13.33);
INSERT INTO Pecas VALUES (9, 'Redefine interactive architectures', 219.01);
INSERT INTO Pecas VALUES (10, 'Disintermediate cross-media functionalities', 207.7);
INSERT INTO Pecas VALUES (11, 'Visualize integrated web services', 165.72);
INSERT INTO Pecas VALUES (12, 'Integrate revolutionary e-commerce', 87.38);
INSERT INTO Pecas VALUES (13, 'Enable leading-edge eyeballs', 195.88);
INSERT INTO Pecas VALUES (14, 'Re-intermediate wireless portals', 42.35);
INSERT INTO Pecas VALUES (15, 'Re-contextualize cutting-edge portals', 136.08);
INSERT INTO Pecas VALUES (16, 'Integrate back-end mindshare', 141.58);
INSERT INTO Pecas VALUES (17, 'Scale 24/7 metrics', 286.61);

-- OS x Peças
INSERT INTO OS_Pecas VALUES (1, 9, 5, 1095.05);
INSERT INTO OS_Pecas VALUES (2, 6, 5, 1458.05);
INSERT INTO OS_Pecas VALUES (3, 4, 3, 896.64);
INSERT INTO OS_Pecas VALUES (4, 17, 5, 1433.05);
INSERT INTO OS_Pecas VALUES (5, 7, 2, 519.26);
INSERT INTO OS_Pecas VALUES (6, 12, 2, 174.76);
INSERT INTO OS_Pecas VALUES (7, 17, 1, 286.61);
INSERT INTO OS_Pecas VALUES (8, 11, 4, 662.88);
INSERT INTO OS_Pecas VALUES (9, 1, 1, 132.43);
INSERT INTO OS_Pecas VALUES (10, 12, 3, 262.14);
INSERT INTO OS_Pecas VALUES (11, 8, 1, 13.33);
INSERT INTO OS_Pecas VALUES (12, 8, 5, 66.65);

-- Pagamentos
INSERT INTO Pagamentos VALUES (13, 'Dinheiro', 901.82, 1);
INSERT INTO Pagamentos VALUES (2, 'Dinheiro', 768.73, 2);
INSERT INTO Pagamentos VALUES (3, 'Pix', 507.26, 3);
INSERT INTO Pagamentos VALUES (4, 'Dinheiro', 548.92, 4);
INSERT INTO Pagamentos VALUES (5, 'Boleto', 916.22, 5);
INSERT INTO Pagamentos VALUES (6, 'Cartão de Crédito', 1020.87, 6);
INSERT INTO Pagamentos VALUES (7, 'Cartão de Crédito', 198.12, 7);
INSERT INTO Pagamentos VALUES (8, 'Pix', 1059.81, 8);
INSERT INTO Pagamentos VALUES (9, 'Boleto', 538.69, 9);
INSERT INTO Pagamentos VALUES (10, 'Cartão de Crédito', 710.85, 10);
INSERT INTO Pagamentos VALUES (11, 'Cartão de Débito', 1189.0, 11);
INSERT INTO Pagamentos VALUES (12, 'Boleto', 1034.99, 12);
