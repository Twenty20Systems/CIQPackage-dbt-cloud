  select
   sales_id,
   customer_id,
   product_id,
   sale_date,
   units_sold,
   total_sale_amount,
   discount_applied,
   sales_channel,
   region_id,
   time_summary
from {{ source('ciq_raw', 'sales') }}