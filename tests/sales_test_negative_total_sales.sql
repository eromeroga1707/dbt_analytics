SELECT *
FROM {{ ref('mrt_montlhy_sales_report') }}
WHERE total_sales_amount < 0