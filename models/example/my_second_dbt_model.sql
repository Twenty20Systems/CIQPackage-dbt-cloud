
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
<<<<<<< HEAD
where id = 2
=======
where id = 1
>>>>>>> cf095c9f2014dc7c26c0273794e6b61ccca1fac1
