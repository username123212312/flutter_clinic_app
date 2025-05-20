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
  static const ipAddress = '192.168.1.4';
  static const serverUrl = 'http://$ipAddress:8000/api';
  static const patientPath = 'patient';
  static const doctorPath = 'Doctor';
  static const homePath = 'Home';

  //! Auth
  static const registerPath = 'register';
  static const loginPath = 'login';
  static const logoutPath = 'logout';

  //! Home
  static const showDoctorsPath = '/$homePath/showDoctors';
  static const showDoctorDetailsPath = '/$homePath/showDoctorDetails';
  static const showClinincDoctorsPath = '/$homePath/showClinincDoctors';
  static const searchDoctorPath = '/$homePath/searchDoctor';

  //? Patient
  static const completeInfoPath = '/$patientPath/completeInfo';
  static const patientEditProfilePath = '/$patientPath/editProfile';
  static const ratePath = '/$patientPath/rate';
  static const showProfilePath = '/$patientPath/showProfile';

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
