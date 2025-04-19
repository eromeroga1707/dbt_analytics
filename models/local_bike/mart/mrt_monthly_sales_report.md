# mrt_monthly_sales_report

This is a mart-level reporting model that provides a summarized view of sales performance by state and month.

## Business Logic

This model performs the following:

- Aggregates data by sales month (`YYYY-MM`) and state.
- Sums total sales (`total_order_amount`).
- Counts the number of distinct orders and customers.
- Calculates the average order value (total_sales_amount / total_orders).

## Use Cases

- Monthly reporting dashboards.
- Business performance monitoring across states.
- Sales trend analysis over time.

## Fields

| Column              | Description                                                  |
|---------------------|--------------------------------------------------------------|
| sales_month         | The year and month of the sale (formatted as YYYY-MM).       |
| state               | The state where the orders were made.                        |
| total_sales_amount  | Total revenue for the given state and month.                 |
| total_orders        | Number of unique orders placed in the given month and state. |
| total_customers     | Number of customers who placed orders.                       |
| avg_order_amount    | Average order value (total_sales_amount / total_orders).     |

## Dependencies

This model is built on:

- `int_sales__order_summary`
