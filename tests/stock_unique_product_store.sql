SELECT
  store_name,
  product_id,
  COUNT(*) as count
FROM {{ ref('mrt_stock_report') }}
GROUP BY store_name, product_id
HAVING COUNT(*) > 1