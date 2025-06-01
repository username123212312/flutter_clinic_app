part of 'appointment_details_bloc.dart';

@freezed
sealed class AppointmentDetailsState with _$AppointmentDetailsState {
  const factory AppointmentDetailsState({
    required AppointmentModel? appointment,
    MedicalInfoModel? medicalInfo,
    String? prescriptionFilePath,
    @Default(0.0) double? downloadProgress,
    required DataStatus status,
    required String statusMessage,
  }) = _AppointmentDetailsState;
  factory AppointmentDetailsState.initial(AppointmentModel appointment) {
    return AppointmentDetailsState(
      appointment: appointment,
      status: DataStatus.noData,
      statusMessage: 'No data',
    );
  }
}
