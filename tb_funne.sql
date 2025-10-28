SELECT
  *,
  -- Metricas de análise de conversão
  (product_views / visits) * 100 AS  c_views,
  (carts_created / product_views) * 100 AS c_cart_creates,
  (orders / carts_created) * 100 AS c_checkout,
  orders_value / orders AS ticket_medio,
  (orders/visits) * 100

FROM `bi-candidatos.recruitment_analytics.funnel`