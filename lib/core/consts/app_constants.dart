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
  static const ngrokAddress = 'https://deep-pangolin-normally.ngrok-free.app';
  static const nerminNgrokAddress =
      'https://internal-krill-remotely.ngrok-free.app';
  static const nayaNgrokAddress =
      'https://capable-luckily-tetra.ngrok-free.app';
  static const ipAddress = '192.168.86.76'; //10.0.2.2
  static const localAddress = 'http://$ipAddress:8000';
  static const serverUrl = ngrokAddress;
  static const apiPath = 'api';
  static const patientPath = '/$apiPath/patient';
  static const homePath = '/$apiPath/home';
  static const doctorPath = '/$apiPath/doctor';
  static const labTechPath = '/$apiPath/labtech';

  //! Auth
  static const registerPath = '/$apiPath/register';
  static const loginPath = '/$apiPath/login';
  static const authWithTokenPath = '/$apiPath/getUser';
  static const loginWithGooglePath = '/$apiPath/auth/google';
  static const logoutPath = '/$apiPath/logout';
  static const sendEmailOtpPath = '/$apiPath/send-email-otp';
  static const sendSMSOtpPath = '/$apiPath/send-sms-otp';
  static const verifySMSOtpPath = '/$apiPath/verify-sms-otp';
  static const verifyEmailOtpPath = '/$apiPath/verify-email-otp';
  static const emailResetPasswordPath = '/$apiPath/email_resetPassword';
  static const phoneResetPasswordPath = '/$apiPath/phone_resetPassword';
  static const sendFCMTokenPath = '/$apiPath/saveFcmToken';

  ///? Chat
  static const _baseChat = "/$apiPath/chat";

  static const getChats = _baseChat;
  static const getSingleChat = "$_baseChat/";
  static const createChat = _baseChat;

  ///? Chat message
  static const _baseChatMessage = "/$apiPath/chat_message";

  static const getChatMessages = _baseChatMessage;
  static const createChatMessage = _baseChatMessage;

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

  //* children
  static const addChildPath = '$patientPath/addChild';
  static const deleteChildPath = '$patientPath/deleteChild';
  static const showAllChildrenPath = '$patientPath/showAllChildren';

  //* vaccines
  static const showVaccinationRecordsPath =
      '$patientPath/showVaccinationRecords';
  static const showVaccinationRecordDetailsPath =
      '$patientPath/showVaccinationRecordDetails';
  static const editVaccinationRecordPath = '$patientPath/editVaccinationRecord';
  static const showChildRecordPath = '$patientPath/showChildRecord';
  static const deleteVaccinationRecordPath =
      '$patientPath/deleteVaccinationRecord';

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
  static const doctorRatePath = '$patientPath/rate';

  //? Doctor
  static const doctorProfilePath = '$doctorPath/profile';
  static const availableWorkDaysPath = '$doctorPath/availableWorkDays';
  static const schedulePath = '$doctorPath/schedule';
  static const doctorEditProfilePath = '$doctorPath/editProfile';
  static const doctorShowChildVacRecordsPath = '$doctorPath/showVaccineRecords';
  static const doctorShowChildVacRecordDetailsPath =
      '$doctorPath/showVaccineRecordsDetails';
  static const doctorEditChildVacRecordDetailsPath =
      '$doctorPath/editVaccineRecordInfo';
  static const doctorShowVaccinesPath = '$doctorPath/showVaccines';
  static const deleteFromSchedulePath = '$doctorPath/deleteFromSchedule';
  static const showDoctorReviewsPath = '$doctorPath/showDoctorReviews';
  static const addChildRecordPath = '$doctorPath/addChildRecords';
  static const editChildRecordsPath = '$doctorPath/editChildRecords';
  static const doctorShowChildRecordPath = '$doctorPath/showChildRecord';
  static const showVisitedPatientsPath =
      '$serverUrl/Doctor/patientInfo/patientsRecord';
  static const searchVisitedPatientsPath =
      '$serverUrl/Doctor/patientInfo/searchPatient';
  static const showPatientAnalysisPath =
      '$serverUrl/Doctor/patientInfo/showPatientAnalysis';
  static const showPatientAnalysisByClinicPath =
      '$serverUrl/Doctor/patientInfo/showPatientAnalysisByClinic';
  static const doctorShowClinicPath =
      '$serverUrl/Doctor/patientInfo/showClinics';
  static const showPatientProfilePath =
      '$serverUrl/Doctor/patientInfo/showPatientProfile';

  //* Doctor appointments
  static const doctorshowAppointmantResultsPath =
      '$serverUrl/Doctor/appointments/showAppointmantResults';
  static const doctorShowpatientAppointmentsPath =
      '$serverUrl/Doctor/appointments/showpatientAppointments';
  static const doctorShowAppointmentDetailsPath =
      '$serverUrl/Doctor/appointments/showAppointmentDetails';
  static const doctorShowAllAppointmentsPath =
      '$serverUrl/Doctor/appointments/showAllAppointments';
  static const doctorShowAppointmentsByStatusPath =
      '$serverUrl/Doctor/appointments/showAppointmentsByStatus';
  static const doctorShowAppointmentsByTypePath =
      '$serverUrl/Doctor/appointments/showAppointmentsByType';

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
