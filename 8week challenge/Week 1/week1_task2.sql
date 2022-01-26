SELECT customer_id, count(order_date) as num_visits
FROM sales
group by customer_id;