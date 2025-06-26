part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required DataStatus status,
    required String message,
    required List<AppointmentModel> upcomingAppointmentsList,
    required DataStatus upcomingAppointmentsListStatus,
    required List<ClinicModel> departmentsList,
    required DataStatus departmentsListStatus,
    required List<DoctorModel> doctorsList,
    required List<DoctorModel> doctorsSearchList,
    required DataStatus doctorsearchListStatus,
    required DataStatus doctorsListStatus,
    required List<PharmacyModel> pharmaciesList,
    required DataStatus pharmaciesListStatus,
    required int notificationCount,
  }) = _HomeState;
  factory HomeState.initial() {
    return HomeState(
      message: 'No data',
      status: DataStatus.noData,
      upcomingAppointmentsList: [],
      upcomingAppointmentsListStatus: DataStatus.noData,
      departmentsList: [],
      departmentsListStatus: DataStatus.noData,
      doctorsList: [],
      doctorsListStatus: DataStatus.noData,
      doctorsSearchList: [],
      doctorsearchListStatus: DataStatus.noData,
      pharmaciesList: [],
      pharmaciesListStatus: DataStatus.noData,
      notificationCount: 0,
    );
  }
}
