-- P103~P104
SELECT
    vendor_id,
    market_date,
    product_id,
    original_price,
    AVG(original_price) OVER (
        PARTITION BY market_date
        ORDER BY
            market_date
    ) AS average_cost_product_by_market_date
FROM
    farmers_market.vendor_inventoryF;