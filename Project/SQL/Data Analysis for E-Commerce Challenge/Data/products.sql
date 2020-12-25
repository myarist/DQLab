USE dqlab;

CREATE TABLE IF NOT EXISTS products (
    `product_id` INT,
    `desc_product` VARCHAR(73) CHARACTER SET utf8,
    `category` VARCHAR(21) CHARACTER SET utf8,
    `base_price` INT
);

INSERT INTO
    products
VALUES
    (1, 'OLIVIA KULOT OLV03', 'Pakaian Wanita', 110000),
    (2, 'BLANIK BLOUSE BL304', 'Pakaian Wanita', 100000),
    (
        3,
        'NEW DAY BY RIX DRESS ND01',
        'Pakaian Wanita',
        85000
    ),
    (4, 'BLANIK BLOUSE BL023', 'Pakaian Wanita', 85000),
    (5, 'BLANIK BLAZER BL031', 'Pakaian Wanita', 99000),
    (6, 'BLANIK KULOT BL309', 'Pakaian Wanita', 120000),
    (7, 'OLIVIA KULOT OLV02', 'Pakaian Wanita', 120000),
    (
        8,
        'NEW LIBERTY CELANA NL02',
        'Pakaian Wanita',
        100000
    ),
    (9, 'OLIVIA KULOT OLV01', 'Pakaian Wanita', 80000),
    (10, 'BLANIK BLOUSE BL093', 'Pakaian Wanita', 90000),
    (11, 'BLANIK BLOUSE BL496', 'Pakaian Wanita', 85000),
    (12, 'BLANIK BLOUSE BL496', 'Pakaian Wanita', 85000),
    (13, 'BLANIK BLOUSE BL023', 'Pakaian Wanita', 85000),
    (14, 'BLANIK BLOUSE BL072', 'Pakaian Wanita', 99000),
    (15, 'BLANIK CELANA BL007', 'Pakaian Wanita', 89000),
    (16, 'BLANIK BLOUSE BL083', 'Pakaian Wanita', 110000),
    (17, 'DUOCAI BLOUSE C02', 'Pakaian Wanita', 120000),
    (18, 'DUOCAI BLOUSE C01', 'Pakaian Wanita', 85000),
    (19, 'SHA-MIA KULOT KU01', 'Pakaian Wanita', 85000),
    (20, 'SHA-MIA KULOT KU03', 'Pakaian Wanita', 60000),
    (21, 'SHEW BLOUSE GOVINDA', 'Pakaian Wanita', 60000),
    (22, 'SHEW PANTS ASHLEY', 'Pakaian Wanita', 72000),
    (23, 'SHEW BLOUSE MELLY', 'Pakaian Wanita', 86000),
    (24, 'SHEW SKIRTS BREE', 'Pakaian Wanita', 72000),
    (25, 'SHEW BLOUSE SHIRLEY', 'Pakaian Wanita', 43000),
    (26, 'SHEW BLOUSE MELLY', 'Pakaian Wanita', 72000),
    (27, 'SHEW SHORT SIERRA', 'Pakaian Wanita', 72000),
    (28, 'SHEW SKIRTS BREE', 'Pakaian Wanita', 43000),
    (29, 'SHEW BLOUSE VIVIAN', 'Pakaian Wanita', 43000),
    (30, 'SHEW PANTS GELLA', 'Pakaian Wanita', 72000),
    (
        31,
        'ANNA FAITH LEGGING LARGE FLOWER',
        'Pakaian Wanita',
        43000
    ),
    (
        32,
        'ANNA FAITH LEGGING GLOSSY',
        'Pakaian Wanita',
        125000
    ),
    (
        33,
        'ANNA FAITH LEGGING LARGE FLOWER',
        'Pakaian Wanita',
        200000
    ),
    (
        34,
        'ANNA FAITH LEGGING GLOSSY',
        'Pakaian Wanita',
        125000
    ),
    (
        35,
        'ANNA FAITH LEGGING KELLY',
        'Pakaian Wanita',
        200000
    ),
    (
        36,
        'ANNA FAITH LEGGING GEOMETRIC',
        'Pakaian Wanita',
        200000
    ),
    (
        37,
        'ANNA FAITH LEGGING GLOSSY',
        'Pakaian Wanita',
        125000
    ),
    (
        38,
        'ANNA FAITH LEGGING LOVE',
        'Pakaian Wanita',
        200000
    ),
    (
        39,
        'ANNA FAITH LEGGING STRIPE',
        'Pakaian Wanita',
        225000
    ),
    (
        40,
        'ANNA FAITH LEGGING GEOMETRIC',
        'Pakaian Wanita',
        200000
    ),
    (
        41,
        'LEGGING WORLD JEGGING LW 11',
        'Pakaian Wanita',
        125000
    ),
    (
        42,
        'LEGGING WORLD JEGGING LW 10',
        'Pakaian Wanita',
        99000
    ),
    (
        43,
        'LEGGING WORLD JEGGING LW 01',
        'Pakaian Wanita',
        99000
    ),
    (
        44,
        'LEGGING WORLD JEGGING LW 04',
        'Pakaian Wanita',
        99000
    ),
    (
        45,
        'LEGGING WORLD JEGGING LW 05',
        'Pakaian Wanita',
        99000
    ),
    (
        46,
        'LEGGING WORLD JEGGING LW 02',
        'Pakaian Wanita',
        99000
    ),
    (
        47,
        'LEGGING WORLD JEGGING LW 03',
        'Pakaian Wanita',
        99000
    ),
    (
        48,
        'LEGGING WORLD JEGGING LW 07',
        'Pakaian Wanita',
        99000
    ),
    (
        49,
        'AL - FATH MANSET TANKTOP',
        'Pakaian Wanita',
        99000
    ),
    (
        50,
        'AL - FATH HIJAB SCARF GLITTER PINK',
        'Pakaian Muslim Wanita',
        125000
    ),
    (
        51,
        'AL - FATH CIPUT NINJA ANTEM',
        'Pakaian Muslim Wanita',
        75000
    ),
    (
        52,
        'AL - FATH SKIRT PATCH JEANS',
        'Pakaian Muslim Wanita',
        60000
    ),
    (
        53,
        'AL - FATH HIJAB SCARF GLITTER GREEN',
        'Pakaian Muslim Wanita',
        165000
    ),
    (
        54,
        'AL - FATH CIPUT NINJA JERSEY',
        'Pakaian Muslim Wanita',
        75000
    ),
    (
        55,
        'JED GO SAJADAH F1',
        'Pakaian Muslim Wanita',
        80000
    ),
    (
        56,
        'ANGGREK DASTER MIDI P11 J18 AC232',
        'Pakaian Muslim Wanita',
        65000
    ),
    (
        57,
        'PAJAMALOVERS DASTER FLOWERS',
        'Pakaian Tidur Wanita',
        67000
    ),
    (
        58,
        'PAJAMALOVERS BABYDOLL',
        'Pakaian Tidur Wanita',
        100000
    ),
    (
        59,
        'PAJAMALOVERS DASTER LEAF',
        'Pakaian Tidur Wanita',
        105000
    ),
    (
        60,
        'PAJAMALOVERS DASTER FLOWERS',
        'Pakaian Tidur Wanita',
        100000
    ),
    (
        61,
        'PAJAMALOVERS BABYDOLL LINE',
        'Pakaian Tidur Wanita',
        100000
    ),
    (
        62,
        'LARUNO DESIGN MASKER BATIK 37',
        'Pakaian Tidur Wanita',
        105000
    ),
    (
        63,
        'LARUNO DESIGN MASKER BATIK 16',
        'Aksesoris Wanita',
        23000
    ),
    (
        64,
        'LARUNO DESIGN MASKER BATIK 15',
        'Aksesoris Wanita',
        23000
    ),
    (
        65,
        'BATIK LUWES PUTERA MASKER MASKER BATIK 23',
        'Aksesoris Wanita',
        23000
    ),
    (
        66,
        'GAPURA BATIK CRAFT GELANG ETNIK GBC0076',
        'Aksesoris Wanita',
        2000
    ),
    (
        67,
        'QUEEN CEFA NECKLACE STONE BANDUL',
        'Aksesoris Wanita',
        7000
    ),
    (
        68,
        'QUEEN CEFA NECKLACE CHOCKER',
        'Aksesoris Wanita',
        45000
    ),
    (
        69,
        'QUEEN CEFA BRACELET LEATHER',
        'Aksesoris Wanita',
        45000
    ),
    (
        70,
        'QUEEN CEFA NECKLACE CIRCLE INSIDE',
        'Aksesoris Wanita',
        35000
    ),
    (
        71,
        'QUEEN CEFA BRACELET LEATHER',
        'Aksesoris Wanita',
        45000
    ),
    (
        72,
        'QUEEN CEFA NECKLACE FEMINIME',
        'Aksesoris Wanita',
        35000
    ),
    (
        73,
        'QUEEN CEFA BRACELET LEATHER',
        'Aksesoris Wanita',
        45000
    ),
    (
        74,
        'ANNA FAITH BRACELET DIAMOND',
        'Aksesoris Wanita',
        35000
    ),
    (
        75,
        'QUEEN CEFA NECKLACE CIRCLE',
        'Aksesoris Wanita',
        55000
    ),
    (
        76,
        'QUEEN CEFA BRACELET FANCY PEARL',
        'Aksesoris Wanita',
        45000
    ),
    (
        77,
        'QUEEN CEFA BRACELET CHOCKER',
        'Aksesoris Wanita',
        35000
    ),
    (
        78,
        'ANNA FAITH BRACELET ALPHABET',
        'Aksesoris Wanita',
        35000
    ),
    (
        79,
        'FON''BELT SHERMAN LOVE',
        'Aksesoris Wanita',
        55000
    ),
    (
        80,
        'Indomaret Sandal Eva Rubber No.42',
        'Aksesoris Wanita',
        99000
    ),
    (
        81,
        'Indomaret Kaos Oblong V-Neck Hitam Xl',
        'Pakaian Pria',
        47000
    ),
    (
        82,
        'Indomaret Kaos Oblong Round Neck Putih Xl',
        'Pakaian Pria',
        49000
    ),
    (
        83,
        'Indomaret Kaos Oblong V-Neck Putih M',
        'Pakaian Pria',
        44000
    ),
    (
        84,
        'Indomaret Kaos Oblong Round Neck Putih Medium',
        'Pakaian Pria',
        44000
    ),
    (
        85,
        'Indomaret Kaos Oblong V-Neck Hitam M',
        'Pakaian Pria',
        44000
    ),
    (
        86,
        'Indomaret Kaos Oblong V-Neck Putih Extralarge',
        'Pakaian Pria',
        49000
    ),
    (87, 'GTMAN SINGLET 302BB', 'Pakaian Pria', 44000),
    (88, 'GTMAN MINI BRIEF 703BM', 'Pakaian Pria', 43000),
    (
        89,
        'GTMAN SINGLET GTLX-SL-WH',
        'Pakaian Pria',
        83000
    ),
    (90, 'GTMAN SINGLET GTS01NEW', 'Pakaian Pria', 39000),
    (91, 'GTMAN SINGLET TSGVNEW', 'Pakaian Pria', 70000),
    (
        92,
        'Indomaret Kaos V-Neck Hitam Large',
        'Pakaian Pria',
        70000
    ),
    (
        93,
        'Indomaret Kaos Round Neck Putih L',
        'Pakaian Pria',
        49000
    ),
    (94, 'ALISAN SHIRT MOTIF', 'Pakaian Pria', 44000),
    (
        95,
        'PETER NATION SHIRT PN01',
        'Pakaian Pria',
        105000
    ),
    (
        96,
        'PETER NATION SHIRT PN02',
        'Pakaian Pria',
        149000
    ),
    (97, 'BLACK''S SHIRT BS04', 'Pakaian Pria', 149000),
    (98, 'DOSSENA SHIRT DS03', 'Pakaian Pria', 130000),
    (99, 'DOSSENA SHIRT DS01', 'Pakaian Pria', 85000),
    (
        100,
        'BOSS VERSINI SHIRT BV02',
        'Pakaian Pria',
        139000
    ),
    (
        101,
        'BOSS VERSINI SHIRT BV03',
        'Pakaian Pria',
        120000
    ),
    (102, 'BLACK''S SHIRT BS03', 'Pakaian Pria', 70000),
    (103, 'BLACK''S SHIRT BS06', 'Pakaian Pria', 130000),
    (
        104,
        'BOSS VERSINI SHIRT BV04',
        'Pakaian Pria',
        75000
    ),
    (105, 'BLACK''S SHIRT BS05', 'Pakaian Pria', 70000),
    (106, 'BLACK''S SHIRT BS01', 'Pakaian Pria', 75000),
    (
        107,
        'BOSS VERSINI SHIRT BV07',
        'Pakaian Pria',
        130000
    ),
    (108, 'DOSSENA SHIRT DS04', 'Pakaian Pria', 120000),
    (109, 'BLACK''S SHIRT BS02', 'Pakaian Pria', 139000),
    (110, 'COTTEN BAY SHIRT KF05', 'Pakaian Pria', 75000),
    (111, 'COTTEN BAY SHIRT KF03', 'Pakaian Pria', 75000),
    (
        112,
        'JERRY MOSS SHIRT KPA317',
        'Pakaian Pria',
        130000
    ),
    (
        113,
        'COTTEN BAY SHIRT KF01',
        'Pakaian Pria',
        159000
    ),
    (
        114,
        'COTTEN BAY SHIRT KF02',
        'Pakaian Pria',
        130000
    ),
    (
        115,
        'COTTEN BAY SHIRT KF05',
        'Pakaian Pria',
        130000
    ),
    (
        116,
        'JERRY MOSS SHIRT KPA269',
        'Pakaian Pria',
        75000
    ),
    (
        117,
        'JERRY MOSS SHIRT HC8095',
        'Pakaian Pria',
        109000
    ),
    (
        118,
        'COTTEN BAY SHIRT KF04',
        'Pakaian Pria',
        120000
    ),
    (
        119,
        'JERRY MOSS SHIRT HC8131',
        'Pakaian Pria',
        75000
    ),
    (
        120,
        'JERRY MOSS SHIRT KDA448',
        'Pakaian Pria',
        120000
    ),
    (
        121,
        'EMBA LONG PANT BS07B.2',
        'Pakaian Pria',
        149000
    ),
    (
        122,
        'EMBA LONG PANT BS08A.2',
        'Pakaian Pria',
        148000
    ),
    (123, 'EMBA SWEATER CELTIC', 'Pakaian Pria', 147000),
    (
        124,
        'EMBA LONG PANT TROYES',
        'Pakaian Pria',
        141000
    ),
    (
        125,
        'EMBA SHORT PANT PETTO TWO',
        'Pakaian Pria',
        164000
    ),
    (
        126,
        'EMBA LONG PANT DOFLAM',
        'Pakaian Pria',
        134000
    ),
    (127, 'EMBA LONG PANT SLAG', 'Pakaian Pria', 166000),
    (
        128,
        'EMBA SHORT SLEEVE SHIRT BRUCHIO',
        'Pakaian Pria',
        132000
    ),
    (
        129,
        'EMBA LONG PANT BS08.2',
        'Pakaian Pria',
        131000
    ),
    (
        130,
        'EMBA SHORT PANT CODE MODULE',
        'Pakaian Pria',
        164000
    ),
    (
        131,
        'EMBA LONG PANT BS08SB.2',
        'Pakaian Pria',
        132000
    ),
    (132, 'EMBA LONG PANT FM316', 'Pakaian Pria', 263000),
    (
        133,
        'EMBA LONG PANT RODENSI ONE',
        'Pakaian Pria',
        150000
    ),
    (134, 'EMBA LONG PANT FM316', 'Pakaian Pria', 147000),
    (
        135,
        'EMBA LONG PANT ZURICH',
        'Pakaian Pria',
        139000
    ),
    (136, 'EMBA LONG PANT FM327', 'Pakaian Pria', 141000),
    (
        137,
        'Indomaret Kaos Singlet Putih Xl',
        'Pakaian Pria',
        150000
    ),
    (
        138,
        'Indomaret Kaos Singlet Putih L',
        'Pakaian Pria',
        24000
    ),
    (
        139,
        'Indomaret Kaos Singlet Putih M',
        'Pakaian Pria',
        24000
    ),
    (
        140,
        'RIDER CELANA DEWASA SPANDEX ANTI BAKTERI R325BW',
        'Pakaian Pria',
        24000
    ),
    (
        141,
        'RIDER TSHIRT TANGGUNG R223BB',
        'Pakaian Pria',
        38000
    ),
    (142, 'RIDER TSHIRTS R223BWH', 'Pakaian Pria', 53000),
    (
        143,
        'RIDER CELANA SUPER RIDER 3IN1 R322B',
        'Pakaian Pria',
        63000
    ),
    (144, 'RIDER VEST R224BWH', 'Pakaian Pria', 51000),
    (
        145,
        'RIDER CELANA DEWASA SPANDEX 3IN1 R310BWMR',
        'Pakaian Pria',
        48000
    ),
    (
        146,
        'RIDER SINGLET DEWASA R123B',
        'Pakaian Pria',
        71000
    ),
    (
        147,
        'RIDER TANK TOP OBLONG R227BWH',
        'Pakaian Pria',
        40000
    ),
    (
        148,
        'RIDER KAOS V-NECK R223BWH',
        'Pakaian Pria',
        54000
    ),
    (149, 'RIDER V-NECK R222BP', 'Pakaian Pria', 63000),
    (
        150,
        'RIDER SPORT BRIEFS R762B',
        'Pakaian Pria',
        58000
    ),
    (
        151,
        'RIDER KAOS V-NECK R222BWH',
        'Pakaian Pria',
        71000
    ),
    (152, 'RIDER VEST R224BP', 'Pakaian Pria', 63000),
    (
        153,
        'RIDER CELANA DEWASA R125B',
        'Pakaian Pria',
        54000
    ),
    (
        154,
        'RIDER CELANA ACTIVE WEAR 3IN1 R317B',
        'Pakaian Pria',
        38000
    ),
    (
        155,
        'RIDER SINGLET KLASIK R126B',
        'Pakaian Pria',
        79000
    ),
    (
        156,
        'RIDER TANK TOP V-NECK R226BP',
        'Pakaian Pria',
        42000
    ),
    (
        157,
        'RIDER CELANA DEWASA R125BS',
        'Pakaian Pria',
        65000
    ),
    (
        158,
        'RIDER CELANA SPORT R333B',
        'Pakaian Pria',
        40000
    ),
    (
        159,
        'RIDER CELANA TANGGUNG SPANDEX 3IN1 R210BB',
        'Pakaian Pria',
        80000
    ),
    (
        160,
        'RIDER SINGLET DEWASA R123BS',
        'Pakaian Pria',
        61000
    ),
    (
        161,
        'RIDER SINGLET LIFESTYLE R228BP',
        'Pakaian Pria',
        43000
    ),
    (
        162,
        'RIDER CELANA SUPER RIDER R321B',
        'Pakaian Pria',
        54000
    ),
    (
        163,
        'RIDER CELANA DEWASA SPANDEX ANTI BAKTERI R325BW',
        'Pakaian Pria',
        49000
    ),
    (164, 'RIDER VEST R224BWH', 'Pakaian Pria', 38000),
    (
        165,
        'RIDER CELANA DEWASA SPANDEX 3IN1 R310BWBR',
        'Pakaian Pria',
        48000
    ),
    (
        166,
        'RIDER CELANA ACTIVE WEAR 3IN1 R315B',
        'Pakaian Pria',
        71000
    ),
    (
        167,
        'RIDER CELANA DEWASA SPANDEX ANTI BAKTERI R325BW',
        'Pakaian Pria',
        82000
    ),
    (
        168,
        'EMBA SHORT SLEEVE SHIRT LOI',
        'Pakaian Pria',
        38000
    ),
    (
        169,
        'EMBA SHORT SLEEVE SHIRT BRUCHIO',
        'Pakaian Pria',
        133000
    ),
    (
        170,
        'EMBA SHORT PANT INATH TWO',
        'Pakaian Pria',
        132000
    ),
    (
        171,
        'EMBA SHORT PANT INATH TWO',
        'Pakaian Pria',
        131000
    ),
    (
        172,
        'EMBA SHORT PANT INATH TWO',
        'Pakaian Pria',
        131000
    ),
    (
        173,
        'TRENDY SHIRT RAGLAN-01',
        'Pakaian Pria',
        131000
    ),
    (
        174,
        'TRENDY SHIRT RAGLAN-06',
        'Pakaian Pria',
        79000
    ),
    (175, 'VERCLINE SHIRT OV279', 'Pakaian Pria', 79000),
    (
        176,
        'TRENDY SHIRT RAGLAN-03',
        'Pakaian Pria',
        69000
    ),
    (177, 'EMBA LONG PANT FM327B', 'Pakaian Pria', 79000),
    (
        178,
        'D''veggie Sambal Tabur Daun Jeruk 40g',
        'Pakaian Pria',
        141000
    ),
    (
        179,
        'D''veggie Sambal Tabur Original 40g',
        'Bahan Makanan',
        10000
    ),
    (
        180,
        'D''veggie Sambal Tabur Rumput Laut 40g',
        'Bahan Makanan',
        10000
    ),
    (
        181,
        'Dua Belibis Saus Cabe 340Ml',
        'Bahan Makanan',
        10000
    ),
    (
        182,
        'Palmia Margarine Serbaguna 200G',
        'Bahan Makanan',
        13000
    ),
    (
        183,
        'Filma Margarine Bernutrisi 200G',
        'Bahan Makanan',
        3000
    ),
    (
        184,
        'Forvita Margarine 200G',
        'Bahan Makanan',
        3000
    ),
    (
        185,
        'Nutricake Instant Cake Brownies Cheese 230G',
        'Bahan Makanan',
        3000
    ),
    (
        186,
        'Nutricake Instant Cake Brownies Chocolate 230G',
        'Bahan Makanan',
        9000
    ),
    (
        187,
        'Lee Kum Kee Oyster Sauce (Saus Tiram) 145G',
        'Bahan Makanan',
        9000
    ),
    (
        188,
        'Maestro Thousand Island Salad Dressing 100G',
        'Bahan Makanan',
        11000
    ),
    (
        189,
        'Sasa Tepung Bakso Goreng 100G',
        'Bahan Makanan',
        3000
    ),
    (
        190,
        'Indofood Sambal Ekstra Pedas 335Ml',
        'Bahan Makanan',
        4000
    ),
    (
        191,
        'Indofood Sambal Pedas 335Ml',
        'Bahan Makanan',
        12000
    ),
    (
        192,
        'Meg Keju Serbaguna 180G',
        'Bahan Makanan',
        12000
    ),
    (
        193,
        'Kewpie Roasted Sesame Wijen Sangrai 200mL',
        'Bahan Makanan',
        10000
    ),
    (
        194,
        'Barco Minyak Goreng Refill 1000Ml',
        'Bahan Makanan',
        30000
    ),
    (
        195,
        'Abc Sambal Asli 275Ml',
        'Bahan Makanan',
        27000
    ),
    (
        196,
        'Abc Kecap Manis 275Ml',
        'Bahan Makanan',
        11000
    ),
    (197, 'Abc Sambal 335Ml', 'Bahan Makanan', 12000),
    (
        198,
        'Abc Sambal Extra Pedas 335Ml',
        'Bahan Makanan',
        13000
    ),
    (199, 'Abc Sambal 22X8ml', 'Bahan Makanan', 13000),
    (
        200,
        'Bimoli Minyak Goreng Special Refill 2000Ml',
        'Bahan Makanan',
        7000
    ),
    (
        201,
        'Kraft Cheese Single High Calcium 5''S Plain 83G',
        'Bahan Makanan',
        26000
    ),
    (
        202,
        'Kobe Bon Cabe Sambal Tabur Ikan Roa Level 15 40G',
        'Bahan Makanan',
        10000
    ),
    (
        203,
        'Kobe Bon Cabe Cabai Kering Berbumbu Original 50G',
        'Bahan Makanan',
        13000
    ),
    (
        204,
        'Kobe Bon Cabe Sambal Tabur Level 15 45G',
        'Bahan Makanan',
        9000
    ),
    (
        205,
        'Kobe Bon Cabe Sambal Tabur Level 30 40G',
        'Bahan Makanan',
        9000
    ),
    (
        206,
        'Sasa Sambal Extra Hot 24X9g',
        'Bahan Makanan',
        13000
    ),
    (
        207,
        'Blue Band Margarine Serbaguna 250G',
        'Bahan Makanan',
        6000
    ),
    (
        208,
        'Segitiga Biru Tepung Terigu 1000G',
        'Bahan Makanan',
        11000
    ),
    (
        209,
        'Maestro Mayonnaise 100G',
        'Bahan Makanan',
        9000
    ),
    (
        210,
        'Bimoli Minyak Goreng 5000Ml',
        'Bahan Makanan',
        4000
    ),
    (
        211,
        'Sasa Bumbu Masak 250G',
        'Bahan Makanan',
        64000
    ),
    (
        212,
        'Filma Minyak Goreng Refill 2000Ml',
        'Bahan Makanan',
        9000
    ),
    (
        213,
        'Tropical Minyak Goreng Refill 2000Ml',
        'Bahan Makanan',
        23000
    ),
    (
        214,
        'Tropical Minyak Goreng 2000Ml',
        'Bahan Makanan',
        23000
    ),
    (
        215,
        'Larisst Beras Kepala Super 5Kg',
        'Bahan Makanan',
        23000
    ),
    (
        216,
        'Indofood Kecap Refill Manis 520Ml',
        'Bahan Makanan',
        59000
    ),
    (
        217,
        'Fortune Minyak Goreng Refill 2000Ml',
        'Bahan Makanan',
        14000
    ),
    (
        218,
        'Sovia Minyak Goreng 2L',
        'Bahan Makanan',
        25000
    ),
    (
        219,
        'Sania Minyak Goreng Refill 2000Ml',
        'Bahan Makanan',
        24000
    ),
    (
        220,
        'Sania Beras Premium 5Kg',
        'Bahan Makanan',
        24000
    ),
    (
        221,
        'Indomaret Bawang Merah Goreng 60G',
        'Bahan Makanan',
        62000
    ),
    (
        222,
        'Indomaret Bumbu Kemiri Bulat 50G',
        'Bahan Makanan',
        23000
    ),
    (
        223,
        'Indomaret Bumbu Ketumbar Bulat 30G',
        'Bahan Makanan',
        4000
    ),
    (
        224,
        'Indomaret Bumbu Lada Putih Bulat 50G',
        'Bahan Makanan',
        3000
    ),
    (225, 'Indomaret Cuka 150Ml', 'Bahan Makanan', 16000),
    (226, 'Indomaret Garam 500G', 'Bahan Makanan', 4000),
    (
        227,
        'Indomaret Gula Batu 225G',
        'Bahan Makanan',
        5000
    ),
    (
        228,
        'Indomaret Gula Halus 250G',
        'Bahan Makanan',
        8000
    ),
    (
        229,
        'Indomaret Gula Merah 400G',
        'Bahan Makanan',
        6000
    ),
    (
        230,
        'Indomaret Gula Pasir Stick 30X8g',
        'Bahan Makanan',
        10000
    ),
    (
        231,
        'Indomaret Kacang Hijau 500G',
        'Bahan Makanan',
        7000
    ),
    (
        232,
        'Indomaret Ketan Hitam 500G',
        'Bahan Makanan',
        20000
    ),
    (
        233,
        'Indomaret Ketan Putih 500G',
        'Bahan Makanan',
        17000
    ),
    (
        234,
        'Indomaret Santan Kelapa 200Ml',
        'Bahan Makanan',
        14000
    ),
    (
        235,
        'Sasa Tepung Bakwan Spesial 250G',
        'Bahan Makanan',
        7000
    ),
    (
        236,
        'Sasa Tepung Bumbu Ala Kentucky 225G',
        'Bahan Makanan',
        6000
    ),
    (
        237,
        'Sasa Tepung Bumbu Serbaguna Hot Spicy 225G',
        'Bahan Makanan',
        6000
    ),
    (
        238,
        'Sasa Tepung Bumbu Serbaguna Original 225G',
        'Bahan Makanan',
        6000
    ),
    (
        239,
        'Sasa Tepung Goreng Pisang 225G',
        'Bahan Makanan',
        6000
    ),
    (240, 'Abc Kecap Asin 133Ml', 'Bahan Makanan', 6000),
    (241, 'Abc Kecap Manis 135Ml', 'Bahan Makanan', 3000),
    (
        242,
        'Abc Kecap Manis Reffil 520Ml',
        'Bahan Makanan',
        7000
    ),
    (
        243,
        'Abc Kecap Manis Refill 225Ml',
        'Bahan Makanan',
        19000
    ),
    (244, 'Abc Kecap Pedas 135Ml', 'Bahan Makanan', 8000),
    (245, 'Abc Sambal 135Ml', 'Bahan Makanan', 7000),
    (
        246,
        'Abc Sambal Extra Pedas 135Ml',
        'Bahan Makanan',
        6000
    ),
    (
        247,
        'Abc Sambal Terasi 180G',
        'Bahan Makanan',
        6000
    ),
    (
        248,
        'Abc Sardines Tomat 155G',
        'Bahan Makanan',
        20000
    ),
    (249, 'Abc Sauce Tomat 135Ml', 'Bahan Makanan', 9000),
    (
        250,
        'Agar Rasa Agar Agar Powder Coklat 22G',
        'Bahan Makanan',
        6000
    ),
    (
        251,
        'Ajinomoto Bumbu Masak 131G',
        'Bahan Makanan',
        5000
    ),
    (
        252,
        'Ajinomoto Bumbu Masak 250G',
        'Bahan Makanan',
        5000
    ),
    (
        253,
        'Ajinomoto Bumbu Nasi Goreng Sajiku Ayam 20G',
        'Bahan Makanan',
        10000
    ),
    (
        254,
        'Ajinomoto Bumbu Nasi Goreng Sajiku Pedas 20G',
        'Bahan Makanan',
        2000
    ),
    (
        255,
        'Ajinomoto Mayonnaise Mayumi 100G',
        'Bahan Makanan',
        2000
    ),
    (
        256,
        'Ajinomoto Penyedap Rasa Masako Ayam 100G',
        'Bahan Makanan',
        8000
    ),
    (
        257,
        'Ajinomoto Penyedap Rasa Masako Ayam 250G',
        'Bahan Makanan',
        4000
    ),
    (
        258,
        'Ajinomoto Penyedap Rasa Masako Sapi 100G',
        'Bahan Makanan',
        9000
    ),
    (
        259,
        'Ajinomoto Saus Rasa Mentega Saori 2X26ml',
        'Bahan Makanan',
        4000
    ),
    (
        260,
        'Ajinomoto Saus Tiram Saori 135Ml',
        'Bahan Makanan',
        5000
    ),
    (
        261,
        'Ajinomoto Tepung Bumbu Sajiku 250G',
        'Bahan Makanan',
        10000
    ),
    (
        262,
        'Ajinomoto Tepung Bumbu Sajiku Golden Crispy 200G',
        'Bahan Makanan',
        7000
    ),
    (
        263,
        'Bamboe Bumbu Instant Rawon 54G',
        'Bahan Makanan',
        7000
    ),
    (
        264,
        'Bamboe Bumbu Instant Soto Madura 40G',
        'Bahan Makanan',
        6000
    ),
    (
        265,
        'Bango Bumbu Mi Goreng Aceh 25G',
        'Bahan Makanan',
        6000
    ),
    (
        266,
        'Bango Bumbu Nasi Goreng Kambing 40G',
        'Bahan Makanan',
        6000
    ),
    (
        267,
        'Bango Bumbu Nasi Kuning Khas Manado 35G',
        'Bahan Makanan',
        6000
    ),
    (
        268,
        'Bango Bumbu Opor Ayam Khas Cepu 35G',
        'Bahan Makanan',
        6000
    ),
    (
        269,
        'Bango Bumbu Soto Betawi 45G',
        'Bahan Makanan',
        6000
    ),
    (
        270,
        'Bango Bumbu Tongseng Khas Solo 50G',
        'Bahan Makanan',
        6000
    ),
    (
        271,
        'Bango Kecap Manis 135Ml',
        'Bahan Makanan',
        6000
    ),
    (
        272,
        'Bango Kecap Manis 275Ml',
        'Bahan Makanan',
        9000
    ),
    (
        273,
        'Bango Kecap Manis 550Ml',
        'Bahan Makanan',
        19000
    ),
    (
        274,
        'Bango Kecap Manis Light 135Ml',
        'Bahan Makanan',
        23000
    ),
    (
        275,
        'Bango Kecap Manis Refill 220Ml',
        'Bahan Makanan',
        8000
    ),
    (
        276,
        'King''s Fisher Sarden Goreng Balado 425G',
        'Bahan Makanan',
        11000
    ),
    (
        277,
        'Abc Sardines Chili 155G',
        'Makanan Kaleng',
        24000
    ),
    (
        278,
        'Abc Sardines Chili 425G',
        'Makanan Kaleng',
        9000
    ),
    (
        279,
        'Abc Sardines Extra Pedas 425G',
        'Makanan Kaleng',
        22000
    ),
    (
        280,
        'Abc Sardines Tomat 425G',
        'Makanan Kaleng',
        22000
    ),
    (
        281,
        'Ayam Brand Baked Beans In Tomato Sauce 425g',
        'Makanan Kaleng',
        22000
    ),
    (
        282,
        'Ayam Brand Whole Kernel Corn In Water 425g',
        'Makanan Kaleng',
        16000
    ),
    (283, 'Botan Mackarel 155G', 'Makanan Kaleng', 13000),
    (284, 'Botan Mackarel 425G', 'Makanan Kaleng', 13000),
    (
        285,
        'Botan Sardines Premium In Tomato Sauce 155G',
        'Makanan Kaleng',
        32000
    ),
    (
        286,
        'Botan Sardines Premium In Tomato Sauce 425G',
        'Makanan Kaleng',
        9000
    ),
    (
        287,
        'Cip Corned Beef 198G',
        'Makanan Kaleng',
        22000
    ),
    (
        288,
        'Fiesta Mackerel In Chili Sauce 425G',
        'Makanan Kaleng',
        21000
    ),
    (
        289,
        'Gaga Sardines Chili & Tomato 155G',
        'Makanan Kaleng',
        19000
    ),
    (
        290,
        'Gaga Sardines Tomat & Chilli 425G',
        'Makanan Kaleng',
        8000
    ),
    (
        291,
        'King''s Fisher Sarden Goreng Balado 155G',
        'Makanan Kaleng',
        21000
    ),
    (
        292,
        'Maya Sardine In Tomato Sauce 155G',
        'Makanan Kaleng',
        11000
    ),
    (
        293,
        'Maya Sardines In Tomato Sauce 425G',
        'Makanan Kaleng',
        8000
    ),
    (
        294,
        'Pronas Corned Beef 198G',
        'Makanan Kaleng',
        19000
    ),
    (
        295,
        'Pronas Corned Beef 340G',
        'Makanan Kaleng',
        22000
    ),
    (
        296,
        'Pronas Corned Beef Classic 50G',
        'Makanan Kaleng',
        31000
    ),
    (
        297,
        'Pronas Corned Beef Kornetku 200G',
        'Makanan Kaleng',
        6000
    ),
    (
        298,
        'Indomaret Instant Cup Noodle Ayam Pedas 90G',
        'Makanan Kaleng',
        15000
    ),
    (
        299,
        'Indomaret Ufo Mi Goreng Ala Indonesia 88G',
        'Makanan Instan',
        4000
    ),
    (
        300,
        'Indomaret Ufo Mi Goreng Pedas 92G',
        'Makanan Instan',
        6000
    ),
    (
        301,
        'Delmonte Spaghetti Sauce 250G',
        'Makanan Instan',
        6000
    ),
    (
        302,
        'Sedaap Mie Instant Goreng Ayam Istimewa 92G',
        'Makanan Instan',
        7000
    ),
    (
        303,
        'Sedaap Mie Instant Goreng Ayam Krispi 88G',
        'Makanan Instan',
        2000
    ),
    (
        304,
        'Sedaap Mie Instant Sambal Goreng 88G',
        'Makanan Instan',
        2000
    ),
    (
        305,
        'Sedaap Mie Instant Ayam Bawang 70G',
        'Makanan Instan',
        2000
    ),
    (
        306,
        'Sedaap Mie Instant Ayam Bwg Telur 73G',
        'Makanan Instan',
        2000
    ),
    (
        307,
        'Sedaap Mie Instant Ayam Spesial 69G',
        'Makanan Instan',
        2000
    ),
    (
        308,
        'Indomaret Abon Sapi 100G',
        'Makanan Instan',
        2000
    ),
    (
        309,
        'Sedaap Mie Instant Soto 5X75g',
        'Makanan Instan',
        9000
    ),
    (
        310,
        'Sedaap Mie Instant Goreng 5X90g',
        'Makanan Instan',
        12000
    ),
    (
        311,
        'Indomie Instant Soto Mie 70G',
        'Makanan Instan',
        12000
    ),
    (
        312,
        'Indomie Mie Goreng Aceh 90G',
        'Makanan Instan',
        2000
    ),
    (
        313,
        'Indomie Mie Goreng Ayam Geprek 85G',
        'Makanan Instan',
        2000
    ),
    (
        314,
        'Indomie Mie Instant Ayam Bawang 69G',
        'Makanan Instan',
        2000
    ),
    (
        315,
        'Indomie Mie Instant Kaldu Ayam 65G',
        'Makanan Instan',
        2000
    ),
    (
        316,
        'Indomie Mie Instant Soto Lamongan 80G',
        'Makanan Instan',
        2000
    ),
    (
        317,
        'Indomie Mie Instant Soto Padang 75G',
        'Makanan Instan',
        2000
    ),
    (
        318,
        ' Indomie Mie Instant Soto Spesial 75G',
        'Makanan Instan',
        2000
    ),
    (
        319,
        'Sedaap Mie Instant Ayam Bawang Telur 77G',
        'Makanan Instan',
        2000
    ),
    (
        320,
        'Sedaap Mie Instant Baso 72G',
        'Makanan Instan',
        4000
    ),
    (
        321,
        'Sedaap Mie Instant Goreng 83G',
        'Makanan Instan',
        4000
    ),
    (
        322,
        'Sedaap Mie Instant Kari Special 79G',
        'Makanan Instan',
        4000
    ),
    (
        323,
        'Sedaap Mie Instant Korean Spicy Chicken 81G',
        'Makanan Instan',
        4000
    ),
    (
        324,
        'Sedaap Mie Instant Korean Spicy Soup 75G',
        'Makanan Instan',
        4000
    ),
    (
        325,
        'Sedaap Mie Instant Soto 77G',
        'Makanan Instan',
        4000
    ),
    (
        326,
        'Supermi Mie Instant Ayam Bawang 70G',
        'Makanan Instan',
        4000
    ),
    (
        327,
        '3 Ayam Mie Telor Super Kuning 200G',
        'Makanan Instan',
        2000
    ),
    (
        328,
        '3 Ayam Mie Telor Super Merah 200G',
        'Makanan Instan',
        4000
    ),
    (
        329,
        'Abc Mi Goreng Selera Pedas Aym Pedas Limau 80G',
        'Makanan Instan',
        4000
    ),
    (
        330,
        'Abc Mie Cup Selera Pedas Gulai Ayam Pedas 60G',
        'Makanan Instan',
        5000
    ),
    (
        331,
        'Abc Mie Goreng Selera Pedas Nampol Sapi Pedas 80g',
        'Makanan Instan',
        5000
    ),
    (
        332,
        'Abc Mie Rebus Selera Pedas Gulai Ayam Pedas 70G',
        'Makanan Instan',
        2000
    ),
    (
        333,
        'Ajinomoto Mie Instant Yum Yum Tomyum Udang 70G',
        'Makanan Instan',
        2000
    ),
    (
        334,
        'Atom Bulan Mie Telur 200G',
        'Makanan Instan',
        4000
    ),
    (
        335,
        'Bakmi Mewah Bakmi Instant Daging Ayam 110G',
        'Makanan Instan',
        6000
    ),
    (
        336,
        'Bakmi Mewah Bakmi Instant Sambal Matah 139G',
        'Makanan Instan',
        8000
    ),
    (
        337,
        'Bakmi Mewah Bakmi Instant Sop Buntut 122G',
        'Makanan Instan',
        11000
    ),
    (
        338,
        'Bihun Jagung Bihun Cap Tanam Jagung 320G',
        'Makanan Instan',
        11000
    ),
    (
        339,
        'Bihunku Bihun Goreng Special Pedas 60G',
        'Makanan Instan',
        8000
    ),
    (
        340,
        'Bihunku Bihun Instant Soto Spesial 55G',
        'Makanan Instan',
        3000
    ),
    (
        341,
        'Burung Dara Mie Kering Pipih 140G',
        'Makanan Instan',
        3000
    ),
    (
        342,
        'Burung Dara Mie Telur Urai Original 140G',
        'Makanan Instan',
        3000
    ),
    (
        343,
        'Burung Dara Mie Telur Urai Pipih 140G',
        'Makanan Instan',
        4000
    ),
    (
        344,
        'Gaga Mie Goreng 100 Extra Pedas Jalapeno 85G',
        'Makanan Instan',
        4000
    ),
    (
        345,
        'Gaga Mie Instant 100 Extra Pedas Kuah Jalapeno 75G',
        'Makanan Instan',
        3000
    ),
    (
        346,
        'Honig Macaroni Elbow 200G',
        'Makanan Instan',
        2000
    ),
    (
        347,
        'Indomie Goreng Jumbo Ayam Panggang 128G',
        'Makanan Instan',
        10000
    ),
    (
        348,
        'Indomie Goreng Jumbo Special 129G',
        'Makanan Instan',
        3000
    ),
    (
        349,
        'Indomie Goreng Pedas 80G',
        'Makanan Instan',
        3000
    ),
    (
        350,
        'Indomie Mi Keriting Ayam Panggang 90G',
        'Makanan Instan',
        2000
    ),
    (
        351,
        'Indomie Mi Keriting Goreng Special 90G',
        'Makanan Instan',
        3000
    ),
    (
        352,
        'Indomie Mie Goreng Cabe Ijo 85G',
        'Makanan Instan',
        3000
    ),
    (
        353,
        'Indomie Mie Goreng Chitato 100G',
        'Makanan Instan',
        2000
    ),
    (
        354,
        'Indomie Mie Goreng Iga Penyet 80G',
        'Makanan Instan',
        5000
    ),
    (
        355,
        'Indomie Mie Goreng Keriting Real Meat Ayam Jamur 100G',
        'Makanan Instan',
        2000
    ),
    (
        356,
        'Indomie Mie Goreng Keriting Real Meat Ayam Lada 100G',
        'Makanan Instan',
        4000
    ),
    (
        357,
        'Indomie Mie Goreng Plus Special 85G',
        'Makanan Instan',
        4000
    ),
    (
        358,
        'Indomie Mie Goreng Rendang 91G',
        'Makanan Instan',
        2000
    ),
    (
        359,
        'Indomie Mie Goreng Rica Rica 85G',
        'Makanan Instan',
        2000
    ),
    (
        360,
        'Indomie Mie Goreng Sambal Matah 85G',
        'Makanan Instan',
        2000
    ),
    (
        361,
        'Indomie Mie Instan Hypeabis Seblak Hot Jeletot 10x75g',
        'Makanan Instan',
        2000
    ),
    (
        362,
        'Indomie Mie Instant Ayam Special 68G',
        'Makanan Instan',
        25000
    ),
    (
        363,
        'Indomie Mie Instant Bhineka Indonesia 5''S',
        'Makanan Instan',
        2000
    ),
    (
        364,
        'Indomie Mie Instant Hype Seblak Hot Jleto 75G',
        'Makanan Instan',
        12000
    ),
    (
        365,
        'Indomie Mie Instant Kari Ayam 72G',
        'Makanan Instan',
        2000
    ),
    (
        366,
        'Indomie Mie Keriting Goreng Telur Asin 100G',
        'Makanan Instan',
        2000
    ),
    (
        367,
        'Kimbo Kitchen Bubur Instant Ayam 250G',
        'Makanan Instan',
        4000
    ),
    (
        368,
        'Kimbo Kitchen Bubur Instant Sapi 250G',
        'Makanan Instan',
        8000
    ),
    (
        369,
        'Kobe Mie Goreng Boncabe Level 15 105G',
        'Makanan Instan',
        8000
    ),
    (
        370,
        'La Fonte Fettuccine 225G',
        'Makanan Instan',
        4000
    ),
    (
        371,
        'La Fonte Makaroni Pazto Instant Keju 63G',
        'Makanan Instan',
        8000
    ),
    (
        372,
        'La Fonte Pasta Sauce Chkn Bolognese 290G',
        'Makanan Instan',
        5000
    ),
    (
        373,
        'La Fonte Spaghetti (11) 450G',
        'Makanan Instan',
        19000
    ),
    (
        374,
        'La Fonte Spaghetti 225G',
        'Makanan Instan',
        15000
    ),
    (
        375,
        'La Fonte Spaghetti Instant Saus Ayam 117G',
        'Makanan Instan',
        8000
    ),
    (
        376,
        'La Fonte Spaghetti Instant Saus Bolognese 117G',
        'Makanan Instan',
        5000
    ),
    (
        377,
        'La Pasta Spaghetti Instant Cheese Bolognes 102g',
        'Makanan Instan',
        7000
    ),
    (
        378,
        'La Pasta Spaghetti Instant Cheese Bolognes 59G',
        'Makanan Instan',
        7000
    ),
    (
        379,
        'La Pasta Spaghetti Instant Hot & Spicy 90g',
        'Makanan Instan',
        4000
    ),
    (
        380,
        'La Pasta Spaghetti Instant Spicy Barbeque 57G',
        'Makanan Instan',
        7000
    ),
    (
        381,
        'Lemonilo Mie Instant Kuah Alami Ayam Bawang 70g',
        'Makanan Instan',
        4000
    ),
    (
        382,
        'Lemonilo Mie Instant Kuah Alami Kari Ayam 70g',
        'Makanan Instan',
        6000
    ),
    (
        383,
        'Nissin Instant Cup Noodles Kaldu Ayam 67g',
        'Makanan Instan',
        6000
    ),
    (
        384,
        'Nissin Instant Cup Noodles Kaldu Sapi 66g',
        'Makanan Instan',
        6000
    ),
    (
        385,
        'Nissin Mie Goreng Gekikara Ramen Pedas 120G',
        'Makanan Instan',
        6000
    ),
    (
        386,
        'Nissin Mie Goreng Gekikara Ramen Premium 120G',
        'Makanan Instan',
        6000
    ),
    (
        387,
        'Nissin Mie Instant Gekikara Ramen Pedas 120G',
        'Makanan Instan',
        9000
    ),
    (
        388,
        'Nissin Mikuya Ramen Ala Jepang Kaldu Ayam 83G',
        'Makanan Instan',
        6000
    ),
    (
        389,
        'Nong Shim Instant Noodle Shin Ramyun Spicy Mushroom 120G',
        'Makanan Instan',
        6000
    ),
    (
        390,
        'Nong Shim Instant Noodle Udon 120G',
        'Makanan Instan',
        12000
    ),
    (
        391,
        'Pop Mie Instan Ayam 75G',
        'Makanan Instan',
        12000
    ),
    (
        392,
        'Pop Mie Instan Baso 75G',
        'Makanan Instan',
        4000
    ),
    (
        393,
        'Pop Mie Instan Mini Baso Sapi 35G',
        'Makanan Instan',
        4000
    ),
    (
        394,
        'Pop Mie Mi Instan Ayam Bawang 75G',
        'Makanan Instan',
        3000
    ),
    (
        395,
        'Pop Mie Mi Instan Goreng Pedes Gledeek Ayam 75G',
        'Makanan Instan',
        4000
    ),
    (
        396,
        'Pop Mie Mi Instan Mini Ayam Bawang 35G',
        'Makanan Instan',
        5000
    ),
    (
        397,
        'Pop Mie Mi Instan Mini Soto Mie 35G',
        'Makanan Instan',
        3000
    ),
    (
        398,
        'Pop Mie Mi Instan Pedas Dower Ayam 75G',
        'Makanan Instan',
        3000
    ),
    (
        399,
        'Pop Mie Mi Instan Soto Ayam 75G',
        'Makanan Instan',
        5000
    ),
    (400, 'Ratu Abon Sapi 100G', 'Makanan Instan', 4000),
    (
        401,
        'Royco Sup Krim Ayam 58G',
        'Makanan Instan',
        21000
    ),
    (
        402,
        'Royco Sup Krim Jagung 50G Pck',
        'Makanan Instan',
        8000
    ),
    (
        403,
        'Samyang Mie Instant Goreng Extreme 140G',
        'Makanan Instan',
        8000
    ),
    (
        404,
        'Samyang Mie Instant Goreng Pedas Ayam 105G',
        'Makanan Instan',
        20000
    ),
    (
        405,
        'Samyang Mie Instant Goreng Pedas Ayam 140G',
        'Makanan Instan',
        22000
    ),
    (
        406,
        'Samyang Mie Instant Goreng Pedas Ayam Carbonara 130G',
        'Makanan Instan',
        18000
    ),
    (
        407,
        'Sarimi Mie Goreng (Isi 2) Ayam Kecap 126G',
        'Makanan Instan',
        22000
    ),
    (
        408,
        'Sarimi Mie Goreng (Isi 2) Ikan Teri Pedas 125G',
        'Makanan Instan',
        3000
    ),
    (
        409,
        'Sarimi Mie Goreng Ayam Kremess 125G',
        'Makanan Instan',
        3000
    ),
    (
        410,
        'Sarimi Mie Instant (Isi 2) Tongseng Ayam 120G',
        'Makanan Instan',
        3000
    ),
    (
        411,
        'Sarimi Mie Instant Ayam Bawang 63G',
        'Makanan Instan',
        3000
    ),
    (
        412,
        'Sarimi Mie Instant Soto 113G',
        'Makanan Instan',
        2000
    ),
    (
        413,
        'Sedaap Mie Instant Baso Spesial 77G',
        'Makanan Instan',
        3000
    ),
    (
        414,
        'Sedaap Mie Instant Goreng 90G',
        'Makanan Instan',
        2000
    ),
    (
        415,
        'Sedaap Mie Instant Goreng Korean Spicy 87G',
        'Makanan Instan',
        2000
    ),
    (
        416,
        'Sedaap Mie Instant Kari Ayam 72G',
        'Makanan Instan',
        2000
    ),
    (
        417,
        'Sedaap Mie Instant Kari Spesial 75G',
        'Makanan Instan',
        2000
    ),
    (
        418,
        'Sedaap Mie Instant Soto 75G',
        'Makanan Instan',
        2000
    ),
    (
        419,
        'Sedaap Mie Instant White Curry 81G',
        'Makanan Instan',
        2000
    ),
    (
        420,
        'Sedaap Mie Mie Instant Korean Spicy Soup 77G',
        'Makanan Instan',
        2000
    ),
    (
        421,
        'Sedaap Mie Tasty Bakmi Ayam 129G',
        'Makanan Instan',
        2000
    ),
    (
        422,
        'Sedaap Mie Tasty Bakmi Ayam Geprek Matah 124G',
        'Makanan Instan',
        5000
    ),
    (
        423,
        'Sukses''s Mie Goreng Isi 2 Ayam Kecap 129G',
        'Makanan Instan',
        5000
    ),
    (
        424,
        'Sukses''s Mie Goreng Isi 2 Ayam Kremes 133G',
        'Makanan Instan',
        3000
    ),
    (
        425,
        'Super Bihun Instant Kuah 70G',
        'Makanan Instan',
        3000
    ),
    (
        426,
        'Super Bubur Instant Bergizi Abon Sapi 49G',
        'Makanan Instan',
        4000
    ),
    (
        427,
        'Super Bubur Instant Bergizi Ayam 45G',
        'Makanan Instan',
        3000
    ),
    (
        428,
        'Supermi Mie Goreng Extra Ayam Pangsit 110G',
        'Makanan Instan',
        3000
    ),
    (
        429,
        'Supermi Mie Instant Extra Soto Daging 100G',
        'Makanan Instan',
        2000
    ),
    (
        430,
        'Ufo Instant Cup Noodles Kari Pedas 100G',
        'Makanan Instan',
        2000
    ),
    (
        431,
        'Pepsodent Action 123 Pasta Gigi Herbal 190G',
        'Makanan Instan',
        8000
    ),
    (
        432,
        'Ciptadent Pasta Gigi Herbal Anti Bakteri 190G',
        'Kebersihan Diri',
        12000
    ),
    (
        433,
        'Formula Pasta Gigi Aksi Action Protector 190G',
        'Kebersihan Diri',
        10000
    ),
    (
        434,
        'Resik-V Pembersih Kewanitaan Whitening Manjakani 90Ml',
        'Kebersihan Diri',
        7000
    ),
    (
        435,
        'Charm Pembalut Wanita Body Fit 8''S Night Wing 42Cm',
        'Kebersihan Diri',
        15000
    ),
    (
        436,
        'Kotex Panty Liners Daun Sirih 32''S Longer & Wider 18Cm',
        'Kebersihan Diri',
        16000
    ),
    (
        437,
        'Kotex Panty Liners 20''S Fresh Unscented 15.5Cm',
        'Kebersihan Diri',
        13000
    ),
    (
        438,
        'Charm Pembalut Wanita Safe Night 10''S Wing 29Cm',
        'Kebersihan Diri',
        6000
    ),
    (
        439,
        'Charm Pembalut Extra Comfort 16''S Maxi Wing 26Cm',
        'Kebersihan Diri',
        7000
    ),
    (
        440,
        'Softex Celana Menstruasi 2''S',
        'Kebersihan Diri',
        14000
    ),
    (
        441,
        'Charm Pembalut Wnt Bf Spr Comfort 12 Night Wing 35 Cm',
        'Kebersihan Diri',
        11000
    ),
    (
        442,
        'Charm Pembalut Wanita Safe Night 12''S Wing 35Cm',
        'Kebersihan Diri',
        16000
    ),
    (
        443,
        'Charm Pembalut Wanita Body Fit 10''S Extra Maxi Non Wing',
        'Kebersihan Diri',
        14000
    ),
    (
        444,
        'Fiesta Kondom 3''S Grape',
        'Kebersihan Diri',
        4000
    ),
    (
        445,
        'Charm Pembalut Extra Comfort 18S Maxi Wing 23Cm',
        'Kebersihan Diri',
        12000
    ),
    (
        446,
        'Oral B Sikat Gigi Micro-Thin Clean Extra Soft 40',
        'Kebersihan Diri',
        13000
    ),
    (
        447,
        'Charm Pembalut Wanita Body Fit 30''S Extra Maxi Wing',
        'Kebersihan Diri',
        8000
    ),
    (
        448,
        'Pepsodent Pasta Gigi White Limited Edition 160G',
        'Kebersihan Diri',
        16000
    ),
    (
        449,
        'Totalcare Mouthwash Anti Bakterial Cool Mint 250Ml',
        'Kebersihan Diri',
        9000
    ),
    (
        450,
        'Betadine Obat Kumur 190Ml',
        'Kebersihan Diri',
        16000
    ),
    (
        451,
        'Sutra Kondom Ok 12''S',
        'Kebersihan Diri',
        28000
    ),
    (
        452,
        'Sutra Kondom 12''S 0.02Mm',
        'Kebersihan Diri',
        33000
    ),
    (
        453,
        'Laurier Pembalut Wanita 12''S Relax Night 35Cm',
        'Kebersihan Diri',
        22000
    ),
    (
        454,
        'Laurier Pembalut Wanita 16''S Relax Night 30Cm',
        'Kebersihan Diri',
        15000
    ),
    (
        455,
        'Testpack Alat Tes Kehamilan',
        'Kebersihan Diri',
        15000
    ),
    (
        456,
        'Charm Pembalut Wnt Bf Spr/Comfort 20 Night Wing 29 Cm',
        'Kebersihan Diri',
        9000
    ),
    (
        457,
        'Sutra Kondom Ok 3''S',
        'Kebersihan Diri',
        16000
    ),
    (
        458,
        'Softex Panty Liners Ekstra Daun Sirih Non Perfume 50''S',
        'Kebersihan Diri',
        9000
    ),
    (
        459,
        'Laurier Pembalut Wanita Healthy Skin 9''S 22Cm',
        'Kebersihan Diri',
        13000
    ),
    (
        460,
        'Laurier Pembalut Wanita 10''S Slim Guard 22.5 Cm',
        'Kebersihan Diri',
        9000
    ),
    (
        461,
        'Laurier Pembalut Healthy Skin 6''S Night Wing 35Cm',
        'Kebersihan Diri',
        13000
    ),
    (
        462,
        'LIFREE POPOK PEREKAT 16''S LARGE',
        'Kebersihan Diri',
        11000
    ),
    (
        463,
        'LIFREE POPOK PEREKAT 18''S MEDIUM',
        'Kebersihan Diri',
        91000
    ),
    (
        464,
        'Laurier Pembalut Wanita Relax Night 8''S With Gathers Wing 35Cm',
        'Kebersihan Diri',
        91000
    ),
    (
        465,
        'LIFREE POPOK CELANA EXTRA 12''S EXTRALARGE',
        'Kebersihan Diri',
        15000
    ),
    (
        466,
        'LIFREE POPOK CELANA EXTRA 20''S MEDIUM',
        'Kebersihan Diri',
        152000
    ),
    (
        467,
        'Laurier Panty Liners 40''S Cleanfresh Non Parfumed',
        'Kebersihan Diri',
        152000
    ),
    (
        468,
        'Laurier Pembalut Wanita 6''S Relax Night 35Cm',
        'Kebersihan Diri',
        10000
    ),
    (
        469,
        'Laurier Pembalut Wanita 8''S Relax Night 30Cm',
        'Kebersihan Diri',
        8000
    ),
    (
        470,
        'Softex Pembalut Daun Sirih 12''S Slim Wing 36Cm',
        'Kebersihan Diri',
        8000
    ),
    (
        471,
        'Softex Panty Liners Daun Sirih 30''S Longer & Wider 18Cm',
        'Kebersihan Diri',
        17000
    ),
    (
        472,
        'Charm Pembalut Wanita Body Fit 10''S Extra Maxi Wing',
        'Kebersihan Diri',
        12000
    ),
    (
        473,
        'Softex Pembalut Wnt Daun Sirih 16''S Slim Wing 29Cm',
        'Kebersihan Diri',
        7000
    ),
    (
        474,
        'Softex Pembalut Daun Sirih 20''S Non Wing 23Cm',
        'Kebersihan Diri',
        17000
    ),
    (
        475,
        'Close Up Pasta Gigi Deep Action Menthol Fresh 110G',
        'Kebersihan Diri',
        13000
    ),
    (
        476,
        'Close Up Pasta Gigi Gel Green Gaga 160G',
        'Kebersihan Diri',
        13000
    ),
    (
        477,
        'Close Up Pasta Gigi Gel Green Menthol Fresh 65G',
        'Kebersihan Diri',
        16000
    ),
    (
        478,
        'Close Up Pasta Gigi Gel Red Hot 160G',
        'Kebersihan Diri',
        7000
    ),
    (
        479,
        'Close Up Pasta Gigi Icy White 160G',
        'Kebersihan Diri',
        15000
    ),
    (
        480,
        'Close Up Pasta Gigi White Attraction Natural Glow 100G',
        'Kebersihan Diri',
        22000
    ),
    (
        481,
        'Close Up White Attraction Pasta Gigi Natural Smile 170g',
        'Kebersihan Diri',
        15000
    ),
    (
        482,
        'Gillette Simply Venus 2''S Basic',
        'Kebersihan Diri',
        21000
    ),
    (
        483,
        'Indomaret Cling Wrap Plastik 30Mx30cm',
        'Kebersihan Diri',
        21000
    ),
    (
        484,
        'Indomaret Diapers Adult 6''S Leak Guard Extralarge Bag',
        'Kebersihan Diri',
        16000
    ),
    (
        485,
        'Indomaret Diapers Adult 7''S Leak Guard Large Bag',
        'Kebersihan Diri',
        43000
    ),
    (
        486,
        'Indomaret Diapers Adult 8''S Leak Guard Medium Bag',
        'Kebersihan Diri',
        43000
    ),
    (
        487,
        'Indomaret Masker Hijab 5''S',
        'Kebersihan Diri',
        43000
    ),
    (
        488,
        'Indomaret Masker Multifungsi 5''S Anti Bakteri',
        'Kebersihan Diri',
        11000
    ),
    (
        489,
        'Indomaret Sikat Gigi Charcoal 2''S Soft',
        'Kebersihan Diri',
        11000
    ),
    (
        490,
        'Indomaret Sikat Gigi Ultra Clean 3''S',
        'Kebersihan Diri',
        14000
    ),
    (
        491,
        'Indomaret Sikat Gigi Ultra Clean Medium',
        'Kebersihan Diri',
        10000
    ),
    (
        492,
        'Indomaret Sikat Gigi Ultra Sensitive 1''S Soft',
        'Kebersihan Diri',
        5000
    ),
    (
        493,
        'Indomaret Sikat Gigi Ultra Sensitive 3''S',
        'Kebersihan Diri',
        6000
    ),
    (
        494,
        'Lifree Popok Perekat 7''S Extralarge Bag',
        'Kebersihan Diri',
        15000
    ),
    (
        495,
        'Lifree Popok Perekat 8''S Large',
        'Kebersihan Diri',
        57000
    ),
    (
        496,
        'Lifree Popok Perekat 9''S Medium',
        'Kebersihan Diri',
        57000
    ),
    (
        497,
        'Pepsodent Action 123 Pasta Gigi Herbal 75G',
        'Kebersihan Diri',
        57000
    ),
    (
        498,
        'Pepsodent Action 123 Pasta Gigi Original 190G',
        'Kebersihan Diri',
        8000
    ),
    (
        499,
        'Pepsodent Bamboo Salt Sikat Gigi Soft Multipack (Isi 2)',
        'Kebersihan Diri',
        15000
    ),
    (
        500,
        'Pepsodent Double Care Clean Sikat Gigi Medium',
        'Kebersihan Diri',
        23000
    ),
    (
        501,
        'Pepsodent Pasta Gigi Action 123 Cengkeh 160G',
        'Kebersihan Diri',
        13000
    ),
    (
        502,
        'Pepsodent Pasta Gigi Action 123 Charcoal 160G',
        'Kebersihan Diri',
        19000
    ),
    (
        503,
        'Pepsodent Pasta Gigi Action 123 Siwak 150+40G',
        'Kebersihan Diri',
        19000
    ),
    (
        504,
        'Pepsodent Pasta Gigi Center Fresh 160G',
        'Kebersihan Diri',
        16000
    ),
    (
        505,
        'Pepsodent Pasta Gigi Fresh Cool Mint 190G',
        'Kebersihan Diri',
        19000
    ),
    (
        506,
        'Pepsodent Pasta Gigi Herbal 120G',
        'Kebersihan Diri',
        11000
    ),
    (
        507,
        'Pepsodent Pasta Gigi Sensitive Expert Original 100G',
        'Kebersihan Diri',
        13000
    ),
    (
        508,
        'Pepsodent Pasta Gigi Sensitive Expert Whitening 100G',
        'Kebersihan Diri',
        28000
    ),
    (
        509,
        'Pepsodent Pasta Gigi White 225G',
        'Kebersihan Diri',
        28000
    ),
    (
        510,
        'Pepsodent Pasta Gigi White Prm Valuepack 2X190g',
        'Kebersihan Diri',
        12000
    ),
    (
        511,
        'Pepsodent Pasta Gigi Whitening 190G',
        'Kebersihan Diri',
        18000
    ),
    (
        512,
        'Pepsodent Pasta Gigi Whitening 75G',
        'Kebersihan Diri',
        19000
    ),
    (
        513,
        'Pepsodent Pencegah Gigi Berlubang Pasta Gigi 190G',
        'Kebersihan Diri',
        8000
    ),
    (
        514,
        'Pepsodent Pencegah Gigi Berlubang Pasta Gigi 75G',
        'Kebersihan Diri',
        11000
    ),
    (
        515,
        'Pepsodent Sensitive Expert Pasta Gigi Fresh 100G',
        'Kebersihan Diri',
        4000
    ),
    (
        516,
        'Pepsodent Sikat Gigi Double Care 2+1 Senstive Mp3 Soft',
        'Kebersihan Diri',
        28000
    ),
    (
        517,
        'Pepsodent Sikat Gigi Double Care Clean Mp3',
        'Kebersihan Diri',
        27000
    ),
    (
        518,
        'Pepsodent Sikat Gigi Double Care Sensitive Single',
        'Kebersihan Diri',
        27000
    ),
    (
        519,
        'Pepsodent Sikat Gigi Natural Bamboo Soft',
        'Kebersihan Diri',
        13000
    ),
    (
        520,
        'Pepsodent Sikat Gigi Silver Charcoal Soft',
        'Kebersihan Diri',
        23000
    ),
    (
        521,
        'Pepsodent Sikat Gigi Triple Clean 3''S Medium',
        'Kebersihan Diri',
        15000
    ),
    (
        522,
        'Pepsodent Travel Kit',
        'Kebersihan Diri',
        11000
    ),
    (
        523,
        'Pepsodent Triple Clean Sikat Gigi Soft Multipack Isi 3',
        'Kebersihan Diri',
        15000
    ),
    (
        524,
        'Sensodyne Pasta Gigi Gentle Whiteng Tub 100G',
        'Kebersihan Diri',
        11000
    ),
    (
        525,
        'Softies Daily Masker 3Ply 5''S',
        'Kebersihan Diri',
        35000
    ),
    (
        526,
        'Bagus Masker Sehari-Hari 10''S W-21261',
        'Kebersihan Diri',
        10000
    ),
    (
        527,
        'Bagus Masker Sehari-Hari 50''S W-21262',
        'Kebersihan Diri',
        39000
    ),
    (
        528,
        'Eonmask Protective Cloth Mask Stopper',
        'Kebersihan Diri',
        199000
    ),
    (
        529,
        'Fit-U-Mask Masker Anak 5''S',
        'Kebersihan Diri',
        10000
    ),
    (
        530,
        'Fit-U-Mask Masker Hijab 5''S 3Ply',
        'Kebersihan Diri',
        9000
    ),
    (
        531,
        'Fit-U-Mask Masker Multifungsi 5''S 3Ply',
        'Kebersihan Diri',
        11000
    ),
    (
        532,
        'Formula Pasta Gigi + Sikat Gigi Sparkling White 190G',
        'Kebersihan Diri',
        11000
    ),
    (
        533,
        'Formula Pasta Gigi 3 Proteksi 225G',
        'Kebersihan Diri',
        14000
    ),
    (
        534,
        'Formula Pasta Gigi Twin Pack Strong Protector 2X160g',
        'Kebersihan Diri',
        12000
    ),
    (
        535,
        'Formula Sikat Gigi Discovery Promo 2+1 Extreme Clean',
        'Kebersihan Diri',
        19000
    ),
    (
        536,
        'Formula Sikat Gigi Flip Go',
        'Kebersihan Diri',
        24000
    ),
    (
        537,
        'Formula Sikat Gigi Flip Mobile Oral Care',
        'Kebersihan Diri',
        18000
    ),
    (
        538,
        'Formula Sikat Gigi Platinum Protector Disc Extreme Clean Soft',
        'Kebersihan Diri',
        14000
    ),
    (
        539,
        'Formula Sikat Gigi Platinum Protector Nano Charcoal Soft',
        'Kebersihan Diri',
        12000
    ),
    (
        540,
        'Formula Sikat Gigi Sihab 3''s Extra Soft',
        'Kebersihan Diri',
        14000
    ),
    (
        541,
        'Formula Sikat Gigi Silver Ptotector3''s Diamond Medium',
        'Kebersihan Diri',
        22000
    ),
    (
        542,
        'Formula Sikat Gigi Silver Ptotector3''s Ripple Soft',
        'Kebersihan Diri',
        10000
    ),
    (
        543,
        'Formula Sikat Gigi Sparkling White 2+1 Soft',
        'Kebersihan Diri',
        10000
    ),
    (
        544,
        'Formula Sikat Gigi Trendy 3''S Soft',
        'Kebersihan Diri',
        26000
    ),
    (
        545,
        'Frezza Antiseptic Mouthspray Regular 13mL',
        'Kebersihan Diri',
        10000
    ),
    (
        546,
        'Gt Man Masker Non Medical Isi 1 Pcs',
        'Kebersihan Diri',
        20000
    ),
    (
        547,
        'Jordan Floss Easy Slide 30m',
        'Kebersihan Diri',
        7000
    ),
    (
        548,
        'Kotex Pembalut Ultrathins 12''S Regular Wings 23cm',
        'Kebersihan Diri',
        34000
    ),
    (
        549,
        'La Vish Feminine Cleansing Wipes 10''s',
        'Kebersihan Diri',
        18000
    ),
    (
        550,
        'Lactacyd Daily Feminine Hygiene Herbal Clean & Nourish 60Ml',
        'Kebersihan Diri',
        12000
    ),
    (
        551,
        'Lactacyd Feminine Hygiene 250mL',
        'Kebersihan Diri',
        25000
    ),
    (
        552,
        'Lactacyd Feminine Hygiene 60Ml',
        'Kebersihan Diri',
        93000
    ),
    (
        553,
        'Laurier Panty Liners 20''S Cleanfresh Non Perfumed',
        'Kebersihan Diri',
        33000
    ),
    (
        554,
        'Laurier Pembalut 20''S Super Maxi 22Cm Pck',
        'Kebersihan Diri',
        6000
    ),
    (
        555,
        'Laurier Pembalut Wanita 10''S Super Maxi',
        'Kebersihan Diri',
        11000
    ),
    (
        556,
        'Laurier Pembalut Wanita 10''S Super Maxi Wing',
        'Kebersihan Diri',
        5000
    ),
    (
        557,
        'Laurier Pembalut Wanita 20''S Slim Guard 22.5Cm',
        'Kebersihan Diri',
        8000
    ),
    (
        558,
        'Laurier Pembalut Wanita 20''S Super Maxi Wing 22Cm',
        'Kebersihan Diri',
        28000
    ),
    (
        559,
        'Laurier Pembalut Wanita 30''S Super Maxi 22Cm',
        'Kebersihan Diri',
        15000
    ),
    (
        560,
        'Laurier Pembalut Wanita Double Comfort 18''S Wing 22Cm',
        'Kebersihan Diri',
        15000
    ),
    (
        561,
        'Listerine Mouthwash Antiseptic Cool Mint 100Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        562,
        'Listerine Mouthwash Antiseptic Cool Mint 250Ml',
        'Kebersihan Diri',
        10000
    ),
    (
        563,
        'Listerine Mouthwash Antiseptic Cool Mint 500Ml',
        'Kebersihan Diri',
        23000
    ),
    (
        564,
        'Listerine Mouthwash Antiseptic Freshburst 250Ml',
        'Kebersihan Diri',
        38000
    ),
    (
        565,
        'Listerine Mouthwash Antiseptic Natural Green Tea 100Ml',
        'Kebersihan Diri',
        23000
    ),
    (
        566,
        'Listerine Mouthwash Antiseptic Natural Green Tea 250Ml',
        'Kebersihan Diri',
        11000
    ),
    (
        567,
        'Listerine Mouthwash Antiseptic Siwak 250Ml',
        'Kebersihan Diri',
        27000
    ),
    (
        568,
        'Listerine Mouthwash Antiseptic Zero 250Ml',
        'Kebersihan Diri',
        27000
    ),
    (
        569,
        'Magic Power Antiseptic Wet Tissue 6''S Classic',
        'Kebersihan Diri',
        23000
    ),
    (
        570,
        'Nexcare Carbon Masker 2''S',
        'Kebersihan Diri',
        15000
    ),
    (
        571,
        'Nexcare Carbon Masker Hijab 2''S',
        'Kebersihan Diri',
        9000
    ),
    (
        572,
        'Okamoto Kondom 003 (2''S) Platinum',
        'Kebersihan Diri',
        9000
    ),
    (
        573,
        'Oral B Sikat Gigi All Rounder 123 3''S Clean Medium',
        'Kebersihan Diri',
        25000
    ),
    (
        574,
        'Plug Nasal Filter 2''S',
        'Kebersihan Diri',
        12000
    ),
    (
        575,
        'Ezy Vegie Ekstrak Buah & Sayur 5X10g',
        'Vitamin',
        7000
    ),
    (576, 'Om3heart Fish Oil 30''S', 'Vitamin', 31000),
    (
        577,
        'Extra Joss Minuman Kesehatan 6X4g',
        'Vitamin',
        5000
    ),
    (
        578,
        'Pharmaton Formula Tablet Multivitamin & Mineral Ekstrak Ginseng G115 5''S',
        'Vitamin',
        22000
    ),
    (
        579,
        'Joss C-1000 Suplemen Kesehatan 6''S',
        'Vitamin',
        7000
    ),
    (
        580,
        'Fitkom Tablet Hisap Multivitamin 21''S Grape',
        'Vitamin',
        11000
    ),
    (
        581,
        'Fitkom Tablet Hisap Multivitamin 21''S Strawberry',
        'Vitamin',
        11000
    ),
    (
        582,
        'Cerebrofort Marine Gummy Orange 20G',
        'Vitamin',
        10000
    ),
    (
        583,
        'Cerebrofort Marine Gummy Strawberry 20G',
        'Vitamin',
        10000
    ),
    (
        584,
        'Blackmores Bio Ace Excell 30''s',
        'Vitamin',
        165000
    ),
    (
        585,
        'Blackmores Bio C 1000mg 150''s',
        'Vitamin',
        365000
    ),
    (
        586,
        'Blackmores Bio C 1000mg 30''s',
        'Vitamin',
        95000
    ),
    (
        587,
        'Blackmores Calcimag Multi 60''s',
        'Vitamin',
        125000
    ),
    (
        588,
        'Blackmores Executive B 30''s',
        'Vitamin',
        125000
    ),
    (
        589,
        'Blackmores Flaxseed Oil 100''s',
        'Vitamin',
        220000
    ),
    (
        590,
        'Blackmores Glucosamine Sulfate 1500 90''s',
        'Vitamin',
        305000
    ),
    (
        591,
        'Blackmores Glucosamine Sulfate 30''s',
        'Vitamin',
        125000
    ),
    (
        592,
        'Blackmores Multivitamins + Minerals 30''s',
        'Vitamin',
        95000
    ),
    (
        593,
        'Blackmores Natural E 250IU 50''s',
        'Vitamin',
        139000
    ),
    (
        594,
        'Blackmores Odourless Fish Oil 1000 200''s',
        'Vitamin',
        263000
    ),
    (
        595,
        'Blackmores Odourless Fish Oil 30''s',
        'Vitamin',
        57000
    ),
    (
        596,
        'Blackmores Pregnancy & Breast-Feeding Gold 120''s',
        'Vitamin',
        295000
    ),
    (
        597,
        'Blackmores Pregnancy & Breast-Feeding Gold 60''s',
        'Vitamin',
        165000
    ),
    (
        598,
        'Blackmores Suplemen Coq10 75mg 30''s',
        'Vitamin',
        152000
    ),
    (
        599,
        'Blackmores Vitamin C 500 60''s',
        'Vitamin',
        97000
    ),
    (
        600,
        'Brand''s Essence Saripati Ayam + Cordyceps 70g',
        'Vitamin',
        30000
    ),
    (
        601,
        'Brand''s Essence Saripati Ayam 70g',
        'Vitamin',
        20000
    ),
    (
        602,
        'CDR Suplemen Makanan 10''s Fruit Punch',
        'Vitamin',
        41000
    ),
    (603, 'Cdr Vitamin C 10''S', 'Vitamin', 50000),
    (
        604,
        'Cdr Vitamin C Jeruk Mandarin 2''S',
        'Vitamin',
        10000
    ),
    (
        605,
        'Curcuma Plus Suplemen Makanan Emulsion Jeruk 200Ml',
        'Vitamin',
        29000
    ),
    (
        606,
        'Enervon-C Vitamin 30X1200mg',
        'Vitamin',
        41000
    ),
    (
        607,
        'Enervon-C Vitamin 4''S Tablet',
        'Vitamin',
        6000
    ),
    (
        608,
        'Ever E250 Suplemen Makanan 6''S Vit E 250 Iu',
        'Vitamin',
        18000
    ),
    (609, 'Fatigon Kapsul Vitamin 4''S', 'Vitamin', 4000),
    (
        610,
        'Fatigon Spirit Suplemen Penambah Tenaga 5''S',
        'Vitamin',
        8000
    ),
    (611, 'Hemaviton Cardio 10''S', 'Vitamin', 20000),
    (
        612,
        'Hemaviton Vitamin Action 5''S',
        'Vitamin',
        7000
    ),
    (
        613,
        'Hemaviton Vitamin For Stamina Plus 5''S',
        'Vitamin',
        7000
    ),
    (
        614,
        'Holisticare Vitamin C 30''S',
        'Vitamin',
        55000
    ),
    (
        615,
        'Holisticare Vitamin Super Ester C 4''S',
        'Vitamin',
        7000
    ),
    (
        616,
        'Holisticare Vitamin Super Ester C 90''S',
        'Vitamin',
        121000
    ),
    (
        617,
        'Imboost Tablet Untuk Daya Tahan Tubuh 4''S',
        'Vitamin',
        19000
    ),
    (
        618,
        'Madurasa Fitkidz Suplemen Makanan 140G',
        'Vitamin',
        21000
    ),
    (
        619,
        'Natur-E Capsul Vitamin E Alamiah 16''S',
        'Vitamin',
        21000
    ),
    (
        620,
        'Natur-E Vitamin E 300 Daily Nourishing 16''S',
        'Vitamin',
        40000
    ),
    (
        621,
        'Neo Rheumacyl Obat Anti Radang Neuro 10''S',
        'Vitamin',
        11000
    ),
    (
        622,
        'Neurobion Forte Vitamin Neurotropik 10''S',
        'Vitamin',
        41000
    ),
    (
        623,
        'Nourish Skin Advanced Skin Nutrition 15''S Pink',
        'Vitamin',
        134000
    ),
    (
        624,
        'Indomaret Nata De Coco Cocopandan 900G',
        'Fresh Food',
        12000
    ),
    (
        625,
        'So Good Chicken Nugget Alphabet 400G',
        'Fresh Food',
        51000
    ),
    (
        626,
        'So Good Chicken Nugget Original 400G',
        'Fresh Food',
        48000
    ),
    (
        627,
        'So Good Chicken Spicy Wing 400G',
        'Fresh Food',
        58000
    ),
    (
        628,
        'So Good Chicken Stick Premium 400G',
        'Fresh Food',
        56000
    ),
    (
        629,
        '808 Ampela Ayam Frozen 1Kg',
        'Fresh Food',
        30000
    ),
    (
        630,
        '808 Ampela Ayam Segar 1Kg',
        'Fresh Food',
        30000
    ),
    (
        631,
        '808 Ayam Frozen Dada 2Kg',
        'Fresh Food',
        92000
    ),
    (
        632,
        '808 Ayam Frozen Dada Boneless & Skinless 2Kg',
        'Fresh Food',
        130000
    ),
    (
        633,
        '808 Ayam Frozen Paha 2Kg',
        'Fresh Food',
        92000
    ),
    (
        634,
        '808 Ayam Frozen Sayap 2Kg',
        'Fresh Food',
        72000
    ),
    (
        635,
        '808 Ayam Frozen Utuh 700g',
        'Fresh Food',
        30000
    ),
    (
        636,
        '808 Ayam Frozen Utuh 800g',
        'Fresh Food',
        33000
    ),
    (
        637,
        '808 Ayam Frozen Utuh 900g',
        'Fresh Food',
        36000
    ),
    (638, '808 Ayam Segar Dada 2Kg', 'Fresh Food', 92000),
    (
        639,
        '808 Ayam Segar Dada Boneless & Skinless 2kg',
        'Fresh Food',
        130000
    ),
    (640, '808 Ayam Segar Paha 2Kg', 'Fresh Food', 92000),
    (
        641,
        '808 Ayam Segar Paha Boneless & Skinless 2Kg',
        'Fresh Food',
        130000
    ),
    (
        642,
        '808 Ayam Segar Sayap 2Kg',
        'Fresh Food',
        72000
    ),
    (
        643,
        '808 Ayam Segar Utuh 700g',
        'Fresh Food',
        33000
    ),
    (
        644,
        '808 Ayam Segar Utuh 800g',
        'Fresh Food',
        36000
    ),
    (
        645,
        '808 Ayam Segar Utuh 900g',
        'Fresh Food',
        39000
    ),
    (
        646,
        '808 Hati Ayam Frozen 1Kg',
        'Fresh Food',
        30000
    ),
    (647, '808 Hati Ayam Segar 1Kg', 'Fresh Food', 30000),
    (
        648,
        '808 Jantung Ayam Frozen 1Kg',
        'Fresh Food',
        30000
    ),
    (
        649,
        '808 Jantung Ayam Segar 1Kg',
        'Fresh Food',
        30000
    ),
    (650, 'Adib Dory Fillet 1Kg', 'Fresh Food', 62000),
    (
        651,
        'Alice Spring Ayam Dada Fillet 500g',
        'Fresh Food',
        41000
    ),
    (
        652,
        'Alice Spring Ayam Paha Fillet 500g',
        'Fresh Food',
        41000
    ),
    (
        653,
        'Alice Spring Ayam Utuh Broiler 1Kg',
        'Fresh Food',
        49000
    ),
    (
        654,
        'Alice Spring Cumi Ring 500g',
        'Fresh Food',
        63000
    ),
    (
        655,
        'Alice Spring Daging Bulgogi 500g',
        'Fresh Food',
        65000
    ),
    (
        656,
        'Alice Spring Daging Giling 500g',
        'Fresh Food',
        59000
    ),
    (
        657,
        'Alice Spring Daging Has Dalam 450g',
        'Fresh Food',
        87000
    ),
    (
        658,
        'Alice Spring Daging Iga 500g',
        'Fresh Food',
        59000
    ),
    (
        659,
        'Alice Spring Daging Rawon 500g',
        'Fresh Food',
        59000
    ),
    (
        660,
        'Alice Spring Daging Rendang Cut 500g',
        'Fresh Food',
        65000
    ),
    (
        661,
        'Alice Spring Daging Slice 500g',
        'Fresh Food',
        69000
    ),
    (
        662,
        'Alice Spring Dory Fillet 1Kg',
        'Fresh Food',
        63000
    ),
    (
        663,
        'Alice Spring Kikil Sapi 500g',
        'Fresh Food',
        55000
    ),
    (
        664,
        'Alice Spring Lidah Sapi Utuh 1kg',
        'Fresh Food',
        140000
    ),
    (
        665,
        'Alice Spring Salmon Fillet 500g',
        'Fresh Food',
        145000
    ),
    (
        666,
        'Alice Spring Tuna Steak Potong 500g',
        'Fresh Food',
        92000
    ),
    (
        667,
        'Alice Spring Udang Kupas 500g',
        'Fresh Food',
        68000
    ),
    (
        668,
        'Aroma Bakso Sapi Kecil 250g',
        'Fresh Food',
        41000
    ),
    (
        669,
        'Aroma Beef Cocktail 250g',
        'Fresh Food',
        37000
    ),
    (670, 'Aroma Beef Hot Dog 250g', 'Fresh Food', 35000),
    (
        671,
        'Aroma Chicken Sausage 250g',
        'Fresh Food',
        33000
    ),
    (
        672,
        'Aroma Pork Bratwurst 500g',
        'Fresh Food',
        75000
    ),
    (
        673,
        'Aroma Pork Frankfurter 250g',
        'Fresh Food',
        41000
    ),
    (
        674,
        'Best Chicken Bakso Ayam 500g',
        'Fresh Food',
        26000
    ),
    (
        675,
        'Best Chicken Premio Bolsis 500g',
        'Fresh Food',
        44000
    ),
    (
        676,
        'Best Chicken Premio Mini Bratwurst 500g',
        'Fresh Food',
        39000
    ),
    (
        677,
        'Best Chicken Premio Sosis Original 500g',
        'Fresh Food',
        39000
    ),
    (
        678,
        'Best Chicken Sosis Ayam 1Kg',
        'Fresh Food',
        43000
    ),
    (
        679,
        'Best Chicken Sosis Ayam 375g',
        'Fresh Food',
        17000
    ),
    (
        680,
        'Best Chicken Sosis Ayam 500g',
        'Fresh Food',
        22000
    ),
    (
        681,
        'Best Chicken Sosis Ayam Bon Bon 1Kg',
        'Fresh Food',
        37000
    ),
    (
        682,
        'Best Chicken Sosis Ayam Bon Bon 500g',
        'Fresh Food',
        20000
    ),
    (
        683,
        'Best Chicken Sosis Bcs 300g',
        'Fresh Food',
        14000
    ),
    (
        684,
        'Bonanza Daging Slice Gyudon 300g',
        'Fresh Food',
        55000
    ),
    (
        685,
        'Bonanza Daging Slice Shabu 300g',
        'Fresh Food',
        55000
    ),
    (
        686,
        'Etira Champignon Ball 400g',
        'Fresh Food',
        39000
    ),
    (687, 'Etira Nugget Jamur 400g', 'Fresh Food', 30000),
    (
        688,
        'Idolamu Ikan Olahan Stik Soki 500g',
        'Fresh Food',
        13000
    ),
    (
        689,
        'Ikan Cakalang Fufu 1/2 Gepe Vacum',
        'Fresh Food',
        35000
    ),
    (
        690,
        'Inaco Nata De Coco Crispy 1000G',
        'Fresh Food',
        20000
    ),
    (
        691,
        'Indomaret Nata De Coco Selasih Leci 200G',
        'Fresh Food',
        5000
    ),
    (
        692,
        'Indomaret Nata De Coco Selasih Strawberry 200G',
        'Fresh Food',
        5000
    ),
    (
        693,
        'Kanzler Beef Cocktail Sausage 500g',
        'Fresh Food',
        60000
    ),
    (
        694,
        'Kanzler Blackpepper Frankfurter Sausage 300g',
        'Fresh Food',
        45000
    ),
    (
        695,
        'Kanzler Bockwurst & Cheese Frankfurter 720g',
        'Fresh Food',
        104000
    ),
    (
        696,
        'Kanzler Bockwurst Sausage Klik 360g',
        'Fresh Food',
        50000
    ),
    (
        697,
        'Kanzler Cheese Cocktail 500g',
        'Fresh Food',
        54000
    ),
    (
        698,
        'Kanzler Cheese Frankfurter Sausage 360g',
        'Fresh Food',
        54000
    ),
    (
        699,
        'Kanzler Chicken Nugget & Cheese Frankfurter 720g',
        'Fresh Food',
        101000
    ),
    (
        700,
        'Kanzler Chicken Nugget Crispy 450g',
        'Fresh Food',
        51000
    ),
    (
        701,
        'Kanzler Chicken Nugget Premium 450g',
        'Fresh Food',
        47000
    ),
    (
        702,
        'Kanzler Double Bockwurst 720g',
        'Fresh Food',
        100000
    ),
    (
        703,
        'Kanzler Double Cheese Frankfurter 720g',
        'Fresh Food',
        108000
    ),
    (
        704,
        'Kanzler Double Chicken Nugget 720g',
        'Fresh Food',
        94000
    ),
    (
        705,
        'Kanzler Double Chicken Nugget Crispy 900g',
        'Fresh Food',
        102000
    ),
    (
        706,
        'Kanzler Frankfurter Cocktail 500g',
        'Fresh Food',
        52000
    ),
    (
        707,
        'Kanzler Garlic Frankfurter Sausage Klik 300g',
        'Fresh Food',
        44000
    ),
    (
        708,
        'Kimbo Sosis Lauk Mi Goreng Ayam Bakar 60G',
        'Fresh Food',
        5000
    ),
    (
        709,
        'Kimbo Sosis Lauk Mi Kuah Baso Sapi 60G',
        'Fresh Food',
        5000
    ),
    (
        710,
        'Mamiki Ayam Kampung Rempah',
        'Fresh Food',
        150000
    ),
    (
        711,
        'Mamiki Ayam Negeri Bumbu Rempah',
        'Fresh Food',
        80000
    ),
    (
        712,
        'Martindo Batam 2 Join Wings 1kg',
        'Fresh Food',
        38000
    ),
    (
        713,
        'Mlbi Seafood Udang Jerbung Fresh (40-50''s) Besar 500g',
        'Fresh Food',
        58000
    ),
    (
        714,
        'Mlbi Seafood Udang Windu/Bago/Pacet (8-10''s) 500g',
        'Fresh Food',
        105000
    ),
    (
        715,
        'Mom''s Recipe Pudding Tart Oval 10X20cm',
        'Fresh Food',
        110000
    ),
    (
        716,
        'Mom''s Recipe Pudding Tart Round 18cm',
        'Fresh Food',
        185000
    ),
    (
        717,
        'Mom''s Recipe Pudding Tart Round 20cm',
        'Fresh Food',
        230000
    ),
    (
        718,
        'Mom''s Recipe Pudding Tart Square 22X22cm',
        'Fresh Food',
        285000
    ),
    (
        719,
        'Mom''s Recipe Pudding Tart Square 24X24cm',
        'Fresh Food',
        325000
    ),
    (
        720,
        'Popso Siomay Bandung Family 700g',
        'Fresh Food',
        71000
    ),
    (
        721,
        'Sato Salmon California Roll',
        'Fresh Food',
        89000
    ),
    (
        722,
        'SK Ayam Broiler Utuh Frozen 800g',
        'Fresh Food',
        34000
    ),
    (
        723,
        'SK Dada Ayam Boneless Frozen 2Kg',
        'Fresh Food',
        125000
    ),
    (
        724,
        'SK Dada Ayam Fillet Fresh 2Kg',
        'Fresh Food',
        125000
    ),
    (
        725,
        'SK Paha Ayam Bonelles Frozen 2Kg',
        'Fresh Food',
        125000
    ),
    (
        726,
        'SK Paha Ayam Fillet Fresh 2Kg',
        'Fresh Food',
        125000
    ),
    (
        727,
        'So Good Ayam Utuh Potong 10 1Kg',
        'Fresh Food',
        37000
    ),
    (
        728,
        'So Good Bakso Kuah 8''S 120G',
        'Fresh Food',
        20000
    ),
    (
        729,
        'So Good Chicken Karage Original 200G',
        'Fresh Food',
        28000
    ),
    (
        730,
        'So Good Chicken Nugget Alphabet 200G',
        'Fresh Food',
        26000
    ),
    (
        731,
        'So Good Chicken Nugget Animal 200G',
        'Fresh Food',
        26000
    ),
    (
        732,
        'So Good Chicken Nugget Dino Bites Original 400G',
        'Fresh Food',
        51000
    ),
    (
        733,
        'So Good Chicken Stick Original 200G',
        'Fresh Food',
        25000
    ),
    (
        734,
        'So Good Fish Nugget 300G',
        'Fresh Food',
        40000
    ),
    (
        735,
        'So Good Paha & Dada Ayam Frozen 1Kg',
        'Fresh Food',
        41000
    ),
    (
        736,
        'So Good Paha & Dada Ayam Potong 450G',
        'Fresh Food',
        23000
    ),
    (
        737,
        'So Good Paha & Dada Ayam Potong Bumbu Kuning 450G',
        'Fresh Food',
        33000
    ),
    (
        738,
        'So Good Paha & Dada Ayam Potong Pedas Manis 450G',
        'Fresh Food',
        33000
    ),
    (
        739,
        'So Good Premium Sausage Original 300G',
        'Fresh Food',
        48000
    ),
    (
        740,
        'So Good Spicy Chicken Strip 250G',
        'Fresh Food',
        38000
    ),
    (
        741,
        'So Nice Chicken Nugget Sedaaap! 500G',
        'Fresh Food',
        38000
    ),
    (
        742,
        'So Nice Sosis Ayam Sedaaap 375G',
        'Fresh Food',
        19000
    ),
    (
        743,
        'Sozzis Sosis Ayam 3''S 75G',
        'Fresh Food',
        7000
    ),
    (
        744,
        'Sozzis Sosis Sapi 3''S 75G',
        'Fresh Food',
        8000
    ),
    (
        745,
        'Tora Duo Bakso Ayam 500g',
        'Fresh Food',
        19000
    ),
    (746, 'Tora Duo Sosis Ayam 1Kg', 'Fresh Food', 41000),
    (
        747,
        'Tora Duo Sosis Ayam 500g',
        'Fresh Food',
        22000
    ),
    (
        748,
        'Tora Duo Sosis Jumbo Blackpepper 500g',
        'Fresh Food',
        33000
    ),
    (
        749,
        'Tora Duo Sosis Jumbo Original 500g',
        'Fresh Food',
        33000
    ),
    (750, 'Vita Pudding Coklat 110G', 'Fresh Food', 5000),
    (
        751,
        'Vita Pudding Strawberry 120G',
        'Fresh Food',
        5000
    ),
    (
        752,
        'Wong Coco My Pudding Fruit Pure 168G',
        'Fresh Food',
        7000
    ),
    (
        753,
        'Wong Coco Pudding Coconut 120G',
        'Fresh Food',
        4000
    ),
    (
        754,
        'Wong Coco Pudding Guava 120G',
        'Fresh Food',
        4000
    ),
    (
        755,
        'Wong Coco Pudding Mango 120G',
        'Fresh Food',
        4000
    ),
    (
        756,
        'Wong Coco Sari Kelapa Cocopandan 235G',
        'Fresh Food',
        5000
    ),
    (
        757,
        'Wong Coco Sari Kelapa Cubes Cocopandan 1000G',
        'Fresh Food',
        17000
    ),
    (
        758,
        'Aquarius Minuman Isotonik 500Ml',
        'Minuman Ringan',
        3000
    ),
    (
        759,
        'Root Beer Soft Drink 250Ml',
        'Minuman Ringan',
        5000
    ),
    (
        760,
        'Red Bull Energy Drink 250Ml',
        'Minuman Ringan',
        15000
    ),
    (
        761,
        'Coca-Cola Soft Drink 1500Ml',
        'Minuman Ringan',
        11000
    ),
    (
        762,
        'Fanta Soft Drink Strawberry 1500Ml',
        'Minuman Ringan',
        11000
    ),
    (
        763,
        'Sprite Soft Drink 1500Ml',
        'Minuman Ringan',
        11000
    ),
    (
        764,
        'Hydro Coco Natural Health Drink 250Ml',
        'Minuman Ringan',
        5000
    ),
    (
        765,
        'Espe Larutan Penyegar Jambu 320Ml',
        'Minuman Ringan',
        19000
    ),
    (
        766,
        'Espe Larutan Penyegar Leci 320Ml',
        'Minuman Ringan',
        5000
    ),
    (
        767,
        'Espe Larutan Penyegar Orange 320Ml',
        'Minuman Ringan',
        5000
    ),
    (
        768,
        'Espe Larutan Penyegar Strawberry 320Ml',
        'Minuman Ringan',
        5000
    ),
    (
        769,
        'Tango Drink Velluto 250Ml',
        'Minuman Ringan',
        5000
    ),
    (
        770,
        'Cap Badak Larutan Penyegar Putih 500Ml',
        'Minuman Ringan',
        6000
    ),
    (
        771,
        'Pocari Sweat Soft Drink 330Ml',
        'Minuman Ringan',
        6000
    ),
    (
        772,
        'Coca-Cola Soft Drink 390Ml',
        'Minuman Ringan',
        4000
    ),
    (
        773,
        'Fanta Soft Drink Strawberry 390Ml',
        'Minuman Ringan',
        4000
    ),
    (
        774,
        'Sprite Soft Drink 390Ml',
        'Minuman Ringan',
        4000
    ),
    (
        775,
        'Adem Sari Ching Ku Herbal Tea 325Ml',
        'Minuman Ringan',
        6000
    ),
    (
        776,
        'Adem Sari Ching Ku Lemon 320Ml',
        'Minuman Ringan',
        6000
    ),
    (
        777,
        'Adem Sari Ching Ku Minuman Penyejuk 350Ml',
        'Minuman Ringan',
        6000
    ),
    (
        778,
        'Adem Sari Ching Ku Sparkling 320Ml',
        'Minuman Ringan',
        6000
    ),
    (
        779,
        'Bintang Soft Drink Radler 0.0% 330Ml',
        'Minuman Ringan',
        13000
    ),
    (
        780,
        'Coolant Cooling Mountain Water Extract Crysanthemum 350Ml',
        'Minuman Ringan',
        5000
    ),
    (
        781,
        'Coolant Cooling Mountain Water Extract Lychee 350Ml',
        'Minuman Ringan',
        5000
    ),
    (
        782,
        'Frestea Minuman Teh Lychee 500Ml',
        'Minuman Ringan',
        5000
    ),
    (
        783,
        'Green Sands Soft Drink Lemon & Grape 250Ml',
        'Minuman Ringan',
        6000
    ),
    (
        784,
        'Green Sands Soft Drink Lime & Lychee 250Ml',
        'Minuman Ringan',
        6000
    ),
    (
        785,
        'Green Sands Soft Drink Original Apel Jeruk 250Ml',
        'Minuman Ringan',
        6000
    ),
    (
        786,
        'Inaco I''m Coco Drink Leci 350Ml',
        'Minuman Ringan',
        7000
    ),
    (
        787,
        'Inaco I''m Coco Drink Mangga 350Ml',
        'Minuman Ringan',
        7000
    ),
    (
        788,
        'Indomaret Coconut Water 330Ml',
        'Minuman Ringan',
        7000
    ),
    (
        789,
        'Kaki Tiga Larutan Penyegar Jambu Biji 320Ml',
        'Minuman Ringan',
        6000
    ),
    (
        790,
        'Kaki Tiga Larutan Penyegar Jeruk Nipis 320Ml',
        'Minuman Ringan',
        6000
    ),
    (
        791,
        'Kaki Tiga Larutan Penyegar Leci 320Ml',
        'Minuman Ringan',
        6000
    ),
    (
        792,
        'Mogu-Mogu Minuman Nata De Coco Sirsak 320Ml',
        'Minuman Ringan',
        9000
    ),
    (
        793,
        'Mony Cin Cau Drink Cocopandan 300Ml',
        'Minuman Ringan',
        5000
    ),
    (
        794,
        'Pocari Sweat Minuman Isotonik 500Ml',
        'Minuman Ringan',
        6000
    ),
    (
        795,
        'Vit Levite Minuman Sari Buah Berries Lime 350Ml',
        'Minuman Ringan',
        4000
    ),
    (
        796,
        'Vit Levite Minuman Sari Buah Lemon Cucumber 350Ml',
        'Minuman Ringan',
        4000
    ),
    (
        797,
        'Vit Levite Minuman Sari Buah Lychee Citrus 350Ml',
        'Minuman Ringan',
        4000
    ),
    (
        798,
        'Yeo''s Drink Grass Jelly Lychee 300Ml',
        'Minuman Ringan',
        6000
    ),
    (
        799,
        'Yeo''s Drink Grass Jelly Winter Melon 300Ml',
        'Minuman Ringan',
        6000
    ),
    (
        800,
        'A&W Soft Drink Sarsaparila 330Ml',
        'Minuman Ringan',
        6000
    ),
    (
        801,
        'Adem Sari Minuman Penyejuk 6X7g',
        'Minuman Ringan',
        13000
    ),
    (
        802,
        'Big Soft Drink Blueberry 375Ml',
        'Minuman Ringan',
        3000
    ),
    (
        803,
        'Big Soft Drink Cola 3.1L',
        'Minuman Ringan',
        20000
    ),
    (
        804,
        'Big Soft Drink Cola 425/535Ml',
        'Minuman Ringan',
        3000
    ),
    (
        805,
        'Big Soft Drink Strawberry 3.1L',
        'Minuman Ringan',
        20000
    ),
    (
        806,
        'Bintang Zero Soft Drink 330Ml',
        'Minuman Ringan',
        8000
    ),
    (
        807,
        'Cap Badak Larutan Penyegar Putih 200Ml',
        'Minuman Ringan',
        3000
    ),
    (
        808,
        'Coca-Cola Soft Drink 250Ml Pet',
        'Minuman Ringan',
        3000
    ),
    (
        809,
        'Fanta Soft Drink Strawberry 250Ml',
        'Minuman Ringan',
        3000
    ),
    (
        810,
        'Fruitamin Coco Bit Splash Peach 350Ml',
        'Minuman Ringan',
        6000
    ),
    (
        811,
        'Fruitamin Minuman Coco Bit Splash Guava 350Ml',
        'Minuman Ringan',
        6000
    ),
    (
        812,
        'Good Mood Minuman Ekstrak Buah Blackcurrant 450Ml',
        'Minuman Ringan',
        5000
    ),
    (
        813,
        'Good Mood Minuman Ekstrak Buah Lemon & Madu 450Ml',
        'Minuman Ringan',
        5000
    ),
    (
        814,
        'Good Mood Minuman Ekstrak Buah Stroberi 450Ml',
        'Minuman Ringan',
        5000
    ),
    (
        815,
        'Good Mood Minuman Ekstrak Yogurt 450Ml',
        'Minuman Ringan',
        5000
    ),
    (
        816,
        'Green Sands Original Lime & Apple 330Ml',
        'Minuman Ringan',
        7000
    ),
    (
        817,
        'Hemaviton Energi Drink 150Ml',
        'Minuman Ringan',
        5000
    ),
    (
        818,
        'Hemaviton Health Drink C1000 + Collagen Orange 150Ml',
        'Minuman Ringan',
        6000
    ),
    (
        819,
        'Hemaviton Health Drink Vitamin C1000 Orange 150Ml',
        'Minuman Ringan',
        6000
    ),
    (
        820,
        'Hemaviton Health Drink Vitamin C1000 Orange 330Ml',
        'Minuman Ringan',
        7000
    ),
    (
        821,
        'Hemaviton Vitamin C1000 Lemon 330Ml',
        'Minuman Ringan',
        7000
    ),
    (
        822,
        'Hemaviton Vitamin C1000 Less Sugar Orange 330Ml',
        'Minuman Ringan',
        7000
    ),
    (
        823,
        'Hydro Coco Natural Health Drink 500Ml',
        'Minuman Ringan',
        13000
    ),
    (
        824,
        'Ion Water Minuman Isotonik 350Ml',
        'Minuman Ringan',
        6000
    ),
    (
        825,
        'Isoplus Minuman Isotonik 350Ml',
        'Minuman Ringan',
        3000
    ),
    (
        826,
        'Kaki Tiga Larutan Penyegar Anak Strawberry 250Ml',
        'Minuman Ringan',
        4000
    ),
    (
        827,
        'Kaki Tiga Larutan Penyegar Putih 200Ml',
        'Minuman Ringan',
        3000
    ),
    (
        828,
        'Kaki Tiga Larutan Penyegar Putih 500Ml',
        'Minuman Ringan',
        7000
    ),
    (
        829,
        'Kiranti Juice Sehat Datang Bulan Orange 150Ml',
        'Minuman Ringan',
        7000
    ),
    (
        830,
        'Kiranti Sehat Datang Bulan 150Ml',
        'Minuman Ringan',
        6000
    ),
    (
        831,
        'Kratingdaeng Energy Drink Reguler 150Ml',
        'Minuman Ringan',
        6000
    ),
    (
        832,
        'Kratingdaeng Energy Drink Super 150Ml',
        'Minuman Ringan',
        6000
    ),
    (
        833,
        'Mizone Active Minuman Isotonik Lychee Lemon 350Ml',
        'Minuman Ringan',
        3000
    ),
    (
        834,
        'Mizone Active Minuman Isotonik Lychee Lemon 500Ml',
        'Minuman Ringan',
        5000
    ),
    (
        835,
        'Mizone Break Free Minuman Isotonik Cherry Blossom 500Ml',
        'Minuman Ringan',
        5000
    ),
    (
        836,
        'Mizone Mood Up Minuman Isotonik Cranberry 500Ml',
        'Minuman Ringan',
        5000
    ),
    (
        837,
        'Mizone Move On Minuman Isotonik Starfruit 500Ml',
        'Minuman Ringan',
        5000
    ),
    (
        838,
        'Neo Hormoviton Energi Drink 150Ml',
        'Minuman Ringan',
        5000
    ),
    (
        839,
        'Nu Minuman Oceana Lemonade 460Ml',
        'Minuman Ringan',
        8000
    ),
    (
        840,
        'Oishi Smartc Minuman Rasa Buah Lemon 350Ml',
        'Minuman Ringan',
        4000
    ),
    (
        841,
        'Oronamin C Minuman Bervitamin 120Ml',
        'Minuman Ringan',
        6000
    ),
    (
        842,
        'Pocari Sweat Minuman Isotonik 2000Ml',
        'Minuman Ringan',
        23000
    ),
    (
        843,
        'Pocari Sweat Minuman Isotonik 350Ml',
        'Minuman Ringan',
        6000
    ),
    (
        844,
        'Pokka Minuman Teh Lychee 350Ml',
        'Minuman Ringan',
        4000
    ),
    (
        845,
        'Prima Rasa Fruit Cocktail 220Ml',
        'Minuman Ringan',
        7000
    ),
    (
        846,
        'Proman Minuman Energi 200Ml',
        'Minuman Ringan',
        5000
    ),
    (
        847,
        'Red Bull Gold Energy Drink Can 250Ml',
        'Minuman Ringan',
        8000
    ),
    (
        848,
        'Sosro Fruit Tea Lemon 350Ml',
        'Minuman Ringan',
        3000
    ),
    (
        849,
        'Sosro Fruit Tea Markisa 350Ml',
        'Minuman Ringan',
        3000
    ),
    (
        850,
        'Sosro Fruit Tea Strawberry 350Ml',
        'Minuman Ringan',
        3000
    ),
    (
        851,
        'Sprite Soft Drink 250Ml',
        'Minuman Ringan',
        3000
    ),
    (
        852,
        'You C1000 Health Drink Vitamin Apple 140Ml',
        'Minuman Ringan',
        6000
    ),
    (
        853,
        'You C1000 Health Drink Vitamin Lemon 140Ml',
        'Minuman Ringan',
        6000
    ),
    (
        854,
        'You C1000 Health Drink Vitamin Orange 140Ml',
        'Minuman Ringan',
        6000
    ),
    (
        855,
        'Mustika Ratu Hand & Body Spray Energizing Peppermint 100Ml',
        'Kebersihan Diri',
        7000
    ),
    (
        856,
        'Mustika Ratu Hand & Body Spray Nourishng Olive 1L',
        'Kebersihan Diri',
        245000
    ),
    (
        857,
        'Nivea Deo Roll On Whitening Hijab Fresh 50Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        858,
        'Palmolive Luminous Oils Shower Gel Macadamia Oil 400Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        859,
        'Palmolive Shower Milk & Honey Rich Moisture 400Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        860,
        'Prima Protect+ Moisturizing Hand Disinfectant 500mL',
        'Kebersihan Diri',
        45000
    ),
    (
        861,
        'Posh Deo Roll On Whitening 50Ml',
        'Kebersihan Diri',
        9000
    ),
    (
        862,
        'Betadine Natural Defense Body Wash Honey Manuka 400Ml',
        'Kebersihan Diri',
        27000
    ),
    (
        863,
        'Mustika Ratu Hand Gel Olive Zaitun 60mL',
        'Kebersihan Diri',
        14000
    ),
    (
        864,
        'Victoria Perfumed Body Scent Soulmate 120Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        865,
        'Eskulin Splash Cologne Snow White 125Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        866,
        'Felinz Nourishing Hand Mask 2''s',
        'Kebersihan Diri',
        25000
    ),
    (
        867,
        'Herborist Body Lotion Zaitun 145Ml',
        'Kebersihan Diri',
        16000
    ),
    (
        868,
        'Ultra Hand Sanitizer Spray 100Ml',
        'Kebersihan Diri',
        21000
    ),
    (
        869,
        'Nivea Body Serum Uv Extra Whitening 180Ml',
        'Kebersihan Diri',
        24000
    ),
    (
        870,
        'Pucelle Body Mist Cologne Jolly Rhythm 150Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        871,
        'Pucelle Body Mist Cologne Sparkling Love 150Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        872,
        'Pucelle Body Mist Cologne Wavy Ocean 150Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        873,
        'Lifebuoy Sabun Mandi Ts Lemon Fresh 4X110g',
        'Kebersihan Diri',
        13000
    ),
    (
        874,
        'Lifebuoy,Sabun Mandi Multipack Mild Care 4X110g Bdd',
        'Kebersihan Diri',
        13000
    ),
    (
        875,
        'Lifebuoy,Sabun Mandi Multipack Total 10 4X110g Bdd',
        'Kebersihan Diri',
        13000
    ),
    (
        876,
        'Indomaret Massage Oil Olive Oil 150Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        877,
        'Sensacion Goat''s Milk Shower Cream Scarlet Dream 800mL',
        'Kebersihan Diri',
        40000
    ),
    (
        878,
        'Giv Sabun Mandi Red Damask Rose & Cherry Blossom 3X110g',
        'Kebersihan Diri',
        8000
    ),
    (
        879,
        'Giv Sabun Mandi White Bengkoang & Yoghurt 3X110g',
        'Kebersihan Diri',
        8000
    ),
    (
        880,
        'Nuvo Sabun Kesehatan Family Merah 3X110g',
        'Kebersihan Diri',
        8000
    ),
    (
        881,
        'Rexona Deodorant Free Spirit 50Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        882,
        'Rexona Deodorant Roll On Women Power Dry 50Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        883,
        'Vivelle Hand Sanitizer Aloe Vera 105Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        884,
        'Kao Biore Body Foam Reffil Whitening Scrub 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        885,
        'Kao Biore Body Foam Refill Cherry Sakura 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        886,
        'Kao Biore Body Foam Relaxing Aromatic Jasmine 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        887,
        'Sensacion Goat''s Milk Shower Cream Scarlet Dream 1000mL',
        'Kebersihan Diri',
        60000
    ),
    (
        888,
        'Mutouch Shower Cream Goat''s Milk Green Tea 1000Ml',
        'Kebersihan Diri',
        61000
    ),
    (
        889,
        'Mutouch Shower Cream Goat''s Milk Royal Jelly & Honey 1000Ml',
        'Kebersihan Diri',
        61000
    ),
    (
        890,
        'Vaseline Petroleum Repairing Jelly Original 50Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        891,
        'Lifebuoy Sabun Mandi Cair Refill Yoghurt Care 450Ml',
        'Kebersihan Diri',
        25000
    ),
    (
        892,
        'Mutouch Shower Cream Goat''s Milk Pearl & Mulberry 1000Ml',
        'Kebersihan Diri',
        68000
    ),
    (
        893,
        'Mutouch Shower Cream Goat''s Milk W/H-S Olive Oil & Honey 1000mL',
        'Kebersihan Diri',
        68000
    ),
    (
        894,
        'Vaseline Healthy Bright Vit.Body Serum Soft + Glow 180Ml',
        'Kebersihan Diri',
        24000
    ),
    (
        895,
        'Sos Hand Sanitizer Antiseptic 100Ml',
        'Kebersihan Diri',
        16000
    ),
    (
        896,
        'Evangeline Eau De Parfum Black Sakura 100Ml',
        'Kebersihan Diri',
        35000
    ),
    (
        897,
        'Axe Deodorant Bodyspray Black 150Ml',
        'Kebersihan Diri',
        32000
    ),
    (
        898,
        'Axe Deodorant Bodyspray Dark Temptation 150Ml',
        'Kebersihan Diri',
        32000
    ),
    (
        899,
        'Axe Deodorant Bodyspray Gold Temptation 150Ml',
        'Kebersihan Diri',
        32000
    ),
    (
        900,
        'Celebon My Juicy Gel Face & Body Aloe 250mL',
        'Kebersihan Diri',
        100000
    ),
    (
        901,
        'Celebon My Juicy Gel Face & Body Lemon 250mL',
        'Kebersihan Diri',
        100000
    ),
    (
        902,
        'Celebon My Juicy Gel Face & Body Tomato 250mL',
        'Kebersihan Diri',
        100000
    ),
    (
        903,
        'Citra Body Lotion Natural Glowing White Uv 230Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        904,
        'Citra Body Lotion Nourishing White Uv 230 Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        905,
        'Citra Body Lotion Pearly White Uv (New) 120Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        906,
        'Citra Body Lotion Pearly White Uv 230Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        907,
        'Citra Fresh Glow Multifunction Gel Coconut Nourish 180Ml',
        'Kebersihan Diri',
        25000
    ),
    (
        908,
        'Citra Fresh White Uv Gel Lotion Aloe & White Rose 230Ml',
        'Kebersihan Diri',
        26000
    ),
    (
        909,
        'Citra Hand & Body Lotion Sakura Fair Uv 230Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        910,
        'Citra Pearly White Uv Tone Up Lotion 180Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        911,
        'Citra Sabun Mandi Pencerah Kulit Pearl 70G',
        'Kebersihan Diri',
        2000
    ),
    (
        912,
        'Dove Deeply Nourishing Body Wash Refill 400Ml',
        'Kebersihan Diri',
        32000
    ),
    (
        913,
        'Dove Deo Dry Serum Regenerate Care 50Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        914,
        'Dove Roll On Deodorant Go Fresh Cucumber & Green Tea 40Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        915,
        'Dove Roll On Deodorant Original 40Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        916,
        'Dove Roll On Deodorant Ultimate White 40Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        917,
        'Gillette Razor Daisy Plus For Women 2''S',
        'Kebersihan Diri',
        18000
    ),
    (
        918,
        'Indomaret Body Wash Cherry Blossom 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        919,
        'Indomaret Body Wash Cherry Blossom 500Ml',
        'Kebersihan Diri',
        26000
    ),
    (
        920,
        'Indomaret Body Wash Violet Lily 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        921,
        'Indomaret Hand Soap Camomile 375Ml',
        'Kebersihan Diri',
        9000
    ),
    (
        922,
        'Indomaret Hand Soap Pump Camomile Extracts 500Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        923,
        'Indomaret Hand Soap Strawberry 375Ml',
        'Kebersihan Diri',
        9000
    ),
    (
        924,
        'Indomaret Hand Wash Cherry Blossom 375Ml',
        'Kebersihan Diri',
        9000
    ),
    (
        925,
        'Indomaret Hand Wash Pump Cherry Blossom 500Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        926,
        'Indomaret Sabun Mandi Lys De France 100G',
        'Kebersihan Diri',
        5000
    ),
    (
        927,
        'Indomaret Sabun Mandi Wild Violet 100G',
        'Kebersihan Diri',
        5000
    ),
    (
        928,
        'Lifebuoy Antibacterial Handwash Total 10 180Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        929,
        'Lifebuoy Antibacterial Handwash Total 10 200Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        930,
        'Lifebuoy Body Wash Lemon Fresh 100Ml',
        'Kebersihan Diri',
        10000
    ),
    (
        931,
        'Lifebuoy Body Wash Total 10 Pump Red 500Ml',
        'Kebersihan Diri',
        44000
    ),
    (
        932,
        'Lifebuoy Hand Sanitizer Skin Immunity Lemon Fresh 50mL',
        'Kebersihan Diri',
        15000
    ),
    (
        933,
        'Lifebuoy Hand Sanitizer Skin Immunity Total 10 90Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        934,
        'Lifebuoy Sabun Cair Lemon Fresh Refill 900Ml',
        'Kebersihan Diri',
        46000
    ),
    (
        935,
        'Lifebuoy Sabun Cair Total 10 Red Refill 900Ml',
        'Kebersihan Diri',
        46000
    ),
    (
        936,
        'Lifebuoy Sabun Mandi Cair Pump White 500Ml',
        'Kebersihan Diri',
        44000
    ),
    (
        937,
        'Lifebuoy Sabun Mandi Cair Red 100Ml',
        'Kebersihan Diri',
        11000
    ),
    (
        938,
        'Lifebuoy Sabun Mandi Cair Refill Blue 250Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        939,
        'Lifebuoy Sabun Mandi Cair Refill Blue 450Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        940,
        'Lifebuoy Sabun Mandi Cair Refill Charcoal 450Ml',
        'Kebersihan Diri',
        30000
    ),
    (
        941,
        'Lifebuoy Sabun Mandi Cair Refill Lemon Fresh 450Ml Pch',
        'Kebersihan Diri',
        28000
    ),
    (
        942,
        'Lifebuoy Sabun Mandi Cair Refill Red 250Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        943,
        'Lifebuoy Sabun Mandi Cair Refill Red 450Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        944,
        'Lifebuoy Sabun Mandi Cair Refill White 250Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        945,
        'Lifebuoy Sabun Mandi Cair Refill White 450Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        946,
        'Lifebuoy Sabun Mandi Cair White 100Ml',
        'Kebersihan Diri',
        11000
    ),
    (
        947,
        'Lifebuoy Sabun Mandi Lemon Fresh 110G',
        'Kebersihan Diri',
        4000
    ),
    (
        948,
        'Lifebuoy Sabun Mandi Lemon Fresh 4X60g',
        'Kebersihan Diri',
        9000
    ),
    (
        949,
        'Lifebuoy Sabun Mandi Ts (46093) Total 10 110G',
        'Kebersihan Diri',
        4000
    ),
    (
        950,
        'Lifebuoy Sabun Mandi Ts (46094) Mild Care 110G',
        'Kebersihan Diri',
        4000
    ),
    (
        951,
        'Lifebuoy Sabun Mandi Ts Multipack 05966 Mild Care 4X60g',
        'Kebersihan Diri',
        9000
    ),
    (
        952,
        'L''Oreal UV Perfect Matte & Fresh 30mL',
        'Kebersihan Diri',
        98000
    ),
    (
        953,
        'L''oreal Uv Perfect Matte & Fresh 7Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        954,
        'Lux Body Wash New Soft Rose 100Ml',
        'Kebersihan Diri',
        11000
    ),
    (
        955,
        'Lux Sabun Cair Pink Soft Touch Pump 580Ml',
        'Kebersihan Diri',
        48000
    ),
    (
        956,
        'Lux Sabun Cair Pink Soft Touch Refill 450Ml',
        'Kebersihan Diri',
        27000
    ),
    (
        957,
        'Lux Sabun Cair White Impress Refill 450Ml',
        'Kebersihan Diri',
        27000
    ),
    (
        958,
        'Lux Sabun Mandi Batang Pink Soft Rose 3X110g',
        'Kebersihan Diri',
        12000
    ),
    (
        959,
        'Lux Sabun Mandi Batang White Velvet Jasmine 3X110g',
        'Kebersihan Diri',
        12000
    ),
    (
        960,
        'Lux Sabun Mandi Cair Refill Magical Spell 450Ml',
        'Kebersihan Diri',
        27000
    ),
    (
        961,
        'Lux Sabun Mandi Cair Refill Yuzu Blossom 450mL',
        'Kebersihan Diri',
        27000
    ),
    (
        962,
        'Olay White Radiance White Lotion Spf 24 30mL',
        'Kebersihan Diri',
        37000
    ),
    (
        963,
        'Rexona Deo Roll On Men Motionsense Invisible+Antibacterial 45Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        964,
        'Rexona Deodorant Roll On Women Advaced Whtning 45Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        965,
        'Rexona Deodorant Roll On Women Invisible Dry 50Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        966,
        'Rexona Deodorant Roll On Women Shower Clean 50Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        967,
        'Rexona Roll-On Advanced Whitening + Anti Noda 45Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        968,
        'Rexona Roll-On All In One 45Ml',
        'Kebersihan Diri',
        18000
    ),
    (
        969,
        'Rexona Roll-On Glowing White 40Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        970,
        'Saniter Air & Surface Sanitizer Spray 200mL',
        'Kebersihan Diri',
        27000
    ),
    (
        971,
        'Saniter Hand Sanitizer Gel 50Ml',
        'Kebersihan Diri',
        10000
    ),
    (
        972,
        'Saniter Hand Sanitizer Spray 60Ml',
        'Kebersihan Diri',
        16000
    ),
    (
        973,
        'Saniter Sanitizing Handwash 250Ml',
        'Kebersihan Diri',
        16000
    ),
    (
        974,
        'Saniter Sanitizing Handwash 400Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        975,
        'Schick Exacta 2 For Women (2+1) Pink',
        'Kebersihan Diri',
        17000
    ),
    (
        976,
        'Vaseline Body Lotion Healthy White Fresh & Fair 200Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        977,
        'Vaseline Body Lotion Healthy White Uv Lightening 100Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        978,
        'Vaseline Body Lotion Serum Superfood Cranberry 200Ml',
        'Kebersihan Diri',
        29000
    ),
    (
        979,
        'Vaseline Hand Cream + Anti Bac 50Ml',
        'Kebersihan Diri',
        24000
    ),
    (
        980,
        'Vaseline Healthy White Sun + Pollution Protection Spf24 100Ml',
        'Kebersihan Diri',
        23000
    ),
    (
        981,
        'Vaseline Intensive Care Lotion Healthy Sunblock Spf-30 100Ml',
        'Kebersihan Diri',
        54000
    ),
    (
        982,
        'Vaseline Lotion Healthy White Perfect 10 200Ml',
        'Kebersihan Diri',
        37000
    ),
    (
        983,
        'Vaseline Lotion Healthy White Uv Lightening 200Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        984,
        'Vaseline Lotion Healthy White Uv Lightening 400Ml',
        'Kebersihan Diri',
        48000
    ),
    (
        985,
        'Vaseline Lotion Intensive Care Aloe Soothe 200Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        986,
        'Vaseline Repairing Jelly Aloe 50Ml',
        'Kebersihan Diri',
        27000
    ),
    (
        987,
        'Viva Penyegar Air Mawar 100Ml',
        'Kebersihan Diri',
        6000
    ),
    (
        988,
        'Aiken Hand Sanitizer 200Ml',
        'Kebersihan Diri',
        30000
    ),
    (
        989,
        'Aiken Hand Sanitizer Spray 60Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        990,
        'Alexander Deodorant Spray Hitam 3.7 Oz',
        'Kebersihan Diri',
        62000
    ),
    (
        991,
        'Antis Pembersih Tangan Antiseptik Spray Jasmine Tea 55Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        992,
        'Antis Pembersih Tangan Antiseptik Spray Jeruk Nipis 55Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        993,
        'Asepso Body Wash Original With Aloe btl 250Ml',
        'Kebersihan Diri',
        24000
    ),
    (
        994,
        'Asepso Sabun Mandi Antiseptic 80G',
        'Kebersihan Diri',
        6000
    ),
    (
        995,
        'Banana Boat Soothing Aloe After Sun Gel 90Ml',
        'Kebersihan Diri',
        63000
    ),
    (
        996,
        'Banana Boat Sport Lotion Spf 50 90Ml',
        'Kebersihan Diri',
        170000
    ),
    (
        997,
        'Bellagio Homme Spray Cologne Blue Ventura 100Ml',
        'Kebersihan Diri',
        43000
    ),
    (
        998,
        'Bellagio Homme Spray Cologne Green Stamina 100Ml',
        'Kebersihan Diri',
        43000
    ),
    (
        999,
        'Bellagio Homme Spray Cologne Red Rave Culture 100Ml',
        'Kebersihan Diri',
        43000
    ),
    (
        1000,
        'Casablanca Body Mist Cologne Aqua 100Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1001,
        'Casablanca Body Mist Cologne Classic 100Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1002,
        'Casablanca Body Mist Cologne Homme Dynamic 100Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1003,
        'Champagne Silkening Body Splash Cherry Blossom 250mL',
        'Kebersihan Diri',
        152000
    ),
    (
        1004,
        'Champagne Silkening Body Splash French Jasmine 250mL',
        'Kebersihan Diri',
        152000
    ),
    (
        1005,
        'Champagne Silkening Body Splash Fruit Punch 250mL',
        'Kebersihan Diri',
        152000
    ),
    (
        1006,
        'Champagne Silkening Body Splash Sweet Vanilla 250mL',
        'Kebersihan Diri',
        152000
    ),
    (
        1007,
        'Creme 21 Body Lotion 250Ml',
        'Kebersihan Diri',
        62000
    ),
    (
        1008,
        'Cussons Carex Hand Gel Aloe Vera 50mL',
        'Kebersihan Diri',
        15000
    ),
    (
        1009,
        'Cussons Imperial Leather Body Mist White Princess 100Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1010,
        'Cussons Imperial Leather Body Wash Softly 220+180Ml',
        'Kebersihan Diri',
        18000
    ),
    (
        1011,
        'Dettol Antiseptic Germicide Liquid 245Ml',
        'Kebersihan Diri',
        47000
    ),
    (
        1012,
        'Dettol Antiseptic Germicide Liquid 495mL',
        'Kebersihan Diri',
        89000
    ),
    (
        1013,
        'Dettol Antiseptic Germicide Liquid 95Ml',
        'Kebersihan Diri',
        18000
    ),
    (
        1014,
        'Dettol Body Wash Anti Bakteri Cool 100mL',
        'Kebersihan Diri',
        15000
    ),
    (
        1015,
        'Dettol Body Wash Anti Bakteri Cool 410G',
        'Kebersihan Diri',
        36000
    ),
    (
        1016,
        'Dettol Body Wash Anti Bakteri Fresh 410G',
        'Kebersihan Diri',
        36000
    ),
    (
        1017,
        'Dettol Body Wash Anti Bakteri Lasting Fresh 410G',
        'Kebersihan Diri',
        36000
    ),
    (
        1018,
        'Dettol Body Wash Anti Bakteri Pump Cool 625G',
        'Kebersihan Diri',
        69000
    ),
    (
        1019,
        'Dettol Body Wash Anti Bakterial Aloe Vera & Avocado 410G',
        'Kebersihan Diri',
        36000
    ),
    (
        1020,
        'Dettol Body Wash Onzen Honey 410G',
        'Kebersihan Diri',
        36000
    ),
    (
        1021,
        'Dettol Body Wash Onzen Peach 410g',
        'Kebersihan Diri',
        36000
    ),
    (
        1022,
        'Dettol Hand Wash Anti Bakteri Pump Original 245mL',
        'Kebersihan Diri',
        23000
    ),
    (
        1023,
        'Dettol Instant Hand Sanitiser 50Ml',
        'Kebersihan Diri',
        14000
    ),
    (
        1024,
        'Dettol Instant Hand Sanitizer 200gr',
        'Kebersihan Diri',
        44000
    ),
    (
        1025,
        'Dettol Sabun Mandi Anti Bakteri Cool 100G',
        'Kebersihan Diri',
        7000
    ),
    (
        1026,
        'Dettol Sabun Mandi Anti Bakteri Cool 3X100g',
        'Kebersihan Diri',
        20000
    ),
    (
        1027,
        'Dettol Sabun Mandi Anti Bakteri Family Pack 3X105g',
        'Kebersihan Diri',
        20000
    ),
    (
        1028,
        'Dettol Sabun Mandi Anti Bakteri Lasting Fresh 100G',
        'Kebersihan Diri',
        7000
    ),
    (
        1029,
        'Dettol Sabun Mandi Anti Bakteri Original 100G',
        'Kebersihan Diri',
        7000
    ),
    (
        1030,
        'Dettol Sabun Mandi Anti Bakteri Re-Energize 3X100g',
        'Kebersihan Diri',
        20000
    ),
    (
        1031,
        'Do Re Mi Hand Sanitizer 50mL',
        'Kebersihan Diri',
        10000
    ),
    (
        1032,
        'Dream Whitening Facial Soap Papaya 100G',
        'Kebersihan Diri',
        10000
    ),
    (
        1033,
        'Elsozo Hand Sanitizer 60Ml',
        'Kebersihan Diri',
        32000
    ),
    (
        1034,
        'Eskulin Cologne Gel With Moisturizer Romantic Day 100Ml',
        'Kebersihan Diri',
        17000
    ),
    (
        1035,
        'Evangeline Eau De Parfum Natural Spray Dream 100mL',
        'Kebersihan Diri',
        40000
    ),
    (
        1036,
        'Evangeline Eau De Parfum Natural Spray Evolve 100mL',
        'Kebersihan Diri',
        40000
    ),
    (
        1037,
        'Evangeline Eau De Parfum Rania 100Ml',
        'Kebersihan Diri',
        39000
    ),
    (
        1038,
        'Fres & Natural Fragrance Mist Hijab Fresh Cotton Dreams 100Ml',
        'Kebersihan Diri',
        11000
    ),
    (
        1039,
        'Fres & Natural Fragrance Mist Hijab Fresh Midnight Secret 100Ml',
        'Kebersihan Diri',
        11000
    ),
    (
        1040,
        'Fresh A Hand Soap Anti Bacterial 250Ml',
        'Kebersihan Diri',
        12000
    ),
    (
        1041,
        'Gatsby Eau De Toilette White Up Blanc Wood 50Ml',
        'Kebersihan Diri',
        30000
    ),
    (
        1042,
        'Gatsby Splash Cologne Deep Ocean 175Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1043,
        'Gatsby Urban Cologne Spray Confidence 125Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1044,
        'Gatsby Urban Cologne Spray Energy 125Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1045,
        'Gatsby Urban Cologne Spray Infinity 125Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1046,
        'Giv Body Wash Flower & Berry 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        1047,
        'Giv Body Wash Glowing White Mulbery&Colagen 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        1048,
        'Goat''s Milk Iria Hand Body Lotion Lavender 600mL',
        'Kebersihan Diri',
        59000
    ),
    (
        1049,
        'Herborist Minyak Zaitun 150Ml',
        'Kebersihan Diri',
        33000
    ),
    (
        1050,
        'Herborist Skin Moisturizer Aloe Vera 250g',
        'Kebersihan Diri',
        62000
    ),
    (
        1051,
        'Herborist Soothing & Moisturizing Aloe Vera 100G',
        'Kebersihan Diri',
        30000
    ),
    (
        1052,
        'Home Snow Krim Tumit & Kaki 50g',
        'Kebersihan Diri',
        50000
    ),
    (
        1053,
        'Inez Pure Scent All Day 100mL',
        'Kebersihan Diri',
        36000
    ),
    (
        1054,
        'Inez Pure Scent Morning 100mL',
        'Kebersihan Diri',
        36000
    ),
    (
        1055,
        'Instance Hand Sanitizer Gel 500mL',
        'Kebersihan Diri',
        57000
    ),
    (
        1056,
        'Instance Hand Sanitizer Gel 60Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        1057,
        'Iomi Shower Cream Goat''s Milk Pomegranate & Raspberry 900mL',
        'Kebersihan Diri',
        60000
    ),
    (
        1058,
        'Iomi Shower Cream Goat''s Milk Shea Butter & Sweet Almond Oil 900mL',
        'Kebersihan Diri',
        60000
    ),
    (
        1059,
        'Izzi Body Mist Pink Sweet Love 100Ml',
        'Kebersihan Diri',
        18000
    ),
    (
        1060,
        'Izzi Body Mist True Love 100Ml',
        'Kebersihan Diri',
        18000
    ),
    (
        1061,
        'Izzi Pocket Eau De Cologne Love Prom Night 18Ml',
        'Kebersihan Diri',
        10000
    ),
    (
        1062,
        'J-80 Sanitizer 300mL',
        'Kebersihan Diri',
        24000
    ),
    (
        1063,
        'Jf Sabun Mandi Sulfur Acne Treatment 90G',
        'Kebersihan Diri',
        13000
    ),
    (
        1064,
        'Johnson Professional Hand Sanitizer Anti Bacterial Gel 2L',
        'Kebersihan Diri',
        126000
    ),
    (
        1065,
        'Johnson Professional Hand Sanitizer Anti Bacterial Gel 500mL',
        'Kebersihan Diri',
        62000
    ),
    (
        1066,
        'Kao Biore Body Foam Lively Refresh Btl 100Ml',
        'Kebersihan Diri',
        10000
    ),
    (
        1067,
        'Kao Biore Body Foam Men''s Refreshing Cool 250ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1068,
        'Kao Biore Body Foam Pump Antiseptic 550mL',
        'Kebersihan Diri',
        41000
    ),
    (
        1069,
        'Kao Biore Body Foam Reffil Whitening Scrub 250Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        1070,
        'Kao Biore Body Foam Refill Lively Refresh 450Ml',
        'Kebersihan Diri',
        26000
    ),
    (
        1071,
        'Kao Biore Body Foam Refill Pure Mild 450Ml',
        'Kebersihan Diri',
        26000
    ),
    (
        1072,
        'Kao Biore Body Foam Relaxing Aromatic Jasmine 100Ml',
        'Kebersihan Diri',
        10000
    ),
    (
        1073,
        'Kao Biore Body Foam Relaxing Aromatic Jasmine 250Ml',
        'Kebersihan Diri',
        15000
    ),
    (
        1074,
        'Kao Biore Experience Body Foam Refill Dancing Beach 425Ml',
        'Kebersihan Diri',
        33000
    ),
    (
        1075,
        'Kao Biore Experience Body Foam Refill Forest Bless 425Ml',
        'Kebersihan Diri',
        33000
    ),
    (
        1076,
        'Klinsen Hand Sanitizer Clean & Fresh 250mL',
        'Kebersihan Diri',
        63000
    ),
    (
        1077,
        'Klinsen Hand Sanitizer Clean & Fresh 50mL',
        'Kebersihan Diri',
        13000
    ),
    (
        1078,
        'Klinsen Hand Wash Nourishing 450mL',
        'Kebersihan Diri',
        47000
    ),
    (
        1079,
        'Klinsen Hand Wash Secret Romance 500mL',
        'Kebersihan Diri',
        53000
    ),
    (
        1080,
        'Klinsen Shower Cream Brightening Goat''s Milk 1000mL',
        'Kebersihan Diri',
        111000
    ),
    (
        1081,
        'Klinsen Shower Cream Brightening Goat''s Milk 500mL',
        'Kebersihan Diri',
        57000
    ),
    (
        1082,
        'Klinsen Shower Gel Energizing 1000mL',
        'Kebersihan Diri',
        111000
    ),
    (
        1083,
        'Klinsen Shower Gel Energizing 500mL',
        'Kebersihan Diri',
        57000
    ),
    (
        1084,
        'Klinsen Shower Scrub Mineral Spa 1000mL',
        'Kebersihan Diri',
        148000
    ),
    (
        1085,
        'Klinsen Shower Scrub Mineral Spa 500mL',
        'Kebersihan Diri',
        75000
    ),
    (
        1086,
        'Kojiesan Dream White Anti-Aging Soap 65g',
        'Kebersihan Diri',
        21000
    ),
    (
        1087,
        'Kojiesan Skin Lightening Soap 65g',
        'Kebersihan Diri',
        20000
    ),
    (
        1088,
        'Leivy Body Scrub Spa Bengkoang 250g',
        'Kebersihan Diri',
        45000
    ),
    (
        1089,
        'Leivy Body Scrub Spa Goat''s Milk 250g',
        'Kebersihan Diri',
        45000
    ),
    (
        1090,
        'Leivy Body Scrub Spa Strawberry 250g',
        'Kebersihan Diri',
        45000
    ),
    (
        1091,
        'Leivy Double Moisturising Hand Body Lotion Goat''s Milk 500Ml',
        'Kebersihan Diri',
        100000
    ),
    (
        1092,
        'Leivy Double Moisturising Shower Cream Goat''s Milk 250Ml',
        'Kebersihan Diri',
        30000
    ),
    (
        1093,
        'Leivy Double Moisturising Shower Cream Goat''s Milk 900Ml',
        'Kebersihan Diri',
        67000
    ),
    (
        1094,
        'Leivy Double Mousturising Shower Cream Goat''s Milk 1150ml',
        'Kebersihan Diri',
        99000
    ),
    (
        1095,
        'Leivy Nourishing Shower Cream Royal Jelly & Honey 1150Ml',
        'Kebersihan Diri',
        99000
    ),
    (
        1096,
        'Leivy Nourishing Shower Cream Royal Jelly + Honey 900Ml',
        'Kebersihan Diri',
        67000
    ),
    (
        1097,
        'Love Beauty Planet Body Lotion Argan Oil & Lavender 400mL',
        'Kebersihan Diri',
        68000
    ),
    (
        1098,
        'Love Beauty Planet Body Lotion Murumuru Butter & Rose 400mL',
        'Kebersihan Diri',
        68000
    ),
    (
        1099,
        'Love Beauty Planet Body Wash Coconut Water & Mimosa Flower 400mL',
        'Kebersihan Diri',
        51000
    ),
    (
        1100,
        'Love Beauty Planet Body Wash Murumuru Butter & Rose 400mL',
        'Kebersihan Diri',
        51000
    ),
    (
        1101,
        'Love Beauty Planet Body Wash Tea Tree Oil & Vetiver 400mL',
        'Kebersihan Diri',
        51000
    ),
    (
        1102,
        'Marina Body Lotion Natural 24H Moisturizing Avocado 200Ml',
        'Kebersihan Diri',
        8000
    ),
    (
        1103,
        'Marina Body Lotion Uv White Healthy & Glow 185Ml',
        'Kebersihan Diri',
        9000
    ),
    (
        1104,
        'Marina Eau De Toilette Sweet Romance 150Ml',
        'Kebersihan Diri',
        24000
    ),
    (
        1105,
        'Marina Hand Body Lotion Natural Nutri Fresh 200Ml',
        'Kebersihan Diri',
        8000
    ),
    (
        1106,
        'Marina Hand Body Lotion Uv White Healthy & Glow 460Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1107,
        'Mediheal Aloe Vera Hydrogel 300Ml',
        'Kebersihan Diri',
        65000
    ),
    (
        1108,
        'Medpro Hair & Body Sanitizing Spray 250Ml',
        'Kebersihan Diri',
        51000
    ),
    (
        1109,
        'Milky Body Soap (Fragrance) 400mL',
        'Kebersihan Diri',
        47000
    ),
    (
        1110,
        'Morris Eau De Parfum Princess 60mL',
        'Kebersihan Diri',
        36000
    ),
    (
        1111,
        'Mustika Ratu Body Butter Pepaya 200G',
        'Kebersihan Diri',
        49000
    ),
    (
        1112,
        'Mustika Ratu Body Scrub Jasmine 200G',
        'Kebersihan Diri',
        49000
    ),
    (
        1113,
        'Mustika Ratu Body Scrub Kopi 200G',
        'Kebersihan Diri',
        49000
    ),
    (
        1114,
        'Mustika Ratu Minyak Zaitun 175Ml',
        'Kebersihan Diri',
        38000
    ),
    (
        1115,
        'Mustika Ratu Sabun Mandi Pepaya 85G',
        'Kebersihan Diri',
        25000
    ),
    (
        1116,
        'Mutouch Goat''s Milk Body Lotion Collagen & Vitamin E 400Ml',
        'Kebersihan Diri',
        53000
    ),
    (
        1117,
        'Mutouch Goat''s Milk Body Lotion Habbatus Sauda Olive Oil & Honey 400mL',
        'Kebersihan Diri',
        73000
    ),
    (
        1118,
        'Mutouch Goat''s Milk Body Lotion Pearl & Mulberry 400Ml',
        'Kebersihan Diri',
        53000
    ),
    (
        1119,
        'Mutouch Shower Cream Goat''s Milk Green Tea 450mL',
        'Kebersihan Diri',
        35000
    ),
    (
        1120,
        'Mutouch Shower Cream Goat''s Milk Pearl & Mulberry 450mL',
        'Kebersihan Diri',
        35000
    ),
    (
        1121,
        'Mutouch Shower Cream Goat''s Milk Royal Jelly & Honey 450mL',
        'Kebersihan Diri',
        35000
    ),
    (
        1122,
        'Natur-E Hand Body Lotion 245Ml',
        'Kebersihan Diri',
        28000
    ),
    (
        1123,
        'Natur-E Hand Body Lotion Daily Nourish Revitalizing 245Ml',
        'Kebersihan Diri',
        34000
    ),
    (
        1124,
        'Nivea Body Lotion Instant White Spf 15 200Ml',
        'Kebersihan Diri',
        25000
    ),
    (
        1125,
        'Nivea Body Lotion Uv Extra Whitening 400Ml',
        'Kebersihan Diri',
        53000
    ),
    (
        1126,
        'Nivea Body Whitening Cream Dry Skin 100Gr',
        'Kebersihan Diri',
        31000
    ),
    (
        1127,
        'Nivea Creme Perawatan Soft 100Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        1128,
        'Nivea Deo Roll On Extra Whitening 50Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1129,
        'Nivea Deo Roll On For Men Cool Kick 50Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1130,
        'Nivea Deo Roll On Invisible Black & White 50Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1131,
        'Nivea Deo Roll On Invisible For Men Black & White 50Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1132,
        'Nivea Deo Roll On Men Deep 50Ml',
        'Kebersihan Diri',
        19000
    ),
    (
        1133,
        'Nivea Deo Roll On Pearl & Beauty 50Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1134,
        'Nivea Deo Roll On Whitening Silk Touch 50Ml',
        'Kebersihan Diri',
        20000
    ),
    (
        1135,
        'Nivea Deodorant Spray Dry Comfort 150Ml',
        'Kebersihan Diri',
        45000
    ),
    (
        1136,
        'Nivea Sun Moisturising Lotion Spf-30 100Ml',
        'Kebersihan Diri',
        107000
    ),
    (
        1137,
        'Nivea Sun Moisturising Lotion Spf-50 100Ml',
        'Kebersihan Diri',
        148000
    ),
    (
        1138,
        'Nuvo Hand Sanitizer Anti Bacterial Fresh Blossom 250mL',
        'Kebersihan Diri',
        20000
    ),
    (
        1139,
        'Nuvo Hand Sanitizer Extra Moisturizer Fresh Blossom 85Ml',
        'Kebersihan Diri',
        8000
    ),
    (
        1140,
        'Nuvo Sabun Kesehatan Cair Classic 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        1141,
        'Nuvo Sabun Kesehatan Cair Nature 450Ml',
        'Kebersihan Diri',
        22000
    ),
    (
        1142,
        'Nuvo Sabun Kesehatan Family Cool 3X76g',
        'Kebersihan Diri',
        6000
    ),
    (
        1143,
        'Original Source Body Mist Mango 100mL',
        'Kebersihan Diri',
        35000
    ),
    (
        1144,
        'Original Source Body Shower Mint & Tea Free 500Ml',
        'Kebersihan Diri',
        54000
    ),
    (
        1145,
        'Original Source Body Shower Vanilla & Raspberry 250Ml',
        'Kebersihan Diri',
        40000
    );