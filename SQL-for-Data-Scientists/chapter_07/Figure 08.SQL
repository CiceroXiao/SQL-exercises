-- P106
SELECT
    customer_id,
    market_date,
    vendor_id,
    product_id,
    quantity * cost_to_customer_per_qty AS price,
    SUM(quantity * cost_to_customer_per_qty) OVER (
        ORDER BY
            market_date,
            transaction_time,
            customer_id,
            product_id
    ) AS running_total_purchases
FROM
    farmers_market.customer_purchases
