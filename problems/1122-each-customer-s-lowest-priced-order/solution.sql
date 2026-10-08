WITH ranked_orders AS (
    SELECT order_id, customer_id, amount,
           ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY amount ASC, order_id ASC) AS rn
    FROM orders
)
SELECT order_id, customer_id, amount
FROM ranked_orders
WHERE rn = 1
ORDER BY customer_id ASC;
