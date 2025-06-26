part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.allListsFetched() = AllListsFetched;
  const factory HomeEvent.notificationsCountFetched() =
      NotificationCountFetched;
  const factory HomeEvent.upcomingAppointmentsFetched() =
      UpcomingAppointmentsFetched;
  const factory HomeEvent.departmentsFetched() = DepartmentsFetched;
  const factory HomeEvent.doctorsFetched() = DoctorsFetched;
  const factory HomeEvent.allDoctorsFetched() = AllDoctorsFetched;
  const factory HomeEvent.doctorSearched(String query) = DoctorSearched;
  const factory HomeEvent.pharmaciesFetched() = PharmaciesFetched;
}
