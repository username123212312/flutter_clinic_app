part of 'appointment_details_bloc.dart';

@freezed
class AppointmentDetailsEvent with _$AppointmentDetailsEvent {
  const factory AppointmentDetailsEvent.appointmentFetched() =
      AppointmentFetched;
  const factory AppointmentDetailsEvent.prescriptionDownloaded({
    required int prescriptionId,
  }) = PrescriptionDownloaded;
}
