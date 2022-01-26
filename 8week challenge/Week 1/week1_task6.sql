---- Which item was purchased first by the customer after they became a member?
Select sales.customer_id, sales.order_date, sales.product_id, menu.product_name
From sales 
Join menu on sales.product_id= menu.product_id
Join members on sales.customer_id=members.customer_id
where sales.order_date > members.join_date
order by sales.customer_id, sales.order_date DESC


---- 7. Which item was purchased just before the customer became a member?

Select sales.customer_id, sales.order_date, sales.product_id, menu.product_name
From sales 
Join menu on sales.product_id= menu.product_id
Join members on sales.customer_id=members.customer_id
where sales.order_date < members.join_date
order by sales.customer_id, sales.order_date DESC


