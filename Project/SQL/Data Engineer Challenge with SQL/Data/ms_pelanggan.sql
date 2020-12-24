USE dqlab;

CREATE TABLE IF NOT EXISTS ms_pelanggan (
    `no_urut` INT,
    `kode_cabang` VARCHAR(13) CHARACTER SET utf8,
    `kode_pelanggan` VARCHAR(16) CHARACTER SET utf8,
    `nama_pelanggan` VARCHAR(21) CHARACTER SET utf8,
    `alamat` VARCHAR(45) CHARACTER SET utf8
);

INSERT INTO
    ms_pelanggan
VALUES
    (
        1,
        'jkt-001',
        'cust0001',
        'Eva Novianti, S.H.',
        'Vila Sempilan, No. 67'
    ),
    (
        2,
        'jkt-002',
        'cust0002',
        'Heidi Goh',
        'Ruko Sawit Permai 72 No. 1'
    ),
    (
        3,
        'jkt-001',
        'cust0003',
        'Unang Handoko',
        'Vila Sempilan No. 1'
    ),
    (
        4,
        'jkt-001',
        'cust0004',
        'Jokolono Sukarman',
        'Permata Intan Berkilau Residence, Blok C5-7'
    ),
    (
        5,
        'bdg-001',
        'cust0005',
        'Tommy Sinaga',
        'Avatar Village, Blok C8 No. 888'
    ),
    (
        6,
        'bdg-001',
        'cust0006',
        'Irwan Setianto',
        'Rukan Gunung Seribu, Blok O1 - No. 1'
    ),
    (
        7,
        'jkt-001',
        'cust0007',
        'Agus Cahyono',
        'Jalan Motivasi Tinggi, Blok F4 - No. 8'
    ),
    (
        8,
        'jkt-001',
        'cust0008',
        'Maria Sirait',
        'Cluster Akasia Residence, Blok AA No. 3'
    ),
    (
        9,
        'jkt-002',
        'cust0009',
        'Ir. Ita Nugraha',
        'Perumahan Sagitarius, Gang Kelapa No. 6'
    ),
    (
        10,
        'bdg-001',
        'cust0010',
        'Djoko Wardoyo, Drs.',
        'Bukit Pintar Data, Blok A1 No. 1'
    );