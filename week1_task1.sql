SELECT sales.product_id, sales.customer_id, menu.price
 FROM sales 
 JOIN menu 
 ON sales.product_id=menu.product_id;

SELECT sales.product_id, sales.customer_id, SUM(menu.price) 
 FROM sales 
 JOIN menu 
 ON sales.product_id=menu.product_id GROUP BY sales.customer_id;