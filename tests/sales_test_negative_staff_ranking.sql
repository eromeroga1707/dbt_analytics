select *
from {{ ref('mrt_sales_staff_ranking') }}
where staff_rank < 1