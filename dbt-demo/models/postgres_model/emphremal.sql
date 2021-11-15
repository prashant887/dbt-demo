{{ 
    config(materialized='ephemeral',
pre_hook=audits('POSTGRES_MODEL','STARTED','EPHEMERAL'),
    post_hook=audits('POSTGRES_MODEL','ENDED','EPHEMERAL'),
    )

}}



with temp_one as (
select a.*,b.*,point(a.longitude::float8,a.latitude::float8) <@> point(b.lng::float,b.lat::float) distance
FROM {{ source('yara_data', 'user_location') }} a, {{ source('yara_data', 'world_cities') }} b)
select a.*,row_number() over(partition by a.user_id order by a.distance ) as rn from temp_one a
