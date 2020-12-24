USE dqlab;

CREATE TABLE IF NOT EXISTS tr_penjualan (
    `kode_transaksi` VARCHAR(16) CHARACTER SET utf8,
    `tanggal_transaksi` DATETIME,
    `kode_cabang` VARCHAR(13) CHARACTER SET utf8,
    `kode_pelanggan` VARCHAR(16) CHARACTER SET utf8,
    `no_urut` INT,
    `kode_prod` VARCHAR(11) CHARACTER SET utf8,
    `qty` INT,
    `harga` INT
);

INSERT INTO
    tr_penjualan
VALUES
    (
        'tr-0001',
        '2019-06-07 10:09:46',
        'jkt-001',
        'cust0007',
        1,
        'prod-01',
        5,
        62000
    ),
    (
        'tr-0001',
        '2019-06-07 10:09:46',
        'jkt-001',
        'cust0007',
        2,
        'prod-03',
        1,
        95000
    ),
    (
        'tr-0001',
        '2019-06-07 10:09:46',
        'jkt-001',
        'cust0007',
        3,
        'prod-09',
        3,
        93000
    ),
    (
        'tr-0001',
        '2019-06-07 10:09:46',
        'jkt-001',
        'cust0007',
        4,
        'prod-04',
        3,
        40000
    ),
    (
        'tr-0002',
        '2019-06-07 13:05:12',
        'jkt-001',
        'cust0001',
        1,
        'prod-03',
        2,
        95000
    ),
    (
        'tr-0002',
        '2019-06-07 13:05:12',
        'jkt-001',
        'cust0001',
        2,
        'prod-10',
        4,
        55000
    ),
    (
        'tr-0002',
        '2019-06-07 13:05:12',
        'jkt-001',
        'cust0001',
        3,
        'prod-07',
        1,
        48000
    ),
    (
        'tr-0003',
        '2019-06-08 22:09:46',
        'jkt-001',
        'cust0004',
        1,
        'prod-02',
        2,
        55000
    ),
    (
        'tr-0004',
        '2019-06-08 22:09:46',
        'jkt-001',
        'cust0004',
        1,
        'prod-10',
        5,
        55000
    ),
    (
        'tr-0004',
        '2019-06-08 22:09:46',
        'jkt-001',
        'cust0004',
        2,
        'prod-04',
        4,
        40000
    ),
    (
        'tr-0005',
        '2019-06-09 22:09:46',
        'jkt-001',
        'cust0003',
        1,
        'prod-09',
        3,
        92000
    ),
    (
        'tr-0005',
        '2019-06-09 22:09:46',
        'jkt-001',
        'cust0003',
        2,
        'prod-01',
        1,
        62500
    ),
    (
        'tr-0005',
        '2019-06-09 22:09:46',
        'jkt-001',
        'cust0003',
        3,
        'prod-04',
        2,
        41000
    ),
    (
        'tr-0006',
        '2019-06-09 22:09:46',
        'jkt-001',
        'cust0008',
        1,
        'prod-05',
        4,
        250000
    ),
    (
        'tr-0006',
        '2019-06-09 22:09:46',
        'jkt-001',
        'cust0008',
        2,
        'prod-08',
        2,
        15800
    );