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

enum AppointmentType { visit, vaccination }

enum AppointmentStatus {
  pending,
  visited,
  cancelled;

  bool get isPending => this == AppointmentStatus.pending;
  bool get isVisited => this == AppointmentStatus.visited;
  bool get isCancelled => this == AppointmentStatus.cancelled;
}

enum DoctorAppointmentStatus {
  pending,
  visited,
  today;

  bool get isPending => this == DoctorAppointmentStatus.pending;
  bool get isVisited => this == DoctorAppointmentStatus.visited;
  bool get isToday => this == DoctorAppointmentStatus.today;
}

enum DoctorAppointmentType {
  firstTime,
  checkup;

  bool get isFirstTime => this == DoctorAppointmentType.firstTime;
  bool get isCheckup => this == DoctorAppointmentType.checkup;

  String toJson() {
    return isFirstTime ? 'first time' : name;
  }
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
  finished;

  bool get isAll => this == AnalysisStatus.all;
  bool get isPending => this == AnalysisStatus.pending;
  bool get isFinished => this == AnalysisStatus.finished;
}

enum DataStatus {
  data,
  submitting,
  loading,
  uploading,
  initial,
  loaded,
  fetching,
  downloading,
  noData,
  done,
  loadingMore,
  error;

  bool get isData => this == DataStatus.data;
  bool get isInitial => this == DataStatus.initial;
  bool get isFetching => this == DataStatus.fetching;
  bool get isSubmitting => this == DataStatus.submitting;
  bool get isLoading => this == DataStatus.loading;
  bool get isLoaded => this == DataStatus.loaded;
  bool get isUploading => this == DataStatus.uploading;
  bool get isDownloading => this == DataStatus.downloading;
  bool get isError => this == DataStatus.error;
  bool get isNoData => this == DataStatus.noData;
  bool get isDone => this == DataStatus.done;
  bool get isLoadingMore => this == DataStatus.loadingMore;
}

enum BookingType {
  manual,
  auto;

  bool get isManual => this == BookingType.manual;
  bool get isAuto => this == BookingType.auto;
}

enum VaccintaionType {
  now,
  all,
  upcoming;

  bool get isNow => this == VaccintaionType.now;
  bool get isAll => this == VaccintaionType.all;
  bool get isUpcoming => this == VaccintaionType.upcoming;
}

enum AvailableShift {
  morning,
  evening;

  bool get isMorning => this == AvailableShift.morning;
  bool get isEvening => this == AvailableShift.evening;

  String get toJson {
    switch (this) {
      case AvailableShift.morning:
        return "morning shift:from 9 AM to 3 PM";
      case AvailableShift.evening:
        return "evening shift:from 3 PM to 9 PM";
    }
  }

  static AvailableShift fromJson(String json) {
    final firstChar = json.trim().toLowerCase().substring(0, 1);
    switch (firstChar) {
      case 'm':
        return AvailableShift.morning;
      case 'e':
        return AvailableShift.evening;
      default:
        throw ArgumentError('Invalid shift: $json');
    }
  }
}
