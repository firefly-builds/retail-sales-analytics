# Retail Sales Analytics

**Business question:** Which products are killing our margins — and what should we do about it?

## Live Dashboard
[View on Tableau Public](https://public.tableau.com/app/profile/neha.nataraj/viz/Retail-Sales-Analytics/Dashboard1)

## Summary
Analyzed Sample Superstore retail dataset (9,994 order lines) to identify
margin drivers, discount impact on profitability, and regional performance
gaps across Furniture, Office Supplies, and Technology categories.

**Overall margin: 12.47%** | **Worst subcategory: Tables (-8.56% margin)** | **Key finding: discounts above 40% generate -77.4% margin**

## Key Findings
1. **Tables** is the biggest money loser — $17,725 negative profit despite
   $206,965 in revenue. High sales volume masking a deeply unprofitable line.
2. Orders with discounts above 40% generate a -77.4% margin, averaging
   -$95 to -$310 loss per order line. Zero-discount orders average +$67 profit.
3. **West** has the highest total profit led by California ($76,381).
   **Central** has the worst performers — Texas loses $25,729.
4. Technology drives the highest margin at 17.4% — the most scalable
   growth opportunity in the portfolio.
5. Furniture has the lowest margin at 2.49% with Tables and Bookcases
   both generating negative profit.

## Recommendations
- Cap discounts at 20% company-wide — orders above 30% discount average
  negative profit across all categories
- Urgent review of Tables pricing — $207K in revenue with -$17K profit
  signals a cost structure problem, not a volume problem
- Grow Technology category — 17.4% margin at $836K revenue is the
  strongest combination in the dataset

## Tools & Stack
- **PostgreSQL** — SQL analysis (GROUP BY, CASE WHEN, window functions,
  margin calculations)
- **Python** (pandas, matplotlib, seaborn) — EDA and CSV exports
- **Tableau Public** — interactive margin and discount dashboard

## SQL Concepts Used
- `GROUP BY` with aggregate functions (SUM, AVG, COUNT)
- `CASE WHEN` for discount banding
- `RANK() OVER (PARTITION BY region)` for state rankings within regions
- `ROUND()` for clean financial output

