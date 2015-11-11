SELECT * FROM appointments
  INNER JOIN people on people.id = appointments.person_id
  INNER JOIN doctors on doctors.id = appointments.doctor_id;