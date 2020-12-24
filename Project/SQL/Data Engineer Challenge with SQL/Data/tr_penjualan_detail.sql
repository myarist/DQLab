USE dqlab;

CREATE TABLE IF NOT EXISTS tr_penjualan_detail (
    `kode_transaksi` VARCHAR(16) CHARACTER SET utf8,
    `kode_produk` VARCHAR(13) CHARACTER SET utf8,
    `qty` INT,
    `harga_satuan` INT
);

INSERT INTO
    tr_penjualan_detail
VALUES
    ('tr-0001', 'prod-04', 3, 40000),
    ('tr-0001', 'prod-02', 1, 55000),
    ('tr-0002', 'prod-08', 2, 15800),
    ('tr-0003', 'prod-10', 1, 55000),
    ('tr-0004', 'prod-09', 1, 92000),
    ('tr-0005', 'prod-06', 1, 92500),
    ('tr-0006', 'prod-08', 2, 15800),
    ('tr-0007', 'prod-08', 2, 15800),
    ('tr-0008', 'prod-07', 1, 50000),
    ('tr-0009', 'prod-01', 2, 62500),
    ('tr-0010', 'prod-04', 3, 48000),
    ('tr-0010', 'prod-08', 1, 15800),
    ('tr-0010', 'prod-04', 1, 40000);