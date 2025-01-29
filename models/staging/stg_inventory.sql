  select
   inventory_id,
   product_id,
   warehouse_id,
   stock_quantity,
   restock_level,
   last_updated
from {{ source('ciq_raw', 'inventory') }}