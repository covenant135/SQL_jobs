-- 8. What is the total items and amount spent for each member before they became a member?

Select  count(menu.product_name), sales.customer_id, sum(menu.price),  menu.product_name
From sales 
Join menu on sales.product_id= menu.product_id
Join members on sales.customer_id=members.customer_id
where sales.order_date < members.join_date
group by sales.product_id, sales.customer_id

INSERT INTO members
	  (customer_id, join_date)
values ('C', '2021-01-09');

