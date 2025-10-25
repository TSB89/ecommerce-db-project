CREATE VIEW vw_pedidos_resumidos AS
SELECT
    p.id_pedido,
    c.nome AS cliente,
    c.email,
    p.data_criacao,
    p.status AS status_pedido,
    p.valor_total,
    pg.metodo AS metodo_pagamento,
    pg.status AS status_pagamento,
    r.transportadora,
    r.codigo_rastreio,
    r.status AS status_remessa
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
LEFT JOIN pagamento pg ON p.id_pedido = pg.id_pedido
LEFT JOIN remessa r ON p.id_pedido = r.id_pedido;
