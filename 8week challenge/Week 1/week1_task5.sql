-- 5. Which item was the most popular for each customer?

Select menu.product_name, sales.product_id, sales.customer_id,count(sales.product_id) as num_sales
From sales 
Join menu on sales.product_id= menu.product_id
group by  sales.customer_id, sales.product_id
