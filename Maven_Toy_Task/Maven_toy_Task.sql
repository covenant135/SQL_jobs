-- schema was created , and tables named inventory, products, sales and store
-- data (in csv) format was imported and inspected
-- There was need to clean the product data and that was done as described 

UPDATE maven_toy.products
SET Product_Price=REPLACE(Product_Price,'$','');

-- most tables have product_id and store_id are the connector
-- task Which product categories drive the biggest profits? 
-- Is this the same across store locations?

SELECT *, product_price - product_cost  AS profit
FROM products
ORDER BY profit DESC
LIMIT 5;

SELECT 
FROM sales;

SELECT * FROM stores;