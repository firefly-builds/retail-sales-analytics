SELECT
  category,
  ROUND(SUM(sales), 2) AS total_revenue,
  ROUND(SUM(profit), 2) AS total_profit,
  ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct,
  COUNT(*) AS order_lines
FROM orders
GROUP BY category
ORDER BY total_revenue DESC;

SELECT 
    category,
    subcategory,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct,
    COUNT(*) AS order_lines
FROM orders,
GROUP BY category, subcategory
ORDER BY total_profit ASC;

SELECT
    segment,
    ROUND(SUM(sales), 2) AS total_revenue,
  ROUND(SUM(profit), 2) AS total_profit,
  ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct,
  COUNT(*) AS order_lines
FROM orders
GROUP BY segment
ORDER BY margin_pct DESC;