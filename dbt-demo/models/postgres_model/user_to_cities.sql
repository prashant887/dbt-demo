{{ 
    config(materialized='table',
pre_hook=audits('POSTGRES_MODEL','STARTED','USER_TO_CITIES'),
    post_hook=audits('POSTGRES_MODEL','ENDED','USER_TO_CITIES'),
    )

}}
select address,latitude,longitude,tag,location_id,user_id,city,city_ascii,lat,lng,iso2,iso3,admin_name,capital,population,id,distance from {{ ref('emphremal') }} where rn=1
