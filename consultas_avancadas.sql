-- consultas_avancadas.sql
-- Consultas complexas para análise dos dados da oficina

-- 1. Ordens de serviço finalizadas e em andamento com nome do cliente
SELECT 
    os.id_os, 
    c.nome AS cliente, 
    os.valor_total
FROM Ordem_de_Servico os
JOIN Veiculo v ON os.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE os.status IN ('Finalizada', 'Em andamento');

-- 2. Total gasto por cliente
SELECT 
    c.nome, 
    SUM(os.valor_total) AS total_gasto
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.id_cliente
JOIN Ordem_de_Servico os ON v.id_veiculo = os.id_veiculo
GROUP BY c.nome
HAVING total_gasto > 0
ORDER BY total_gasto DESC;

-- 3. Quantidade de serviços por ordem
SELECT 
    os.id_os, 
    COUNT(oss.id_servico) AS qtd_servicos
FROM Ordem_de_Servico os
JOIN OS_Servicos oss ON os.id_os = oss.id_os
GROUP BY os.id_os;

-- 4. Valor médio de peças utilizadas por OS
SELECT 
    os.id_os, 
    AVG(osp.valor_total) AS media_valor_pecas
FROM Ordem_de_Servico os
JOIN OS_Pecas osp ON os.id_os = osp.id_os
GROUP BY os.id_os
HAVING media_valor_pecas > 0;

-- 5. Lista de mecânicos e suas equipes
SELECT 
    m.nome AS mecanico, 
    e.nome_equipe 
FROM Mecanicos m
JOIN Mecanicos_Equipe me ON m.id_mecanico = me.id_mecanico
JOIN Equipe_de_Mecanicos e ON me.id_equipe = e.id_equipe;
