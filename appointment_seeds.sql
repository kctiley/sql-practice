INSERT INTO
  people
VALUES
  ( default, 'Bill' ),
  ( default, 'Sally' ),
  ( default, 'Susan' ),
  ( default, 'Randy' ),
  ( default, 'Kolbey' ),
  ( default, 'Andrew' ),
  ( default, 'Derick' );

INSERT INTO
  doctors
VALUES
  ( default, 'Dr. Who' ),
  ( default, 'Dr. McCoy' ),
  ( default, 'Dr. Tyson' ),
  ( default, 'Dr. Freud' );

INSERT INTO
  appointments
VALUES
  ( default, (SELECT id FROM people WHERE name = 'Bill'), (SELECT id FROM doctors WHERE name = 'Dr. Who'), now() ),
  ( default, (SELECT id FROM people WHERE name = 'Sally'), (SELECT id FROM doctors WHERE name = 'Dr. McCoy'), now() ),
  ( default, (SELECT id FROM people WHERE name = 'Susan'), (SELECT id FROM doctors WHERE name = 'Dr. Tyson'), now() ),
  ( default, (SELECT id FROM people WHERE name = 'Randy'), (SELECT id FROM doctors WHERE name = 'Dr. Freud'), ( now() + interval '2' day ) ),
  ( default, (SELECT id FROM people WHERE name = 'Kolbey'), (SELECT id FROM doctors WHERE name = 'Dr. Who'), ( now() + interval '3' day ) ),
  ( default, (SELECT id FROM people WHERE name = 'Andrew'), (SELECT id FROM doctors WHERE name = 'Dr. McCoy'), ( now() + interval '10' day ) ),
  ( default, (SELECT id FROM people WHERE name = 'Derick'), (SELECT id FROM doctors WHERE name = 'Dr. Freud'), ( now() + interval '4' day ) ),
  ( default, (SELECT id FROM people WHERE name = 'Bill'), (SELECT id FROM doctors WHERE name = 'Dr. Tyson'), ( now() + interval '5' day ) );
