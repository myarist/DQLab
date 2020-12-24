USE dqlab;

-- Pengenalan Table - Customer
SELECT
    *
FROM
    customer;

-- Pengenalan Table - Product
SELECT
    *
FROM
    product;

-- Pengenalan Table - Subscription
SELECT
    *
FROM
    subscription;

-- Pengenalan Table - Invoice
SELECT
    *
FROM
    invoice;

-- Pengenalan Table - Payment
SELECT
    *
FROM
    payment;

-- Contoh penggunaan HAVING
SELECT
    customer_id
FROM
    Subscription
GROUP BY
    customer_id
HAVING
    COUNT(customer_id) > 1;

-- Menampilkan Konsumen yang berubah berlangganan
SELECT
    customer_id,
    product_id,
    subscription_date
FROM
    Subscription
WHERE
    customer_id IN (
        SELECT
            customer_id
        FROM
            Subscription
        GROUP BY
            customer_id
        HAVING
            COUNT(customer_id) > 1
    )
ORDER BY
    customer_id ASC;

-- Menampilkan detail konsumen
SELECT
    b.name,
    b.address,
    b.phone,
    a.product_id,
    a.subscription_date
FROM
    subscription a
    JOIN customer b ON a.customer_id = b.id
WHERE
    b.id IN (
        SELECT
            customer_id
        FROM
            Subscription
        GROUP BY
            customer_id
        HAVING
            COUNT(customer_id) > 1
    )
ORDER BY
    b.id ASC;

-- Penggunaan Fungsi MAX pada Having
SELECT
    product_id,
    MAX(total_price) AS total
FROM
    invoice
GROUP BY
    product_id;

SELECT
    product_id,
    MAX(total_price) AS total
FROM
    invoice
GROUP BY
    product_id
HAVING
    MAX(total_price) > 100000;

SELECT
    product_id,
    MAX(pinalty) AS total
FROM
    invoice
GROUP BY
    product_id
HAVING
    MAX(pinalty) > 30000;

-- Penggunaan Fungsi MIN pada Having
SELECT
    product_id,
    MIN(total_price) AS total
FROM
    invoice
GROUP BY
    product_id;

SELECT
    product_id,
    MIN(total_price) AS total
FROM
    invoice
GROUP BY
    product_id
HAVING
    MIN(total_price) < 500000;

SELECT
    product_id,
    MIN(pinalty) AS total
FROM
    invoice
GROUP BY
    product_id
HAVING
    MIN(pinalty) < 50000;

-- Penggunaan Fungsi AVG di Having
SELECT
    product_id,
    AVG(total_price) AS total
FROM
    invoice
GROUP BY
    product_id;

SELECT
    product_id,
    AVG(total_price) AS total
FROM
    invoice
GROUP BY
    product_id
HAVING
    AVG(total_price) > 100000;

SELECT
    product_id,
    AVG(pinalty) AS total
FROM
    invoice
GROUP BY
    product_id
HAVING
    AVG(pinalty) > 30000;

-- Mini Quiz
SELECT
    product_id,
    AVG(pinalty),
    COUNT(customer_id) AS total
FROM
    invoice
GROUP BY
    product_id
HAVING
    COUNT(customer_id) > 20;