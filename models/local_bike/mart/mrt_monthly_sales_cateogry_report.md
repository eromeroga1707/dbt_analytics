# mrt_monthly_sales_by_category

This is a mart-level reporting model that aggregates monthly sales data by product category and state.

## Business Logic

This model performs the following:

- Aggregates data by sales month (`YYYY-MM`), state, and product category.
- Sums total sales amount.
- Counts the number of distinct orders.
- Sums total quantity of products sold.

## Use Cases

- Analyze category trends by state.
- Identify top-performing categories by month.
- Compare product category performance over time.

## Fields

| Column               | Description                                                              |
|----------------------|--------------------------------------------------------------------------|
| sales_month          | The year and month of the sale (formatted as YYYY-MM).                   |
| state                | The state where the orders were placed.                                  |
| category_name        | The product category name.                                                |
| total_sales_amount   | Total revenue for the given category, state, and month.                  |
| total_orders         | Number of unique orders that included products from this category.       |
| total_quantity_sold  | Total quantity of products sold in this category.                        |

## Grain

One row per `sales_month`, `state`, and `category_name`.

## Dependencies

This model is built on:

- `int_sales__order_item_summary`