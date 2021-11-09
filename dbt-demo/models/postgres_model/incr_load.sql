{{ 
    
    config(materialized='incremental',
    pre_hook=audits('POSTGRES_MODEL','STARTED','INCR_LOAD'),
    post_hook=audits('POSTGRES_MODEL','ENDED','INCR_LOAD')    
    ) 
    }}

     select *,current_timestamp from events
     {% if is_incremental() %}
       where id >= (select max(id) from {{ this }})
     {% endif %}
