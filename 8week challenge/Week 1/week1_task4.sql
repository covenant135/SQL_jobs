-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
Select menu.product_name, sales.product_id, count(sales.product_id) as num_sales
From sales 
Join menu on sales.product_id= menu.product_id
group by  sales.product_id
order by num_sales DESC

