select *
from {{ ref('mrt_sales_staff_ranking') }}
where total_sales < 1