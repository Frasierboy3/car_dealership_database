INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES(
    'Jimmy',
    'Pesto'
);
INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES(
    'Bob',
    'Belcher'
);
INSERT INTO customer(
    first_name,
    last_name,
    phone,
    email,
    did_Buy
)
VALUES(
    'Gene',
    'Belcher',
    '8005429482',
    'g.belcher@bobs.com',
    true
);
INSERT INTO customer(
    first_name,
    last_name,
    phone,
    email,
    did_Buy
)
VALUES(
    'Linda',
    'Belcher',
    '1234567890',
    'linda@bobs.com',
    false
);
INSERT INTO cars(
    isNew,
    year,
    make,
    model
)
VALUES(
    true,
    '2022',
    'Toyota',
    'Camry' 
);
INSERT INTO cars(
    isNew,
    year,
    make,
    model
)
VALUES(
    false,
    '2002',
    'ford',
    'f150'
);
INSERT INTO mechanic(
    first_name,
    last_name
)
VALUES(
    'Tina',
    'Belcher' 
),
(
    'Louise',
    'Belcher'
);
INSERT INTO serv_mech(
    serv_mech_id,
    mechanic_id
)
VALUES(
    1,
    1
),
(
    2,
    2
);
INSERT INTO services(
    service_id,
    service_history,
    serv_mech_id
)
VALUES(
    1,
    'Changed oil and rotated tires.',
    2
),
(
    2,
    'Replaced broken tail light.',
    1
);
INSERT INTO invoices(
    isPaid,
    customer_id,
    salesperson_id,
    cars_id,
    service_id
)
VALUES(
    true,
    1,
    1,
    1,
    1
),
(
    false,
    2,
    2,
    2,
    2
);