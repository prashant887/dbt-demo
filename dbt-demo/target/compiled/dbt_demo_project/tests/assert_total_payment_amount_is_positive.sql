select order_item_order_id,sum(order_item_subtotal) as total_amount 
	  from facts.order_items group by order_item_order_id
	  having not(sum(order_item_subtotal) >= 0)