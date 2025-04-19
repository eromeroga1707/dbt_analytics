with monthly_sales as (

  select
    format_date('%Y-%m', order_date) as sales_month,
    state,
    round(sum(total_order_amount),2) as total_sales_amount,
    count(distinct order_id) as total_orders,
    count(distinct customer_name) as total_customers
  from {{ ref('int_sales__order_summary') }}
  group by sales_month, state

)

select
  sales_month,
  state,
  total_sales_amount,
  total_orders,
  total_customers,
  round(total_sales_amount / nullif(total_orders, 0), 2) as avg_order_amount,
from monthly_sales
order by sales_month desc, state