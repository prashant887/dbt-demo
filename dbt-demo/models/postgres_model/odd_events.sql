{{ 
    config(materialized='table',
pre_hook=audits('POSTGRES_MODEL','STARTED','ODD_EVENTS'),
    post_hook=audits('POSTGRES_MODEL','ENDED','ODD_EVENTS')
        )

}}
select a.*,current_timestamp created_datetime from events a where not exists 
(select 1 from {{ ref('model_alias') }} b where a.id=b.id)