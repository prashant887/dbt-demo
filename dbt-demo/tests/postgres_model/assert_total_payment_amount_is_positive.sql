
	  select order_item_order_id,sum(order_item_subtotal) as total_amount 
	  from {{ ref ('orders_order_items_vw') }} group by order_item_order_id
	  having not(sum(order_item_subtotal) >= 0)