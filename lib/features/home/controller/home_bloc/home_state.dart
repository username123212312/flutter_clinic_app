part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required List<AppointmentModel> upcomingAppointmentsList,
    required DataStatus upcomingAppointmentsListStatus,
    required List departmentsList,
    required DataStatus departmentsListStatus,
    required List doctorsList,
    required DataStatus doctorsListStatus,
    required List pharmaciesList,
    required DataStatus pharmaciesListStatus,
  }) = _HomeState;
  factory HomeState.initial() {
    return HomeState(
      upcomingAppointmentsList: [],
      upcomingAppointmentsListStatus: DataStatus.noData,
      departmentsList: [],
      departmentsListStatus: DataStatus.noData,
      doctorsList: [],
      doctorsListStatus: DataStatus.noData,
      pharmaciesList: [],
      pharmaciesListStatus: DataStatus.noData,
    );
  }
}
