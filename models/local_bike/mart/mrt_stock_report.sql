with stocks as (
  select * from {{ ref('stg_production__stocks') }}
),
brands as (
  select * from {{ ref('stg_production__brands') }}
),
products as (
  select * from {{ ref('stg_production__products') }}
),
categories as (
  select * from {{ ref('stg_production__categories') }}
),
stores as (
  select * from {{ ref('stg_sales__stores') }}
),
joined as (
  select
    s.store_name,
    s.state,
    stck.product_id,
    p.product_name,
    b.brand_name,
    c.category_name,
    stck.quantity
  from stocks stck
  left join stores s on stck.store_id = s.store_id
  left join products p on stck.product_id = p.product_id
  left join brands b on p.brand_id = b.brand_id
  left join categories c on p.category_id = c.category_id
)

select * 
from joined
order by store_name desc