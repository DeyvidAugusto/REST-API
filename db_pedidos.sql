CREATE DATABASE db_pedidos;
use db_pedidos;

CREATE TABLE pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100),
    data_pedido DATE
);

CREATE TABLE item_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto VARCHAR(100),
    quantidade INT,
    preco DECIMAL(10,2),
    FOREIGN KEY (pedido_id) REFERENCES pedido(id)
);

-- Inserçoes teste
-- Inserindo pedidos
INSERT INTO pedido (cliente, data_pedido) VALUES 
('João Silva', '2025-10-10'),
('Maria Oliveira', '2025-10-11'),
('Carlos Souza', '2025-10-12');

-- Inserindo itens dos pedidos
INSERT INTO item_pedido (pedido_id, produto, quantidade, preco) VALUES 
(1, 'Notebook Dell Inspiron', 1, 3500.00),
(1, 'Mouse Logitech M170', 2, 75.50),
(2, 'Smartphone Samsung Galaxy S21', 1, 4200.00),
(2, 'Capinha de Silicone', 1, 45.90),
(3, 'Monitor LG 24"', 2, 899.99),
(3, 'Teclado Mecânico Redragon', 1, 299.90);

-- Inserindo  clientes
INSERT INTO cliente (nome, idade) VALUES 
('Ana Souza', 28),
('Carlos Mendes', 35),
('Beatriz Lima', 22),
('João Silva', 40),
('Fernanda Costa', 31);
