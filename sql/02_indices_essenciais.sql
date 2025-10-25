-- Índices essenciais

CREATE INDEX idx_produto_nome ON produto (nome);
CREATE INDEX idx_pedido_status ON pedido (status);
CREATE INDEX idx_pagamento_status ON pagamento (status);
CREATE INDEX idx_remessa_status ON remessa (status);
CREATE INDEX idx_cliente_email ON cliente (email);
            