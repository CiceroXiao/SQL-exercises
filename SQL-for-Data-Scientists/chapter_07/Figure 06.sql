-- P104~P105
SELECT
    *
FROM
    (
        SELECT
            vendor_id,
            market_date,
            product_id,
            original_price,
            ROUND(
                AVG(original_price) OVER (
                    PARTITION BY market_date
                    ORDER BY
                        market_date
                ),
                2
            ) AS average_cost_product_by_market_date
        FROM
            farmers_market.vendor_inventory
    ) x
WHERE
    x.vendor_id = 1
    AND x.original_price > x.average_cost_product_by_market_date
ORDER BY
    x.market_date,
    x.original_price DESC;