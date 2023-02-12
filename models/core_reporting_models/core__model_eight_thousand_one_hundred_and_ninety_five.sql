with model_a as
  (select *
   from {{ ref('int__marketing_model_eight_hundred_and_ten') }})
select * exclude unqiue_key,
         row_number() over (partition by 1
                            order by 1) as unqiue_key
from model_a