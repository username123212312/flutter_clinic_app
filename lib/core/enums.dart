enum Role {
  doctor,
  patient;

  bool get isPatient => this == Role.patient;
  bool get isDoctor => this == Role.doctor;
}

enum AppointmentStatus {
  pending,
  finished,
  canceled;

  bool get isPending => this == AppointmentStatus.pending;
  bool get isFinished => this == AppointmentStatus.finished;
  bool get isCanceled => this == AppointmentStatus.canceled;
}
