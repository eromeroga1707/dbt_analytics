select
  format_date('%Y-%m', order_date) as sales_month,
  state,
  category_name,
  round(sum(total_product_amount), 2) as total_product_amount,
  sum(quantity) as total_products
  from {{ ref('int_sales__order_item_summary') }}
group by sales_month, state, category_name
order by sales_month desc, state desc, category_name desc 