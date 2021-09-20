-- P105
SELECT
    vendor_id,
    market_date,
    product_id,
    original_price,
    COUNT(product_id) OVER (PARTITION BY market_date, vendor_id) vendor_product_count_per_market_date
FROM
    farmers_market.vendor_inventory
ORDER BY
    vendor_id,
    market_date,
    original_price DESC