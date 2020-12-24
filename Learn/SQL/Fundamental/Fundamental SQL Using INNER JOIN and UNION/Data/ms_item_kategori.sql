USE dqlab;

CREATE TABLE IF NOT EXISTS ms_item_kategori (
    `nama_item` VARCHAR(15) CHARACTER SET utf8,
    `kategori` VARCHAR(15) CHARACTER SET utf8
);

INSERT INTO
    ms_item_kategori
VALUES
    ('bayam', 'sayuran'),
    ('belimbing', 'buah'),
    ('duku', 'buah'),
    ('durian', 'buah'),
    ('gandum', 'buah'),
    ('jamur', 'sayuran'),
    ('jambu air', 'buah'),
    ('jeruk', 'buah');