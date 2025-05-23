import 'package:flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:flutter_clinic_app/features/auth/controller/user_bloc/user_bloc.dart';
import 'package:flutter_clinic_app/features/auth/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

import 'core/repositories/auth_repository.dart';

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
  }
}
