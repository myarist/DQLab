USE dqlab;

CREATE TABLE IF NOT EXISTS ms_produk_2 (
    `no_urut` INT,
    `kode_produk` VARCHAR(13) CHARACTER SET utf8,
    `nama_produk` VARCHAR(36) CHARACTER SET utf8,
    `harga` INT
);

INSERT INTO
    ms_produk_2
VALUES
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