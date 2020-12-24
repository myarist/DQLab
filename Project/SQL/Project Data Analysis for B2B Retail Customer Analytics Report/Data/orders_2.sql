USE dqlab;

CREATE TABLE IF NOT EXISTS orders_2 (
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
    orders_2
VALUES
    (
        10235,
        '2004-04-02 00:00:00',
        '2004-04-12 00:00:00',
        '2004-04-06 00:00:00',
        'Shipped',
        260,
        'S18_2581',
        24,
        81950
    ),
    (
        10235,
        '2004-04-02 00:00:00',
        '2004-04-12 00:00:00',
        '2004-04-06 00:00:00',
        'Shipped',
        260,
        'S24_1785',
        23,
        89720
    ),
    (
        10235,
        '2004-04-02 00:00:00',
        '2004-04-12 00:00:00',
        '2004-04-06 00:00:00',
        'Shipped',
        260,
        'S24_3949',
        33,
        55270
    ),
    (
        10235,
        '2004-04-02 00:00:00',
        '2004-04-12 00:00:00',
        '2004-04-06 00:00:00',
        'Shipped',
        260,
        'S24_4278',
        40,
        63030
    ),
    (
        10235,
        '2004-04-02 00:00:00',
        '2004-04-12 00:00:00',
        '2004-04-06 00:00:00',
        'Shipped',
        260,
        'S32_1374',
        41,
        90900
    );