# mrt_sales_staff_ranking

This model provides a ranking of sales staff by state based on their total sales.

## Business Logic

- Total sales are calculated by summing all order amounts for each staff member and city (state).
- A rank is assigned within each state using a `RANK()` window function, ordering staff by their total sales in descending order.

## Fields

- `staff_name`: Name of the salesperson.
- `state`: City/state where the sales occurred.
- `total_sales`: Aggregated total of sales made by the salesperson in that city.
- `staff_rank`: Position of the salesperson in the city based on total sales (1 is highest).

## Use Cases

- Identify top-performing sales staff by region.
- Understand regional performance disparities.
- Help managers assign training or rewards.
