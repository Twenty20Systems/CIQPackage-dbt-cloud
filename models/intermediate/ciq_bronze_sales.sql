with sales_data as (
    select * from {{ ref('stg_sales')}}
) 
select * from sales_data