SELECT
    customer_id,
    market_date,
    vendor_id,
    product_id,
    quantity,
    cost_to_customer_per_qty,
    ROUND(quantity * cost_to_customer_per_qty, 2) AS price,
    ROUND(
        SUM(quantity * cost_to_customer_per_qty) OVER (PARTITION BY customer_id),
        2
    ) AS customer_spend_total
FROM
    farmers_market.customer_purchases
LIMIT 10;