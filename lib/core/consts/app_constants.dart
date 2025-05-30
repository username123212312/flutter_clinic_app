// ignore_for_file: non_constant_identifier_names

class AppConstants {
  static const List<String> bloodTypes = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];
  static const ipAddress = '192.168.1.3';
  static const serverUrl = 'http://$ipAddress:8000';
  static const patientPath = 'patient';
  static const doctorPath = 'Doctor';
  static const homePath = 'Home';
  static const apiPath = 'api';

  //! Auth
  static const registerPath = '/$apiPath/register';
  static const loginPath = '/$apiPath/login';
  static const loginWithGooglePath = '/$apiPath/auth/google';
  static const logoutPath = '/$apiPath/logout';

  //! Home
  static const showDoctorsPath = '/$homePath/showDoctors';
  static const showDoctorDetailsPath = '/$apiPath/$homePath/showDoctorDetails';
  static const showClinicDoctorsPath = '/$homePath/showClinicDoctors';
  static const searchDoctorPath = '/$homePath/searchDoctor';
  static const showClinicsPath = '/$homePath/showClinics';

  //? Patient
  static const completeInfoPath = '/$patientPath/completeInfo';
  static const patientEditProfilePath = '/$patientPath/editProfile';
  static const ratePath = '/$patientPath/rate';
  static const showProfilePath = '/$patientPath/showProfile';
  static const addAnalysisPath = '/$patientPath/addAnalysis';
  static const deleteAnalysisPath = '/$patientPath/deleteAnalysis';
  static const showAnalysisPath = '/$patientPath/showAnalysis';
  static const filteringAnalysisPath = '/$patientPath/filteringAnalysis';

  //*   Appointment
  static const showAppointmentPath = '/$patientPath/showAppointment';
  static const showAppointmentResultsPath =
      '/$patientPath/showAppointmentResults';
  static const showAppointmentInfoPath = '/$patientPath/showAppointmentInfo';
  static const editReservationPath = '/$patientPath/editReservation';
  static const cancelReservationPath = '/$patientPath/cancelReservation';
  static const downloadPerscriptionPath = '/$patientPath/downloadPrescription';

  //*   Reservation
  static const showDoctorWorkDaysPath = '/$patientPath/showDoctorWorkDays';
  static const showTimesPath = '/$patientPath/showTimes';
  static const addReservationPath = '/$patientPath/addReservation';

  //? Doctor
  static const profilePath = '/$doctorPath/profile';
  static const availableWorkDaysPath = '/$doctorPath/availableWorkDays';
  static const schedulePath = '/$doctorPath/schedule';
  static const doctorEditProfilePath = '/$doctorPath/editProfile';
}
