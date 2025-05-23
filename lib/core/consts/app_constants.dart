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
  static const ipAddress = '192.168.1.7';
  static const serverUrl = 'http://$ipAddress:8000';
  static const patientPath = 'patient';
  static const doctorPath = 'Doctor';
  static const homePath = 'Home';
  static const apiPath = 'api';

  //! Auth
  static const registerPath = '/$apiPath/register';
  static const loginPath = '/$apiPath/login';
  static const logoutPath = '/$apiPath/logout';

  //! Home
  static const showDoctorsPath = '/$apiPath/$homePath/showDoctors';
  static const showDoctorDetailsPath = '/$apiPath/$homePath/showDoctorDetails';
  static const showClinincDoctorsPath =
      '/$apiPath/$homePath/showClinincDoctors';
  static const searchDoctorPath = '/$apiPath/$homePath/searchDoctor';

  //? Patient
  static const completeInfoPath = '/$patientPath/completeInfo';
  static const patientEditProfilePath = '/$patientPath/editProfile';
  static const ratePath = '/$patientPath/rate';
  static const showProfilePath = '/$patientPath/showProfile';
  static const addAnalysisPath = '/$patientPath/addAnalysis';

  //*   Appointment
  static const showAppointmentPath = '/$patientPath/showAppointment';

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
