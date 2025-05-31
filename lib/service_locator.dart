import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/features/auth/repository/user_repository.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/repository/analysis_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:our_flutter_clinic_app/features/home/repository/appointments_repository.dart';

import 'core/repositories/auth_repository.dart';
import 'features/home/controller/analysis_list_bloc/analysis_list_bloc.dart';

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

    _instance.registerFactory<AppointmentsRepository>(
      () => AppointmentsRepository(),
    );
    _instance.registerFactory<AppointmentsBloc>(
      () => AppointmentsBloc(
        appointmentsRepository: _instance<AppointmentsRepository>(),
      ),
    );
  }
}
