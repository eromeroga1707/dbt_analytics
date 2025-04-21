with orders as (
  select * from {{ ref('stg_sales__orders') }}
),
order_items as (
  select * from {{ ref('stg_sales__order_items') }}
),
stores as (
  select * from {{ ref('stg_sales__stores') }}
),
customers as (
  select * from {{ ref('stg_sales__customers') }}
),
staffs as (
  select * from {{ ref('stg_sales__staffs') }}
),
joined as (
select
  o.order_date,
  o.order_id,
  s.store_name,
  s.state,
  CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
  CONCAT(st.first_name, ' ', st.last_name) AS staff_name,
  ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)),2) AS total_order_amount
from orders o
left join order_items oi on o.order_id = oi.order_id
left join stores s on o.store_id = s.store_id
left join customers c on o.customer_id = c.customer_id
left join staffs st on o.staff_id = st.staff_id
group by
  o.order_date,
  o.order_id,
  s.store_name,
  s.state,
  customer_name,
  staff_name
order by o.order_date desc
)
select * from joined
order by order_date desc