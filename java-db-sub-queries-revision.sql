-- https://github.com/digital-career-institute/java-db-sub-queries-revision-bunny-thief

-- 1. Return all customers listed in the orders table who placed orders on the most recently recorded day.
	SELECT DISTINCT company_name, o.order_date FROM customers as c
	INNER JOIN orders AS o ON c.customer_id = o.customer_id
	WHERE o.order_date = (SELECT max(order_date) FROM orders);

-- 2. Select all product names and prices that have unit price which is bigger than price of product with name 'Carnarvon Tigers'
