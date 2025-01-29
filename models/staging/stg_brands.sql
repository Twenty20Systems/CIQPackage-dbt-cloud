  select
   brand_id,
   brand_name,
   brand_owner,
   brand_category
from {{ source('ciq_raw', 'brands') }}