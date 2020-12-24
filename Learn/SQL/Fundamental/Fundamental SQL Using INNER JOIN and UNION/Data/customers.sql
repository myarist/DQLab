USE dqlab;

CREATE TABLE IF NOT EXISTS customers (
    `CustomerID` INT,
    `CustomerName` VARCHAR(17) CHARACTER SET utf8,
    `ContactName` VARCHAR(13) CHARACTER SET utf8,
    `Address` VARCHAR(13) CHARACTER SET utf8,
    `City` VARCHAR(10) CHARACTER SET utf8,
    `PostalCode` INT,
    `Country` VARCHAR(11) CHARACTER SET utf8
);

INSERT INTO
    customers
VALUES
    (
        1,
        'Fransiska Maria',
        'Maria',
        'Jl Sudirman',
        'Jakarta',
        14450,
        'Indonesia'
    ),
    (
        2,
        'Ana Helena',
        'Ana Helena',
        'Jl Madura',
        'Surabaya',
        5021,
        'Indonesia'
    ),
    (
        3,
        'Lily Subari',
        'Lili',
        'Jl Sumba',
        'Makassar',
        5023,
        'Indonesia'
    );