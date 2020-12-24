USE dqlab;

-- Tugas Praktek - Tabel
SELECT
    *
FROM
    ms_item_kategori;

SELECT
    *
FROM
    ms_item_warna;

-- Menggabungkan Tabel dengan Key Columns
SELECT
    *
FROM
    ms_item_kategori,
    ms_item_warna
WHERE
    nama_barang = nama_item;

-- Bagaimana jika urutan Tabel diubah?
SELECT
    *
FROM
    ms_item_warna,
    ms_item_kategori
WHERE
    nama_barang = nama_item;

-- Menggunakan Prefix Nama Tabel
SELECT
    ms_item_kategori.*,
    ms_item_warna.*
FROM
    ms_item_warna,
    ms_item_kategori
WHERE
    nama_barang = nama_item;

-- Penggabungan Tanpa Kondisi
SELECT
    *
FROM
    ms_item_kategori,
    ms_item_warna;

-- Tugas Praktek: Menggunakan INNER JOIN (1/3)
SELECT
    *
FROM
    ms_item_warna
    INNER JOIN ms_item_kategori ON ms_item_warna.nama_barang = ms_item_kategori.nama_item;

-- tabel tr_penjualan dan tabel ms_produk
SELECT
    *
FROM
    tr_penjualan;

SELECT
    *
FROM
    ms_produk;

-- Tugas Praktek: Menggunakan INNER JOIN (2/3)
SELECT
    *
FROM
    tr_penjualan
    INNER JOIN ms_produk ON tr_penjualan.kode_produk = ms_produk.kode_produk;

-- Tugas Praktek: Menggunakan INNER JOIN (3/3)
SELECT
    tr_penjualan.kode_transaksi,
    tr_penjualan.kode_pelanggan,
    tr_penjualan.kode_produk,
    ms_produk.nama_produk,
    ms_produk.harga,
    tr_penjualan.qty,
    ms_produk.harga * tr_penjualan.qty AS total
FROM
    tr_penjualan
    INNER JOIN ms_produk ON tr_penjualan.kode_produk = ms_produk.kode_produk;

-- Tabel yang Akan Digabungkan
SELECT
    *
FROM
    tabel_a;

SELECT
    *
FROM
    tabel_b;

-- Menggunakan UNION
SELECT
    *
FROM
    tabel_a
UNION
SELECT
    *
FROM
    tabel_b;

-- Menggunakan UNION dengan Klausa WHERE
SELECT
    *
FROM
    tabel_a
WHERE
    kode_pelanggan = 'dqlabcust03'
UNION
SELECT
    *
FROM
    tabel_b
WHERE
    kode_pelanggan = 'dqlabcust03';

-- Menggunakan UNION dan Menyelaraskan Kolom-Kolomnya
SELECT
    customername,
    contactname,
    city,
    postalcode
FROM
    customers
UNION
SELECT
    suppliername,
    contactname,
    city,
    postalcode
FROM
    suppliers;

-- Project INNER JOIN
SELECT
    DISTINCT ms_pelanggan.kode_pelanggan,
    ms_pelanggan.nama_customer,
    ms_pelanggan.alamat
FROM
    ms_pelanggan
    INNER JOIN tr_penjualan ON ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
WHERE
    tr_penjualan.nama_produk = 'Kotak Pensil DQLab'
    OR tr_penjualan.nama_produk = 'Flashdisk DQLab 32 GB'
    OR tr_penjualan.nama_produk = 'Sticky Notes DQLab 500 sheets';

-- Project UNION
SELECT
    nama_produk,
    kode_produk,
    harga
FROM
    ms_produk_1
WHERE
    harga < 100000
UNION
SELECT
    nama_produk,
    kode_produk,
    harga
FROM
    ms_produk_2
WHERE
    harga < 50000;