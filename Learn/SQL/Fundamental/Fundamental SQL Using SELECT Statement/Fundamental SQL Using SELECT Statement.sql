USE dqlab;

-- Mengambil Seluruh Kolom dalam suatu Tabel
SELECT
    *
FROM
    ms_produk;

-- Mengambil Satu Kolom dari Tabel
SELECT
    nama_produk
FROM
    ms_produk;

-- Mengambil Lebih dari Satu Kolom dari Tabel
SELECT
    nama_produk,
    harga
FROM
    ms_produk;

-- Membatasi Pengambilan Jumlah Row Data
SELECT
    nama_produk,
    harga
FROM
    ms_produk
LIMIT
    5;

-- Penggunaan SELECT DISTINCT statement
SELECT
    DISTINCT nama_customer,
    alamat
FROM
    ms_pelanggan;

-- Menggunakan Prefix pada Nama Kolom
SELECT
    ms_produk.kode_produk
FROM
    ms_produk;

-- Menggunakan Alias pada Kolom
SELECT
    no_urut AS nomor,
    nama_produk AS nama
FROM
    ms_produk;

-- Menghilangkan Keyword 'AS'
SELECT
    no_urut nomor,
    nama_produk nama
FROM
    ms_produk;

-- Menggabungkan Prefix dan Alias
SELECT
    ms_produk.harga AS harga_jual
FROM
    ms_produk;

-- Menggunakan Alias pada Tabel
SELECT
    *
FROM
    ms_produk t2;

-- Prefix dengan Alias Tabel
SELECT
    t2.nama_produk,
    t2.harga
FROM
    ms_produk t2;

-- Menggunakan WHERE
SELECT
    *
FROM
    ms_produk
WHERE
    nama_produk = 'Tas Travel Organizer DQLab';

-- Menggunakan Operand OR
SELECT
    *
FROM
    ms_produk
WHERE
    nama_produk = 'Gantungan Kunci DQLab'
    OR nama_produk = 'Tas Travel Organizer DQLab'
    OR nama_produk = 'Flashdisk DQLab 64 GB';

-- Filter untuk Angka
SELECT
    *
FROM
    ms_produk
WHERE
    harga > 50000;

-- Menggunakan Operand AND
SELECT
    *
FROM
    ms_produk
WHERE
    nama_produk = 'Gantungan Kunci DQLab'
    AND harga < 50000;

-- Proyek dari Cabang A
SELECT
    kode_pelanggan,
    nama_produk,
    qty,
    harga,
    qty * harga AS total
FROM
    tr_penjualan
WHERE
    qty * harga >= 100000
ORDER BY
    total DESC;