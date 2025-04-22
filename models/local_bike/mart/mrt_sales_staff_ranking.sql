with int_orders_summary as (
    select * from {{ ref('int_sales__order_summary') }}
),

sales_by_staff_city as (
    select
        staff_name,
        state,
        ROUND(SUM(total_order_amount),2) as total_sales
    from int_orders_summary
    group by staff_name, state
),

staff_ranked as (
    select
        *,
        RANK() OVER (PARTITION BY state ORDER BY total_sales DESC) as staff_rank
    from sales_by_staff_city
)

select * from staff_ranked