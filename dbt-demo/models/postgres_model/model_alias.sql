{{ 
    config(materialized='table',
pre_hook=audits('POSTGRES_MODEL','STARTED','MODEL_ALIAS'),
    post_hook=audits('POSTGRES_MODEL','ENDED','MODEL_ALIAS'),
    alias='even_events'
    )

}}
 select * from events where mod(id,2)=0
