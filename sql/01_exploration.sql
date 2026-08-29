SELECT 
ROUND(SUM(sales), 2) AS total_revenue,
ROUND(SUM(profit), 2) AS total_profit,
ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS overall_margin_pct
FROM orders;


SELECT
  COUNT(DISTINCT region) AS regions,
  COUNT(DISTINCT state) AS states,
  COUNT(DISTINCT city) AS cities,
  COUNT(DISTINCT category) AS categories,
  COUNT(DISTINCT subcategory) AS subcategories,
  COUNT(DISTINCT segment) AS segments
FROM orders;
