with orders as (
  select * from {{ ref('stg_sales__orders') }}
),
order_items as (
  select * from {{ ref('stg_sales__order_items') }}
),
stores as (
  select * from {{ ref('stg_sales__stores') }}
),
brands as (
  select * from {{ ref('stg_production__brands') }}
),
categories as (
  select * from {{ ref('stg_production__categories') }}
),
products as (
  select * from {{ ref('stg_production__products') }}
),
joined as (
  select
    o.order_date,
    o.order_id,
    p.product_name,
    b.brand_name,
    ct.category_name,
    s.store_name,
    s.state,
    oi.quantity,
    ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)), 2) as total_product_amount
  from order_items oi
  left join orders o on oi.order_id = o.order_id
  left join products p on oi.product_id = p.product_id
  left join brands b on p.brand_id = b.brand_id
  left join categories ct on p.category_id = ct.category_id
  left join stores s on o.store_id = s.store_id
  group by
    o.order_date,
    o.order_id,
    p.product_name,
    b.brand_name,
    ct.category_name,
    s.store_name,
    s.state,
    oi.quantity
)

select * from joined
order by order_date desc