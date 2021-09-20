SELECT
    *
FROM
    (
        SELECT
            market_date,
            vendor_id,
            booth_number,
            LAG(booth_number, 1) OVER (
                PARTITION BY vendor_id
                ORDER BY
                    market_date,
                    vendor_id
            ) AS previous_booth_number
        FROM
            farmers_market.vendor_booth_assignments
        ORDER BY
            market_date,
            vendor_id,
            booth_number
    ) x
WHERE
    x.market_date = '2019-04-10'
    AND (
        x.booth_number <> x.previous_booth_number
        OR
        x.previous_booth_number IS NULL
    );