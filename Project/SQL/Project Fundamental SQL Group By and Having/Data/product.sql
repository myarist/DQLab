USE dqlab;

CREATE TABLE IF NOT EXISTS product (
    `ID` INT,
    `product_name` VARCHAR(18) CHARACTER SET utf8,
    `price` INT,
    `speed_limit` INT,
    `date_active` DATETIME,
    `end_active` DATETIME,
    `active` INT
);

INSERT INTO
    product
VALUES
    (
        10001,
        'Private User',
        100000,
        10,
        '2018-10-01 00:00:00',
        '2099-12-31 00:00:00',
        1
    ),
    (
        10002,
        'Family Package',
        250000,
        30,
        '2018-10-01 00:00:00',
        '2099-12-31 00:00:00',
        1
    ),
    (
        10003,
        'Faster Package',
        300000,
        50,
        '2018-10-01 00:00:00',
        '2099-12-31 00:00:00',
        1
    ),
    (
        10004,
        'Gamer Package',
        500000,
        100,
        '2018-10-01 00:00:00',
        '2099-12-31 00:00:00',
        1
    ),
    (
        10005,
        'Bussines Package',
        1200000,
        500,
        '2018-12-01 00:00:00',
        '2099-12-31 00:00:00',
        1
    );