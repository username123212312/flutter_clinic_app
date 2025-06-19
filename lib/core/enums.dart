enum Role {
  doctor,
  labtech,
  patient,
  admin;

  bool get isPatient => this == Role.patient;
  bool get isLabtech => this == Role.labtech;
  bool get isDoctor => this == Role.doctor;
  bool get isAdmin => this == Role.admin;
}

enum AppointmentStatus {
  pending,
  visited,
  cancelled;

  bool get isPending => this == AppointmentStatus.pending;
  bool get isVisited => this == AppointmentStatus.visited;
  bool get isCancelled => this == AppointmentStatus.cancelled;
}

enum PaymentStatus {
  paid,
  pending,
  unpaid;

  bool get isPaid => this == PaymentStatus.paid;
  bool get isUnpaid => this == PaymentStatus.unpaid;
  bool get isPending => this == PaymentStatus.pending;
}

enum AnalysisStatus {
  all,
  pending,
  finished,
  canceled;

  bool get isAll => this == AnalysisStatus.all;
  bool get isPending => this == AnalysisStatus.pending;
  bool get isFinished => this == AnalysisStatus.finished;
  bool get isCanceled => this == AnalysisStatus.canceled;
}

enum DataStatus {
  data,
  loading,
  uploading,
  downloading,
  noData,
  done,
  error;

  bool get isData => this == DataStatus.data;
  bool get isLoading => this == DataStatus.loading;
  bool get isUploading => this == DataStatus.uploading;
  bool get isDownloading => this == DataStatus.downloading;
  bool get isError => this == DataStatus.error;
  bool get isNoData => this == DataStatus.noData;
  bool get isDone => this == DataStatus.done;
}
