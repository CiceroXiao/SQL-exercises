SELECT
    market_date,
    SUM(quantity * cost_to_customer_per_qty) AS market_date_total_sales
FROM
    farmers_market.customer_purchases
GROUP BY
    market_date
ORDER BY
    market_date;