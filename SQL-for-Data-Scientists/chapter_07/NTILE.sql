-- P102~P103
SELECT
    vendor_id,
    market_date,
    product_id,
    original_price,
    NTILE(10) OVER (
        ORDER BY
            original_price DESC
    ) AS price_ntile
FROM
    farmers_market.vendor_inventory
ORDER BY
    original_price DESC;
