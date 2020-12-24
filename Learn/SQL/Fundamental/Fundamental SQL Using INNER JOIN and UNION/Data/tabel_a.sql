USE dqlab;

CREATE TABLE IF NOT EXISTS tabel_a (
    `kode_transaksi` VARCHAR(16) CHARACTER SET utf8,
    `kode_pelanggan` VARCHAR(16) CHARACTER SET utf8,
    `no_urut` INT,
    `kode_produk` VARCHAR(13) CHARACTER SET utf8,
    `nama_produk` VARCHAR(31) CHARACTER SET utf8,
    `qty` INT,
    `harga` INT,
    `total` INT
);

INSERT INTO
    tabel_a
VALUES
    (
        'tr-001',
        'dqlabcust07',
        1,
        'prod-01',
        'Kotak Pensil DQLab',
        5,
        62500,
        312500
    ),
    (
        'tr-001',
        'dqlabcust07',
        2,
        'prod-03',
        'Flash disk DQLab 32 GB',
        1,
        100000,
        100000
    ),
    (
        'tr-001',
        'dqlabcust07',
        3,
        'prod-09',
        'Buku Planner Agenda DQLab',
        3,
        92000,
        276000
    ),
    (
        'tr-001',
        'dqlabcust07',
        4,
        'prod-04',
        'Flashdisk DQLab 32 GB',
        3,
        40000,
        120000
    ),
    (
        'tr-002',
        'dqlabcust01',
        1,
        'prod-03',
        'Gift Voucher DQLab 100rb',
        2,
        100000,
        200000
    ),
    (
        'tr-002',
        'dqlabcust01',
        2,
        'prod-10',
        'Sticky Notes DQLab 500 sheets',
        4,
        55000,
        220000
    ),
    (
        'tr-002',
        'dqlabcust01',
        3,
        'prod-07',
        'Tas Travel Organizer DQLab',
        1,
        48000,
        48000
    ),
    (
        'tr-003',
        'dqlabcust03',
        1,
        'prod-02',
        'Flashdisk DQLab 64 GB',
        2,
        55000,
        110000
    );