USE dqlab;

-- Mendapatkan jumlah nilai pinalty
SELECT
    customer_id,
    sum(pinalty)
FROM
    invoice
GROUP BY
    customer_id
HAVING
    sum(pinalty) > 0;

-- Mencari customer yang mengganti layanan
SELECT
    t1.name,
    GROUP_CONCAT(t3.product_name)
FROM
    customer t1
    JOIN subscription t2 ON t1.id = t2.customer_id
    JOIN product t3 ON t2.product_id = t3.id
WHERE
    t1.id IN (
        SELECT
            customer_id
        FROM
            subscription
        GROUP BY
            customer_id
        HAVING
            count(1) > 1
    )
GROUP BY
    t1.name;