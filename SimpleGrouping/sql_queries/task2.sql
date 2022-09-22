SELECT customer_order_id, SUM(product_amount * price) AS to_pay
FROM order_details
GROUP BY customer_order_id HAVING SUM(product_amount * price) > 100
ORDER BY customer_order_id
