SELECT
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.2 THE '1% - 20% off'
        WHEN discount <= 0.4 THE '21% - 40% off'
        ELSE 'Over 40% off'
    END AS discount_band,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct
FROM orders
GROUP BY discount_band
ORDER BY MIN(discount);

SELECT
  discount,
  COUNT(*) AS order_lines,
  ROUND(AVG(profit), 2) AS avg_profit,
  ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY discount
ORDER BY discount;
