/* Três exemplos de SELECT para testar a VIEW */

-- Listar pedidos com situação geral consolidada 

SELECT 
    id_pedido,
    cliente,
    status_pedido,
    metodo_pagamento,
    status_pagamento,
    transportadora,
    status_remessa,
    valor_total
FROM vw_pedidos_resumidos
ORDER BY id_pedido;

-- Listar pedidos em transporte

SELECT * FROM vw_pedidos_resumidos
WHERE status_pedido = 'em_transporte';

-- Listar pedidos com pagamento pendente

SELECT * FROM vw_pedidos_resumidos
WHERE status_pagamento = 'pendente';
    