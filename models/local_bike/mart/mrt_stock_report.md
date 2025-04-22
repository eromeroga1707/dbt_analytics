# mrt_stock_report

This model consolidates inventory (`stocks`) data from all stores, enriched with product, brand, and category information. It is a useful report for monitoring product availability by store, by state, and by product type.

## Included Fields

- **store_name**: Name of the store where the inventory is located.
- **state**: State or province where the store is located.
- **product_name**: Descriptive name of the product.
- **brand_name**: Brand of the product.
- **category_name**: Category to which the product belongs.
- **quantity**: Number of available units of the product in the store.

## Recommended Uses

This report is useful for:

- Checking stock availability per store.
- Identifying categories or brands with low stock.
- Analyzing inventory coverage by region.