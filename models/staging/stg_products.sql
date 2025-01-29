  select
   product_id,
   product_name,
   product_category,
   brand_id,
   sku,
   cost_price,
   selling_price,
   packaging_type,
   product_size 
from {{ source('ciq_raw', 'products') }}