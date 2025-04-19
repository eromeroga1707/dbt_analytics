## Order Item Summary

This model combines order item details with related product, brand, category, and store information to produce a comprehensive summary at the order item level.

It provides:

- Order date and ID
- Product, brand, and category details
- Store name and state
- Quantity sold per item
- Total amount per item after discount

Use this model to:

- Analyze individual product sales per order
- Understand sales performance by brand or category
- Support store-level and item-level sales reporting

**Grain:** One row per product per order.

## Dependencies

This model is built on:

- `stg_sales__order`
- `stg_sales__order_items`
- `stg_production__brands`
- `stg_production__categories`
- `stg_production__products`
