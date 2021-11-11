{{ 
    
    config(materialized='view',
    pre_hook=audits('POSTGRES_MODEL','STARTED','ORDERS_STATUS_COUNT'),
    post_hook=audits('POSTGRES_MODEL','ENDED','ORDERS_STATUS_COUNT')    
    ) 
    }}

        select  status,count(*) as status_count
        from {{ source('public_data', 'order_status') }}
        group by status
