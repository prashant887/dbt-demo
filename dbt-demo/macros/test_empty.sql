{% test is_not_empty(model) %}

with validation(rw) as (

    select case when count(*)=0 then 1 else 0 end
    from {{ model }}

)

select *
from validation where rw=1


{% endtest %}