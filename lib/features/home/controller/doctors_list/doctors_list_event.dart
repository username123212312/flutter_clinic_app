part of 'doctors_list_bloc.dart';

@freezed
sealed class DoctorsListEvent with _$DoctorsListEvent {
  const factory DoctorsListEvent.fetched({
    required List<DoctorModel> doctorsList,
  }) = Fetched;
  const factory DoctorsListEvent.search({required String query}) = Searched;
  const factory DoctorsListEvent.searchedWithFilter({
    required String query,
    required String filter,
  }) = SearchedWithFilter;
  const factory DoctorsListEvent.filter({required String filter}) = Filter;
}
