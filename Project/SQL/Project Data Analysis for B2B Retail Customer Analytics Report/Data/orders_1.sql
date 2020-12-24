USE dqlab;

CREATE TABLE IF NOT EXISTS orders_1 (
    `orderNumber` INT,
    `orderDate` DATETIME,
    `requiredDate` DATETIME,
    `shippedDate` DATETIME,
    `status` VARCHAR(9) CHARACTER SET utf8,
    `customerID` INT,
    `productCode` VARCHAR(13) CHARACTER SET utf8,
    `quantity` INT,
    `priceeach` INT
);

INSERT INTO
    orders_1
VALUES
    (
        10234,
        '2004-03-30 00:00:00',
        '2004-04-05 00:00:00',
        '2004-04-02 00:00:00',
        'Shipped',
        412,
        'S72_1253',
        40,
        45690
    ),
    (
        10234,
        '2004-03-30 00:00:00',
        '2004-04-05 00:00:00',
        '2004-04-02 00:00:00',
        'Shipped',
        412,
        'S700_2047',
        29,
        83280
    ),
    (
        10234,
        '2004-03-30 00:00:00',
        '2004-04-05 00:00:00',
        '2004-04-02 00:00:00',
        'Shipped',
        412,
        'S24_3816',
        31,
        78830
    ),
    (
        10234,
        '2004-03-30 00:00:00',
        '2004-04-05 00:00:00',
        '2004-04-02 00:00:00',
        'Shipped',
        412,
        'S24_3420',
        25,
        65090
    ),
    (
        10234,
        '2004-03-30 00:00:00',
        '2004-04-05 00:00:00',
        '2004-04-02 00:00:00',
        'Shipped',
        412,
        'S24_2841',
        44,
        67140
    );