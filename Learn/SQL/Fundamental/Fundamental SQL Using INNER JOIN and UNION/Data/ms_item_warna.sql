USE dqlab;

CREATE TABLE IF NOT EXISTS ms_item_warna (
    `nama_barang` VARCHAR(15) CHARACTER SET utf8,
    `warna` VARCHAR(15) CHARACTER SET utf8
);

INSERT INTO
    ms_item_warna
VALUES
    ('apel', 'merah'),
    ('bayam', 'hijau'),
    ('daun bawang', 'hijau'),
    ('duku', 'kuning pekat'),
    ('durian', 'kuning'),
    ('gandum', 'coklat'),
    ('jambu air', 'merah'),
    ('jeruk', 'oranye');