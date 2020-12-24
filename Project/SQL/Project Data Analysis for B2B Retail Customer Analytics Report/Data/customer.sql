USE dqlab;

CREATE TABLE IF NOT EXISTS customer (
    `customerID` INT,
    `customerName` VARCHAR(26) CHARACTER SET utf8,
    `contactLastName` VARCHAR(10) CHARACTER SET utf8,
    `contactFirstName` VARCHAR(6) CHARACTER SET utf8,
    `city` VARCHAR(9) CHARACTER SET utf8,
    `country` VARCHAR(9) CHARACTER SET utf8,
    `createDate` DATETIME
);

INSERT INTO
    customer
VALUES
    (
        103,
        'Atelier graphique',
        'Schmitt',
        'Carine',
        'Nantes',
        'France',
        '2004-02-05 00:00:00'
    ),
    (
        112,
        'Signal Gift Stores',
        'King',
        'Jean',
        'Las Vegas',
        'USA',
        '2004-02-05 00:00:00'
    ),
    (
        114,
        'Australian Collectors, Co.',
        'Ferguson',
        'Peter',
        'Melbourne',
        'Australia',
        '2004-02-20 00:00:00'
    ),
    (
        119,
        'La Rochelle Gifts',
        'Labrune',
        'Janine',
        'Nantes',
        'France',
        '2004-02-05 00:00:00'
    ),
    (
        121,
        'Baane Mini Imports',
        'Bergulfsen',
        'Jonas',
        'Stavern',
        'Norway',
        '2004-02-05 00:00:00'
    );