SELECT
  region,
  ROUND(SUM(sales), 2) AS total_revenue,
  ROUND(SUM(profit), 2) AS total_profit,
  ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct,
  COUNT(DISTINCT state) AS states_covered
FROM orders
GROUP BY region
ORDER BY margin_pct DESC;

-- Top 5 states
SELECT state, region,
  ROUND(SUM(sales), 2) AS revenue,
  ROUND(SUM(profit), 2) AS profit,
  ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct
FROM orders
GROUP BY state, region
ORDER BY profit DESC
LIMIT 5;

-- Bottom 5 states (losing money)
SELECT state, region,
  ROUND(SUM(sales), 2) AS revenue,
  ROUND(SUM(profit), 2) AS profit,
  ROUND(100.0 * SUM(profit) / SUM(sales), 2) AS margin_pct
FROM orders
GROUP BY state, region
ORDER BY profit ASC
LIMIT 5;

SELECT
  state, region,
  ROUND(SUM(profit), 2) AS total_profit,
  RANK() OVER (PARTITION BY region ORDER BY SUM(profit) DESC) AS rank_in_region
FROM orders
GROUP BY state, region
ORDER BY region, rank_in_region;
