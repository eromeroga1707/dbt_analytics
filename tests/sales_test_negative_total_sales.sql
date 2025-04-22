SELECT *
FROM {{ ref('mrt_monthly_sales_summary') }}
WHERE total_sales_amount < 0
   OR total_orders < 0
   OR total_customers < 0