-- schema_logico.sql
-- Criação das tabelas e estrutura do banco de dados para a oficina mecânica

CREATE DATABASE oficina;


CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    endereco VARCHAR(255),
    contato VARCHAR(45)
);

CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY,
    placa VARCHAR(10),
    modelo VARCHAR(50),
    marca VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Equipe_de_Mecanicos (
    id_equipe INT PRIMARY KEY,
    nome_equipe VARCHAR(100)
);

CREATE TABLE Mecanicos (
    id_mecanico INT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    especialidade VARCHAR(100)
);

CREATE TABLE Mecanicos_Equipe (
    id_mecanico INT,
    id_equipe INT,
    PRIMARY KEY (id_mecanico, id_equipe),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanicos(id_mecanico),
    FOREIGN KEY (id_equipe) REFERENCES Equipe_de_Mecanicos(id_equipe)
);

CREATE TABLE Ordem_de_Servico (
    id_os INT PRIMARY KEY,
    data_emissao DATE,
    data_entrega DATE,
    status ENUM('Aberta', 'Em andamento', 'Finalizada', 'Cancelada'),
    valor_total DECIMAL(10,2),
    id_veiculo INT,
    id_equipe INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_equipe) REFERENCES Equipe_de_Mecanicos(id_equipe)
);

CREATE TABLE Servicos (
    id_servico INT PRIMARY KEY,
    descricao VARCHAR(255),
    valor_referencia DECIMAL(10,2)
);

CREATE TABLE OS_Servicos (
    id_os INT,
    id_servico INT,
    quantidade INT,
    valor_calculado DECIMAL(10,2),
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES Ordem_de_Servico(id_os),
    FOREIGN KEY (id_servico) REFERENCES Servicos(id_servico)
);

CREATE TABLE Pecas (
    id_peca INT PRIMARY KEY,
    descricao VARCHAR(255),
    valor DECIMAL(10,2)
);

CREATE TABLE OS_Pecas (
    id_os INT,
    id_peca INT,
    quantidade INT,
    valor_total DECIMAL(10,2),
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES Ordem_de_Servico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Pecas(id_peca)
);

CREATE TABLE Pagamentos (
    id_pagamento INT PRIMARY KEY,
    forma_pagamento ENUM('Dinheiro', 'Cartão de Crédito', 'Cartão de Débito', 'Pix', 'Boleto'),
    valor_pago DECIMAL(10,2),
    id_os INT,
    FOREIGN KEY (id_os) REFERENCES Ordem_de_Servico(id_os)
);
