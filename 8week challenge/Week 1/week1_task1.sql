-- building the join tables to view the  data
SELECT sales.product_id, sales.customer_id, menu.price
 FROM sales 
 JOIN menu 
 ON sales.product_id=menu.product_id;

-- 1. What is the total amount each customer spent at the restaurant? 
SELECT sales.product_id, sales.customer_id, SUM(menu.price) as total_spending
 FROM sales 
 JOIN menu 
 ON sales.product_id=menu.product_id GROUP BY sales.customer_id;