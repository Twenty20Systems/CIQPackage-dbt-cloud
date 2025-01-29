  select
   warehouse_id,
   warehouse_name,
   warehouse_location,
   capacity,
   manager_id
from {{ source('ciq_raw', 'cmp_warehouses') }}