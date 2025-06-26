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
  static const ipAddress = '192.168.1.4'; //10.0.2.2
  static const localAddress = 'http://$ipAddress:8000';
  static const ngrokAddress = 'https://deep-pangolin-normally.ngrok-free.app';
  static const serverUrl = ngrokAddress;
  static const apiPath = 'api';
  static const patientPath = '/$apiPath/patient';
  static const homePath = '/$apiPath/home';
  static const doctorPath = '/$apiPath/doctor';
  static const labTechPath = '/$apiPath/labtech';

  //! Auth
  static const registerPath = '/$apiPath/register';
  static const loginPath = '/$apiPath/login';
  static const authWithTokenPath = '/$apiPath/user';
  static const loginWithGooglePath = '/$apiPath/auth/google';
  static const logoutPath = '/$apiPath/logout';
  static const sendEmailOtpPath = '/$apiPath/send-email-otp';
  static const sendSMSOtpPath = '/$apiPath/send-sms-otp';
  static const verifySMSOtpPath = '/$apiPath/verify-sms-otp';
  static const verifyEmailOtpPath = '/$apiPath/verify-email-otp';
  static const resetPasswordPath = '/$apiPath/resetPassword';
  static const sendFCMTokenPath = '/$apiPath/saveFcmToken';

  //! Home
  static const showDoctorsPath = '$homePath/showDoctors';
  static const showTopRatedDoctorsPath = '$homePath/topRatedDoctors';
  static const showDoctorDetailsPath = '$homePath/showDoctorDetails';
  static const showClinicDoctorsPath = '$homePath/showClinicDoctors';
  static const searchDoctorPath = '$homePath/searchDoctor';
  static const showClinicsPath = '$homePath/showClinics';
  static const showAllPharmaciesPath = '$homePath/showAllPharmacies';
  static const searchPharmacyByNamePath = '$homePath/searchPharmacy';
  static const getUnreadNotificationsCountPath =
      '/$apiPath/getUnreadNotificationsCount';
  static const getAllNotificationsPath = '/$apiPath/getAllNotifications';

  //? Patient
  static const completeInfoPath = '$patientPath/completeInfo';
  static const patientEditProfilePath = '$patientPath/editProfile';
  static const ratePath = '$patientPath/rate';
  static const showProfilePath = '$patientPath/showProfile';
  static const addAnalysisPath = '$patientPath/addAnalysis';
  static const deleteAnalysisPath = '$patientPath/deleteAnalysis';
  static const showAnalysisPath = '$patientPath/showAnalysis';
  static const filteringAnalysisPath = '$patientPath/filteringAnalysis';
  static const reportPath = '$patientPath/makeReport';

  //*   Appointment
  static const showAppointmentPath = '$patientPath/showAppointment';
  static const showAppointmentResultsPath =
      '$patientPath/showAppointmentResults';
  static const showAppointmentInfoPath = '$patientPath/showAppointmentInfo';
  static const addReservationPath = '$patientPath/addReservation';
  static const editReservationPath = '$patientPath/editReservation';
  static const cancelReservationPath =
      '$patientPath/cancelReservationAndRefund';
  static const downloadPerscriptionPath = '$patientPath/downloadPrescription';

  //*   Reservation
  static const showDoctorWorkDaysPath = '$patientPath/showDoctorWorkDays';
  static const showTimesPath = '$patientPath/showTimes';

  //*   Payment
  static const createPaymentIntentPath = '$patientPath/createPaymentIntent';
  static const confirmWalletRechargePath = '$patientPath/confirmWalletRecharge';
  static const showWalletRangePath = '$patientPath/showWalletRange';
  static const createReservationPaymentIntentPath =
      '$patientPath/createReservationPaymentIntent';
  static const reservationPaymentPath = '$patientPath/ReservationPayment';
  static const setReminderPath = '$patientPath/setReminder';

  //? Doctor
  static const profilePath = '$doctorPath/profile';
  static const availableWorkDaysPath = '$doctorPath/availableWorkDays';
  static const schedulePath = '$doctorPath/schedule';
  static const doctorEditProfilePath = '$doctorPath/editProfile';

  //? Labtech
  static const labTechAddAnalysePath = '$labTechPath/addAnalyse';
  static const labTechAddAnalyseBillPath = '$labTechPath/addBill';
  static const labTechAddAnalyseResultPath = '$labTechPath/addAnalyseResult';
  static const labTechShowAllAnalysisPath = '$labTechPath/showAllAnalysis';
  static const labTechShowAnalysePath = '$labTechPath/showAnalyse';
  static const labTechSearchAnalysisByNamePath =
      '$labTechPath/searchAnalyseByName';
  static const labTechSearchAnalyseByPatientNumPath =
      '$labTechPath/searchAnalyseByPatientNum';
  static const labTechShowClinicsPath = '$labTechPath/showClinics';
}
