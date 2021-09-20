-- P107
SELECT
    customer_id,
    market_date,
    vendor_id,
    product_id,
    quantity,
    cost_to_customer_per_qty,
    quantity * cost_to_customer_per_qty AS price,
    SUM(quantity * cost_to_customer_per_qty) OVER (
        PARTITION BY customer_id
        ORDER BY
            market_date,
            transaction_time,
            product_id
    ) AS customer_spend_running_total
FROM
    farmers_market.customer_purchases
LIMIT 10;
