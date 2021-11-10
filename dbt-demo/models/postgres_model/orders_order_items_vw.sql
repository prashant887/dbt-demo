{{ 
    config(materialized='view',
pre_hook=audits('POSTGRES_MODEL','STARTED','ORDERS_ORDER_ITEMS_VW'),
    post_hook=audits('POSTGRES_MODEL','ENDED','ORDERS_ORDER_ITEMS_VW')
        )

}}
select a.* , b.* from {{ source('facts_data','order_items') }} a , {{ source('facts_data','orders') }} b
where a.order_item_order_id=b.order_id order by b.order_id



