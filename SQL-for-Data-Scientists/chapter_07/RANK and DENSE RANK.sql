-- P101
SELECT
    vendor_id,
    market_date,
    product_id,
    original_price,
    RANK() OVER (
        PARTITION BY vendor_id
        ORDER BY
            original_price DESC
    ) AS price_rank
FROM
    farmers_market.vendor_inventory
ORDER BY
    vendor_id,
    original_price DESC;
