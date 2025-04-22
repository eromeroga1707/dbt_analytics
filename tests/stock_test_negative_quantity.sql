SELECT *
FROM {{ ref('mrt_stock_report') }}
WHERE quantity < 0