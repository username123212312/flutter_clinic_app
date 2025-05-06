part of 'doctors_list_bloc.dart';

@freezed
sealed class DoctorsListState with _$DoctorsListState {
  const factory DoctorsListState.initial({
    required List<DoctorModel> doctorsList,
    String? department,
  }) = _Initial;
  const factory DoctorsListState.modified({
    required List<DoctorModel> doctorsList,
  }) = _Modified;
}
