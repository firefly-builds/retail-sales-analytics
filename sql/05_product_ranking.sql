SELECT
  shipmode,
  COUNT(*) AS orders,
  ROUND(SUM(sales), 2) AS revenue,
  ROUND(SUM(profit), 2) AS profit,
  ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct,
  ROUND(AVG(discount), 3) AS avg_discount
FROM orders
GROUP BY shipmode
ORDER BY margin_pct DESC;


SELECT
  segment,
  category,
  ROUND(SUM(sales), 2) AS revenue,
  ROUND(SUM(profit), 2) AS profit,
  ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct
FROM orders
GROUP BY segment, category
ORDER BY segment, margin_pct DESC;

