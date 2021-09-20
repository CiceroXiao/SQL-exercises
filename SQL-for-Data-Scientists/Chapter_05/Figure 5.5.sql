SELECT
    *
FROM
    product
        LEFT JOIN
    product_category ON product.product_category_id = product_category.product_category_id
LIMIT 10;