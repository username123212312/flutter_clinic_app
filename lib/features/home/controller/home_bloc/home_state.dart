part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required List upcomingAppointmentsList,
    required List departmentsList,
    required List doctorsList,
    required List pharmaciesList,
  }) = _HomeState;
  factory HomeState.initial() {
    return HomeState(
      upcomingAppointmentsList: [],
      departmentsList: [],
      doctorsList: [],
      pharmaciesList: [],
    );
  }
}
