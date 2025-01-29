  select
   supplier_id,
   supplier_name,
   contact_info,
   supply_region,
   product_id
from {{ source('ciq_raw', 'suppliers') }}