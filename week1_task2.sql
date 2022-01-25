SELECT customer_id, count(order_date)
FROM sales
group by customer_id;