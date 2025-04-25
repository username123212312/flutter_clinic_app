enum Role {
  doctor,
  patient;

  bool get isPatient => this == Role.patient;
  bool get isDoctor => this == Role.doctor;
}
