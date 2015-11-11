CREATE TABLE people (
  id serial primary key,
  name varchar(30)
);

CREATE TABLE doctors (
  id serial primary key,
  name varchar(30)
);

CREATE TABLE appointments (
  id serial primary key,
  person_id int references people(id) on delete cascade,
  doctor_id int references doctors(id) on delete cascade,
  date date
);