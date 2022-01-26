-- 3. What was the first item from the menu purchased by each customer?

Select sales.customer_id, min(sales.order_date), sales.product_id, menu.product_name
From sales 
Join menu on sales.product_id= menu.product_id
Group by sales.customer_id
