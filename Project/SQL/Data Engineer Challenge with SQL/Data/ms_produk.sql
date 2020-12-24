USE dqlab;

CREATE TABLE IF NOT EXISTS ms_produk (
    `no_urut` INT,
    `kode_produk` VARCHAR(13) CHARACTER SET utf8,
    `nama_produk` VARCHAR(36) CHARACTER SET utf8,
    `harga` INT
);

INSERT INTO
    ms_produk
VALUES
    (
        1,
        'prod-01',
        'Kotak Pensil DQLab',
        62500
    ),
    (
        2,
        'prod-02',
        'Flashdisk DQLab 64 GB',
        55000
    ),
    (
        3,
        'prod-03',
        'Gift Voucher DQLab 100rb',
        100000
    ),
    (
        4,
        'prod-04',
        'Flashdisk DQLab 32 GB',
        40000
    ),
    (
        5,
        'prod-05',
        'Gift Voucher DQLab 250rb',
        250000
    ),
    (
        6,
        'prod-06',
        'Pulpen Multifunction + Laser DQLab',
        92500
    ),
    (
        7,
        'prod-07',
        'Tas Travel Organizer DQLab',
        48000
    ),
    (
        8,
        'prod-08',
        'Gantungan Kunci DQLab',
        15800
    ),
    (
        9,
        'prod-09',
        'Buku Planner Agenda DQLab',
        92000
    ),
    (
        10,
        'prod-10',
        'Sticky Notes DQLab 500 sheets',
        55000
    );