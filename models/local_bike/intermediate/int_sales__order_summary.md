## Order Summary

This model summarizes sales data at the order level by joining order details with customer, store, and staff information.

It provides:

    Total sales amount per order

    Store, state, and salesperson involved in the order

    Customer details

Use this model to:

    Analyze sales performance per order

    Understand store-level and staff-level performance

    Identify customer purchasing patterns

Grain: One row per order_id.

## Dependencies

This model is built on:

- `stg_sales__order`
- `stg_sales__order_items`
- `stg_sales__customers`
- `stg_sales__staffs`
- `stg_sales__stores`