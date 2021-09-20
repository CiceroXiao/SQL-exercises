SELECT
    *
FROM
    customer AS C
    LEFT JOIN customer_purchases AS cp ON C .customer_id = cp.customer_id
WHERE
    cp.customer_id > 0
LIMIT 10;