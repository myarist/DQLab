USE dqlab;

CREATE TABLE IF NOT EXISTS tr_penjualan (
    `kode_transaksi` VARCHAR(7) CHARACTER SET utf8,
    `kode_pelanggan` VARCHAR(12) CHARACTER SET utf8,
    `no_urut` INT,
    `kode_produk` VARCHAR(7) CHARACTER SET utf8,
    `nama_produk` VARCHAR(31) CHARACTER SET utf8,
    `qty` INT,
    `harga` INT
);

INSERT INTO
    tr_penjualan
VALUES
    (
        'tr-001',
        'dqlabcust07',
        1,
        'prod-01',
        'Kotak Pensil DQLab',
        5,
        62500
    ),
    (
        'tr-001',
        'dqlabcust07',
        2,
        'prod-03',
        'Flash disk DQLab 32 GB',
        1,
        100000
    ),
    (
        'tr-001',
        'dqlabcust07',
        3,
        'prod-09',
        'Buku Planner Agenda DQLab',
        3,
        92000
    ),
    (
        'tr-001',
        'dqlabcust07',
        4,
        'prod-04',
        'Flashdisk DQLab 32 GB',
        3,
        40000
    ),
    (
        'tr-002',
        'dqlabcust01',
        1,
        'prod-03',
        'Gift Voucher DQLab 100rb',
        2,
        100000
    ),
    (
        'tr-002',
        'dqlabcust01',
        2,
        'prod-10',
        'Sticky Notes DQLab 500 sheets',
        4,
        55000
    ),
    (
        'tr-002',
        'dqlabcust01',
        3,
        'prod-07',
        'Tas Travel Organizer DQLab',
        1,
        48000
    ),
    (
        'tr-003',
        'dqlabcust03',
        1,
        'prod-02',
        'Flashdisk DQLab 64 GB',
        2,
        55000
    ),
    (
        'tr-004',
        'dqlabcust03',
        1,
        'prod-10',
        'Sticky Notes DQLab 500 sheets',
        5,
        55000
    ),
    (
        'tr-004',
        'dqlabcust03',
        2,
        'prod-04',
        'Flashdisk DQLab 32 GB',
        4,
        40000
    ),
    (
        'tr-005',
        'dqlabcust05',
        1,
        'prod-09',
        'Buku Planner Agenda DQLab',
        3,
        92000
    ),
    (
        'tr-005',
        'dqlabcust05',
        2,
        'prod-01',
        'Kotak Pensil DQLab',
        1,
        62500
    ),
    (
        'tr-005',
        'dqlabcust05',
        3,
        'prod-04',
        'Flashdisk DQLab 32 GB',
        2,
        40000
    ),
    (
        'tr-006',
        'dqlabcust02',
        1,
        'prod-05',
        'Gift Voucher DQLab 250rb',
        4,
        250000
    ),
    (
        'tr-006',
        'dqlabcust02',
        2,
        'prod-08',
        'Gantungan Kunci DQLab',
        2,
        15800
    );