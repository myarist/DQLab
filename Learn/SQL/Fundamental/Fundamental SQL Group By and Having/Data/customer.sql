USE dqlab;

CREATE TABLE IF NOT EXISTS customer (
    `id` INT,
    `Name` VARCHAR(31) CHARACTER SET utf8,
    `address` VARCHAR(71) CHARACTER SET utf8,
    `Gender` VARCHAR(8) CHARACTER SET utf8,
    `phone` VARCHAR(21) CHARACTER SET utf8,
    `email` VARCHAR(21) CHARACTER SET utf8,
    `DOB` DATETIME
);

INSERT INTO
    customer
VALUES
    (
        1,
        'Wani Nurdiyanti',
        'Psr. Jayawijaya No. 913, Sawahlunto 10252, SulTeng',
        'Female',
        '(+62) 976 8680 7043',
        'waniti@gmail.com',
        '1993-05-10 00:00:00'
    ),
    (
        2,
        'Luwes Putra S.I.Kom',
        'Ki. Yap Tjwan Bing No. 971, Cilegon 53283, Maluku',
        'Male',
        '0984 8194 3662',
        'luwespom@gmail.com',
        '1999-04-17 00:00:00'
    ),
    (
        3,
        'Prasetya Karsa Mustofa S.Ked',
        'Psr. Bakin No. 775, Kotamobagu 62174, Lampung',
        'Male',
        '(+62) 542 0486 562',
        'praseted@gmail.com',
        '1994-02-03 00:00:00'
    ),
    (
        4,
        'Anastasia Ade Safitri',
        'Gg. Gardujati No. 141, Magelang 24938, JaBar',
        'Female',
        '0748 7971 493',
        'anastri@gmail.com',
        '1998-01-14 00:00:00'
    ),
    (
        5,
        'Gaman Tasnim Pratama S.T.',
        'Ds. Bambon No. 441, Tual 97842, DIY',
        'Male',
        '0277 7636 0163',
        'gamantast@gmail.com',
        '1998-04-24 00:00:00'
    ),
    (
        6,
        'Darmaji Najmudin',
        'Dk. Sampangan No. 22, Depok 24703, KalSel',
        'Male',
        '0908 3141 362',
        'darmajin@gmail.com',
        '1998-11-11 00:00:00'
    ),
    (
        7,
        'Tugiman Jailani M.Ak',
        'Gg. Jayawijaya No. 429, Tual 23392, SulBar',
        'Male',
        '0862 4695 650',
        'tugimak@gmail.com',
        '1997-08-11 00:00:00'
    ),
    (
        8,
        'Paulin Yolanda M.Pd',
        'Jr. Sudirman No. 472, Bogor 27226, KalBar',
        'Female',
        '025 5514 0830',
        'paulinmpd@gmail.com',
        '1993-05-28 00:00:00'
    ),
    (
        9,
        'Laras Yolanda',
        'Ds. Umalas No. 429, Tual 31749, KalTeng',
        'Female',
        '(+62) 23 8981 413',
        'laranda@gmail.com',
        '1992-03-16 00:00:00'
    ),
    (
        10,
        'Betania Zizi Kusmawati S.Gz',
        'Kpg. Rajawali Barat No. 305, Tarakan 65385, BaBel',
        'Female',
        '0838 6092 897',
        'betasgz@gmail.com',
        '1998-08-01 00:00:00'
    ),
    (
        11,
        'Luwar Banawa Hardiansyah S.Pd',
        'Dk. Baranang No. 725, Palembang 16247, JaBar',
        'Male',
        '(+62) 439 6548 654',
        'luwarspd@gmail.com',
        '1999-11-08 00:00:00'
    ),
    (
        12,
        'Laswi Saputra',
        'Dk. Raden Saleh No. 257, Bandar Lampung 13181, SulTeng',
        'Male',
        '(+62) 899 1181 4688',
        'laswtra@gmail.com',
        '1992-08-03 00:00:00'
    ),
    (
        13,
        'Tania Farida S.Farm',
        'Ki. Samanhudi No. 468, Singkawang 65977, SulUt',
        'Female',
        '(+62) 463 1253 7704',
        'taniarm@gmail.com',
        '1993-06-29 00:00:00'
    ),
    (
        14,
        'Ghani Putra',
        'Gg. Ters. Pasir Koja No. 545, Administrasi Jakarta Pusat 28055, Jambi',
        'Male',
        '0501 9530 963',
        'ghanra@gmail.com',
        '1996-10-21 00:00:00'
    ),
    (
        15,
        'Laila Lestari',
        'Psr. Baranang No. 606, Sungai Penuh 52413, DKI',
        'Female',
        '0423 1015 7373',
        'lailri@gmail.com',
        '1999-11-17 00:00:00'
    ),
    (
        16,
        'Bala Kemba Haryanto',
        'Psr. Bakau No. 977, Bogor 24490, NTB',
        'Male',
        '0795 8806 248',
        'balakto@gmail.com',
        '1999-11-21 00:00:00'
    ),
    (
        17,
        'Kasusra Hardiansyah',
        'Dk. Mahakam No. 336, Sorong 93881, Bengkulu',
        'Male',
        '(+62) 733 3457 8625',
        'kasusyah@gmail.com',
        '1991-08-18 00:00:00'
    ),
    (
        18,
        'Winda Mulyani',
        'Psr. Baiduri No. 186, Sorong 54947, Maluku',
        'Female',
        '(+62) 882 5502 5664',
        'windaani@gmail.com',
        '1994-12-20 00:00:00'
    ),
    (
        19,
        'Maya Hastuti',
        'Jln. Dipatiukur No. 548, Pekalongan 94751, KalUt',
        'Female',
        '(+62) 370 8878 4298',
        'mayahati@gmail.com',
        '1996-12-05 00:00:00'
    ),
    (
        20,
        'Rama Putra',
        'Ds. Abang No. 652, Bengkulu 70019, Bali',
        'Male',
        '0917 8935 641',
        'ramaputra@gmail.com',
        '1993-03-25 00:00:00'
    ),
    (
        21,
        'Lintang Nasyiah',
        'Kpg. S. Parman No. 344, Jayapura 24250, NTB',
        'Female',
        '(+62) 358 2375 477',
        'lintaiah@gmail.com',
        '1998-04-13 00:00:00'
    ),
    (
        22,
        'Asmianto Napitupulu',
        'Jln. Ters. Kiaracondong No. 119, Batu 21764, KalTeng',
        'Male',
        '(+62) 407 6115 5433',
        'asmialu@gmail.com',
        '1990-04-16 00:00:00'
    ),
    (
        23,
        'Vera Intan Nurdiyanti S.Pd',
        'Jln. Radio No. 386, Administrasi Jakarta Pusat 21835, SulBar',
        'Female',
        '(+62) 777 0592 350',
        'verapd@gmail.com',
        '1995-08-23 00:00:00'
    ),
    (
        24,
        'Malika Melani S.E.',
        'Jln. Umalas No. 299, Banjar 88750, Papua',
        'Female',
        '0847 0549 545',
        'maliise@gmail.com',
        '1990-04-08 00:00:00'
    ),
    (
        25,
        'Zelda Nuraini',
        'Psr. Pattimura No. 613, Tanjungbalai 46397, Bengkulu',
        'Female',
        '0624 7219 184',
        'zeldanini@gmail.com',
        '1991-10-21 00:00:00'
    ),
    (
        26,
        'Ciaobella Mulyani',
        'Jr. Pasir Koja No. 320, Payakumbuh 26202, MalUt',
        'Female',
        '026 8856 483',
        'ciaoani@gmail.com',
        '1999-09-02 00:00:00'
    ),
    (
        27,
        'Janet Purwanti',
        'Kpg. Sam Ratulangi No. 719, Jambi 69478, Bali',
        'Female',
        '022 2034 4637',
        'janetpti@gmail.com',
        '1991-02-14 00:00:00'
    ),
    (
        28,
        'Ade Laksmiwati',
        'Dk. Diponegoro No. 638, Malang 67777, Bengkulu',
        'Female',
        '0601 4240 3295',
        'adelti@gmail.com',
        '1991-07-05 00:00:00'
    ),
    (
        29,
        'Zelaya Fitria Palastri S.E.',
        'Jln. Bhayangkara No. 264, Prabumulih 23314, NTT',
        'Female',
        '0786 5054 452',
        'zelayase@gmail.com',
        '1992-10-05 00:00:00'
    ),
    (
        30,
        'Mahmud Natsir',
        'Jln. Salam No. 886, Madiun 32514, SulTra',
        'Male',
        '0466 2739 2486',
        'mahmsir@gmail.com',
        '1992-02-10 00:00:00'
    ),
    (
        31,
        'Aisyah Umi Agustina',
        'Jr. Astana Anyar No. 416, Batu 57453, SulBar',
        'Female',
        '0372 4694 6834',
        'aisyna@gmail.com',
        '1995-11-14 00:00:00'
    ),
    (
        32,
        'Tari Latika Haryanti',
        'Ki. Raden No. 159, Sukabumi 96672, SulTra',
        'Female',
        '(+62) 27 1408 2686',
        'tarilati@gmail.com',
        '1991-09-11 00:00:00'
    ),
    (
        33,
        'Lutfan Budiyanto',
        'Ki. Ters. Buah Batu No. 94, Bandar Lampung 31772, DKI',
        'Male',
        '0930 1450 0473',
        'lutfato@gmail.com',
        '1998-01-11 00:00:00'
    ),
    (
        34,
        'Ellis Mandasari',
        'Ki. Suharso No. 518, Probolinggo 82667, Maluku',
        'Female',
        '0247 0331 622',
        'ellismari@gmail.com',
        '1997-06-26 00:00:00'
    ),
    (
        35,
        'Hani Agustina M.TI.',
        'Jln. Suprapto No. 625, Banda Aceh 83135, KepR',
        'Female',
        '0309 6562 0945',
        'haniagti@gmail.com',
        '1991-05-22 00:00:00'
    ),
    (
        36,
        'Irma Zulaika',
        'Dk. Cikapayang No. 722, Pangkal Pinang 22223, MalUt',
        'Female',
        '(+62) 729 3114 4508',
        'irmaika@gmail.com',
        '1991-08-02 00:00:00'
    ),
    (
        37,
        'Hendri Hutapea',
        'Kpg. Bayam No. 568, Tarakan 29518, PapBar',
        'Male',
        '0375 9669 882',
        'hendpea@gmail.com',
        '1996-08-28 00:00:00'
    ),
    (
        38,
        'Cengkal Nababan',
        'Psr. Suprapto No. 807, Bima 39355, Jambi',
        'Male',
        '026 8271 3691',
        'cengan@gmail.com',
        '1995-04-19 00:00:00'
    ),
    (
        39,
        'Rini Wahyuni',
        'Dk. Nanas No. 802, Sabang 75857, Maluku',
        'Female',
        '0210 6665 302',
        'riniwni@gmail.com',
        '1997-03-27 00:00:00'
    ),
    (
        40,
        'Makara Pangestu',
        'Gg. Bank Dagang Negara No. 316, Makassar 90333, Bengkulu',
        'Male',
        '(+62) 946 3174 093',
        'makatu@gmail.com',
        '1995-02-14 00:00:00'
    ),
    (
        41,
        'Langgeng Situmorang',
        'Ds. Aceh No. 407, Malang 46130, NTT',
        'Male',
        '(+62) 627 4509 217',
        'langang@gmail.com',
        '1995-07-09 00:00:00'
    ),
    (
        42,
        'Setya Nababan',
        'Jr. Elang No. 532, Jambi 52830, Jambi',
        'Male',
        '(+62) 285 0430 424',
        'setyaban@gmail.com',
        '1990-07-06 00:00:00'
    ),
    (
        43,
        'Gantar Prasetya S.I.Kom',
        'Ds. Salak No. 403, Banjarbaru 50996, Maluku',
        'Male',
        '0636 1197 472',
        'gantaom@gmail.com',
        '1994-02-19 00:00:00'
    ),
    (
        44,
        'Aditya Harja Sihombing',
        'Psr. Krakatau No. 944, Sibolga 80737, KalBar',
        'Male',
        '0374 5699 435',
        'aditying@gmail.com',
        '1994-03-19 00:00:00'
    ),
    (
        45,
        'Akarsana Galar Nainggolan',
        'Ds. Yap Tjwan Bing No. 462, Jayapura 74724, SulSel',
        'Male',
        '0754 3435 5880',
        'akarsan@gmail.com',
        '1993-03-06 00:00:00'
    ),
    (
        46,
        'Kezia Padmasari S.Psi',
        'Psr. Sukabumi No. 686, Cimahi 23007, KalUt',
        'Female',
        '0397 7105 327',
        'kezipsi@gmail.com',
        '1991-05-11 00:00:00'
    ),
    (
        47,
        'Diana Sadina Riyanti',
        'Jr. Sutoyo No. 548, Jambi 98637, KalTim',
        'Female',
        '0922 0466 320',
        'diannti@gmail.com',
        '1992-04-17 00:00:00'
    ),
    (
        48,
        'Bahuwarna Manullang M.M.',
        'Ki. Reksoninten No. 113, Sawahlunto 25897, Lampung',
        'Male',
        '0802 2700 4966',
        'bahuwagmm@gmail.com',
        '1999-07-09 00:00:00'
    ),
    (
        49,
        'Hamzah Hairyanto Sinaga S.Pd',
        'Psr. Perintis Kemerdekaan No. 274, Tegal 66113, SulTeng',
        'Male',
        '(+62) 637 9040 071',
        'hamzpd@gmail.com',
        '1995-12-11 00:00:00'
    ),
    (
        50,
        'Wani Nurdiyanti',
        'Psr. Jayawijaya No. 913, Sawahlunto 10252, SulTeng',
        'Female',
        '(+62) 976 8680 7043',
        'waniti@gmail.com',
        '1997-10-17 00:00:00'
    );