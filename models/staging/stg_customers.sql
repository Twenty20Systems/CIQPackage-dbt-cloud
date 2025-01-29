  select
   customer_id,
   customer_name,
   customer_type,
   contact_info
from {{ source('ciq_raw', 'customers') }}