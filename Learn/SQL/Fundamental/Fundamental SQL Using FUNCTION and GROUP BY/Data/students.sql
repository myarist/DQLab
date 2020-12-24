USE dqlab;

CREATE TABLE IF NOT EXISTS students (
    `StudentID` INT,
    `FirstName` VARCHAR(11) CHARACTER SET utf8,
    `LastName` VARCHAR(10) CHARACTER SET utf8,
    `Email` VARCHAR(25) CHARACTER SET utf8,
    `Semester1` NUMERIC(5, 3),
    `Semester2` NUMERIC(5, 3),
    `MarkGrowth` NUMERIC(4, 3)
);

INSERT INTO
    students
VALUES
    (
        1,
        'Jose',
        'Mohit',
        'Jose_Mohit@gmail.com',
        64.55,
        72.6,
        -8.05
    ),
    (
        2,
        'Lala',
        'Karlina',
        'lala_karlina@yahoo.com',
        72.85,
        65.35,
        7.5
    ),
    (
        3,
        'Sultan',
        'Hadi',
        'Sultan_Hadi@gmail.com',
        45.32,
        50.25,
        -4.93
    ),
    (
        4,
        'Jaya',
        'Usman',
        'jaya_usman@yahoo.com',
        86.73,
        77.4,
        9.33
    ),
    (
        5,
        'Anjali',
        'Wijaya',
        'anjali_wijaya@yahoo.com',
        92.25,
        90.75,
        1.5
    );