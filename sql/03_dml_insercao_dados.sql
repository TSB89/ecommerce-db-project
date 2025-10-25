-- Adiciona 3 clientes 

INSERT INTO cliente (nome, email, senha_hash, telefone, cpf)
VALUES

('Thiago', 'thiago.bezerra@email.com', 'hash123', '11999990001', '123.456.789-00'),
('Pedro', 'pedro.lima@email.com', 'hash456', '21988880002', '987.654.321-00'),
('Lucas', 'lucas.tertoliano@email.com', 'hash789', '31977770003', '555.666.777-00');

-- Adiciona um endereço de entrega e um de cobrança para cada cliente

INSERT INTO endereco (id_cliente, logradouro, numero, bairro, cidade, uf, cep, tipo, principal)
VALUES

(1, 'Rua das Flores', '100', 'Centro', 'São Paulo', 'SP', '01000-000', 'entrega', TRUE),
(1, 'Rua das Flores', '100', 'Centro', 'São Paulo', 'SP', '01000-000', 'cobranca', TRUE),
(2, 'Av. Brasil', '500', 'Copacabana', 'Rio de Janeiro', 'RJ', '22000-000', 'entrega', TRUE),
(2, 'Av. Brasil', '500', 'Copacabana', 'Rio de Janeiro', 'RJ', '22000-000', 'cobranca', TRUE),
(3, 'Rua Minas Gerais', '250', 'Savassi', 'Belo Horizonte', 'MG', '30100-000', 'entrega', TRUE),
(3, 'Rua Minas Gerais', '250', 'Savassi', 'Belo Horizonte', 'MG', '30100-000', 'cobranca', TRUE);

-- Adiciona 4 produtos

INSERT INTO produto (sku, nome, descricao, preco_unitario, peso, categoria)
VALUES

('P001', 'Camiseta Básica', 'Camiseta de algodão unissex', 59.90, 0.3, 'Vestuário'),
('P002', 'Tênis Running', 'Tênis leve para corrida', 249.90, 1.2, 'Calçados'),
('P003', 'Boné Casual', 'Boné ajustável com logo bordado', 79.90, 0.2, 'Acessórios'),
('P004', 'Mochila Esportiva', 'Mochila 25L resistente à água', 199.90, 0.9, 'Acessórios');

-- Adiciona estoque aos 4 produtos

INSERT INTO estoque (id_produto, quantidade_atual, quantidade_reservada)
VALUES

(1, 10, 0),
(2, 15, 0),
(3, 20, 0),
(4, 25, 0);

-- Cria 3 pedidos

INSERT INTO pedido (id_cliente, id_endereco_entrega, id_endereco_cobranca, valor_subtotal, valor_frete, valor_total, status)
VALUES

(1, 1, 2, 309.80, 25.00, 334.80, 'faturado'),
(2, 3, 4, 249.90, 20.00, 269.90, 'confirmado'),
(3, 5, 6, 59.90, 15.00, 74.90, 'em_transporte');

-- Preenche 4 pedidos com itens da Loja

INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario, desconto_item)
VALUES

(1, 1, 2, 59.90, 0),
(1, 3, 1, 79.90, 0),
(2, 2, 1, 249.90, 0),
(3, 1, 1, 59.90, 0);

-- Simula 3 pagamentos

INSERT INTO pagamento (id_pedido, metodo, valor_pago, data_pagamento, status, cod_transacao)
VALUES

(1, 'cartao', 334.80, '2025-10-01 14:00:00', 'aprovado', 'TX001'),
(2, 'pix', 269.90, '2025-10-02 09:30:00', 'pendente', 'TX002'),
(3, 'boleto', 74.90, '2025-10-03 11:45:00', 'aprovado', 'TX003');

-- Simula 2 entregas que tiveram o pagamento aprovado

INSERT INTO remessa (id_pedido, transportadora, codigo_rastreio, data_envio, data_entrega_prevista, status)
VALUES

(1, 'Correios', 'BR123456SP', '2025-10-02 08:00:00', '2025-10-05', 'em_rota'),
(3, 'Transportadora X', 'TR654321MG', '2025-10-03 10:00:00', '2025-10-07', 'em_rota');

-- Cria auditoria de 4 pedidos

INSERT INTO auditoria_pedido (id_pedido, campo_alterado, valor_anterior, valor_novo, usuario_responsavel)
VALUES

(1, 'status', 'confirmado', 'faturado', 'admin'),
(1, 'status', 'faturado', 'em_transporte', 'sistema'),
(2, 'status', 'carrinho', 'confirmado', 'cliente'),
(3, 'status', 'faturado', 'em_transporte', 'sistema');
