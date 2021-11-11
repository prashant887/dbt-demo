{{
    
    config(materialized='view',
    pre_hook=audits('POSTGRES_MODEL','STARTED','ORDERS_STATUS_METHOD_AMOUNT'),
    post_hook=audits('POSTGRES_MODEL','ENDED','ORDERS_STATUS_METHOD_AMOUNT')    
    ) 
    }}

    {% set order_statuses_old = ["COMPLETE","ON_HOLD","PENDING_PAYMENT","PENDING","CLOSED","CANCELED","PROCESSING","PAYMENT_REVIEW","SUSPECTED_FRAUD"] %}


    select
    order_id,
    {% for order_status in order_statuses() %}
    round(sum(case when order_status = '{{order_status}}' then order_item_subtotal  else 0 end)::numeric,2) as {{order_status}}_amount,
    {% endfor %}
    round(sum(order_item_subtotal)::numeric ,2) as total_amount
from {{ ref('orders_order_items_vw') }}
group by 1
