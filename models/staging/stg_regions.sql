  select
   region_id,
   region_name,
   country,
   city,
   state,
   zip
from {{ source('ciq_raw', 'regions') }}