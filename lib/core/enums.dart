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

enum DataStatus {
  data,
  loading,
  noData,
  error;

  bool get isData => this == DataStatus.data;
  bool get isLoading => this == DataStatus.loading;
  bool get isError => this == DataStatus.error;
  bool get isNoData => this == DataStatus.noData;
}
