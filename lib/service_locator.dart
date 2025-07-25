import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/repositories/chat_message_repository.dart';
import 'package:our_flutter_clinic_app/core/repositories/user_repository.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/repository/analysis_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:our_flutter_clinic_app/features/home/repository/appointments_repository.dart';
import 'package:our_flutter_clinic_app/features/home/repository/home_repository.dart';

import 'core/blocs/chat_bloc/chat_bloc.dart';
import 'core/cubits/change_password_cubit/change_password_cubit.dart';
import 'core/repositories/auth_repository.dart';
import 'core/repositories/change_password_repository.dart';
import 'core/repositories/chat_repository.dart';
import 'features/home/controller/analysis_list_bloc/analysis_list_bloc.dart';
import 'features/home/controller/chat_doctors_list_cubit/chat_doctors_list_cubit.dart';
import 'features/home/controller/doctor_appointments_bloc/doctor_appointments_bloc.dart';
import 'features/home/controller/doctor_patients_bloc/doctor_patients_bloc.dart';
import 'features/home/controller/home_bloc/home_bloc.dart';
import 'features/home/controller/labtech_analysis_bloc/labtech_analysis_bloc.dart';
import 'features/home/controller/labtech_analysis_info/labtech_analysis_info_bloc.dart';
import 'features/home/controller/select_vaccination_cubit/select_vaccination_cubit.dart';
import 'features/home/repository/doctor_appointments_repository.dart';
import 'features/home/repository/labtech_analysis_repository.dart';

class ServiceLocator {
  static final GetIt _instance = GetIt.instance;

  static GetIt get instance => _instance;

  static Future<void> setup() async {
    _instance.registerFactory<AuthRepository>(() => AuthRepository());

    _instance.registerSingleton<AuthBloc>(
      AuthBloc(authRepository: _instance<AuthRepository>()),
      dispose: (bloc) => bloc.close(),
    );
    _instance.registerFactory<UserRepository>(() => UserRepository());
    _instance.registerSingleton<UserBloc>(
      UserBloc(
        authBloc: _instance<AuthBloc>(),
        userRepository: _instance<UserRepository>(),
      ),
    );
    _instance.registerFactory<AnalysisRepository>(() => AnalysisRepository());

    _instance.registerLazySingleton<AnalysisListBloc>(
      () =>
          AnalysisListBloc(analysisRepository: _instance<AnalysisRepository>()),
    );

    _instance.registerLazySingleton<AppointmentsRepository>(
      () => AppointmentsRepository(),
    );
    _instance.registerLazySingleton<AppointmentsBloc>(
      () => AppointmentsBloc(
        appointmentsRepository: _instance<AppointmentsRepository>(),
      ),
    );
    _instance.registerLazySingleton<LabtechAnalysisRepository>(
      () => LabtechAnalysisRepository(),
    );
    _instance.registerLazySingleton<LabtechAnalysisBloc>(
      () => LabtechAnalysisBloc(
        labtechAnalysisRepository: _instance<LabtechAnalysisRepository>(),
      ),
    );

    _instance.registerLazySingleton<HomeRepository>(() => HomeRepository());
    _instance.registerLazySingleton<HomeBloc>(
      () => HomeBloc(homeRepository: _instance<HomeRepository>()),
    );
    _instance.registerLazySingleton<ChangePasswordRepository>(
      () => ChangePasswordRepository(),
    );
    _instance.registerLazySingleton<ChangePasswordCubit>(
      () => ChangePasswordCubit(
        changePasswordRepository: _instance<ChangePasswordRepository>(),
      ),
    );
    _instance.registerLazySingleton(() => DoctorAppointmentsRepository());
    _instance.registerLazySingleton(
      () => DoctorAppointmentsBloc(
        doctorAppointmentsRepository: _instance<DoctorAppointmentsRepository>(),
      ),
    );
    _instance.registerLazySingleton(() => DoctorPatientsBloc());
    _instance.registerLazySingleton(() => ChatMessageRepository());
    _instance.registerLazySingleton(() => ChatRepository());
    _instance.registerLazySingleton(() => ChatDoctorsListCubit());
    _instance.registerLazySingleton(() => SelectVaccinationCubit());

    _instance.registerLazySingleton(
      () => ChatBloc(
        chatMessageRepository: _instance<ChatMessageRepository>(),
        chatRepository: _instance<ChatRepository>(),
      ),
    );
  }
}
