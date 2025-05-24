enum Role {
  doctor,
  biologist,
  patient;

  bool get isPatient => this == Role.patient;
  bool get isBiologist => this == Role.biologist;
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
  error;

  bool get isData => this == DataStatus.data;
  bool get isLoading => this == DataStatus.loading;
  bool get isUploading => this == DataStatus.uploading;
  bool get isDownloading => this == DataStatus.downloading;
  bool get isError => this == DataStatus.error;
  bool get isNoData => this == DataStatus.noData;
}
