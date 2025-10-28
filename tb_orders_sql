SELECT
    DATE(sold_at) AS dt_pedido,
    COUNT(order_id) AS total_pedidos,
    SUM(order_value) AS vlr_total,
    SUM(order_value) / COUNT(order_id) AS ticket_medio,
    SUM(CASE WHEN order_status = 'canceled' THEN order_value END) AS vlr_cancelado,
    SUM(CASE WHEN order_status NOT IN ('canceled') THEN order_value END) AS vlr_realizado,
    COUNT(CASE WHEN order_status = 'canceled' THEN 1 END) AS pedidos_cancelados,
    (COUNT(CASE WHEN order_status = 'canceled' THEN 1 END) * 100.0) / COUNT(order_id) AS taxa_cancelamento_percentual
FROM `bi-candidatos.recruitment_analytics.orders`
GROUP BY 1
ORDER BY 1