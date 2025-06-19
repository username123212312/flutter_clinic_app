import 'dart:io';

import 'package:dio/dio.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/services/google_auth_service/google_auth_service.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/home_requests.dart';
import 'package:fpdart/fpdart.dart';

import '../models/app_failure.dart';
import '../utils/utils.dart';
import '../../features/auth/model/requests/auth_requests.dart';

class UserRepository {
  UserRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<UserModel>>> registerPatient(
    RegisterPatientRequest request,
  ) async {
    try {
      final isPhone = request.email == null || request.email!.trim().isEmpty;
      final response = await _dio.post(
        AppConstants.registerPath,
        data: {
          if (!isPhone) 'email': request.email,
          if (isPhone) 'phone': request.phone,
          'password': request.password,
          'password_confirmation': request.passwordConfirmation,
        },
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<UserModel>(
            success: response.data['statusCode'] < 300,
            message: 'User created successfully!',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                response.data['user'] == null
                    ? null
                    : UserModel.fromJson(
                      response.data['user'],
                    ).copyWith(token: response.data['token']),
          ),
        );
      } else {
        return throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      eLog(StackTrace.current);
      return Left(
        AppFailure(
          message: e.message ?? 'Some error occurred',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      eLog(StackTrace.current);
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> logUserIn(
    LogPatientInRequest request,
  ) async {
    final isPhone = request.email == null || request.email!.trim().isEmpty;
    try {
      final response = await _dio.post(
        AppConstants.loginPath,
        data: {
          if (!isPhone) 'email': request.email,
          if (isPhone) 'phone': request.phone,
          'password': request.password,
        },
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            message:
                response.data['statusCode'] < 300
                    ? response.data['message']
                    : response.data['error'],
            success: response.data['statusCode'] < 300,
            data:
                response.data['statusCode'] < 300
                    ? UserModel.fromJson(
                      response.data['user'],
                    ).copyWith(token: response.data['token'])
                    : null,
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['error'] ?? 'Some error occurred');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>>
  logUserInWithGoogle() async {
    try {
      final userMap = await GoogleAuthService().signIn();
      if (userMap != null) {
        final idToken = userMap['idToken'];
        eLog(userMap.toString());
        final response = await _dio.post(
          AppConstants.loginWithGooglePath,
          data: {'id_token': idToken},
        );
        if (response.data['statusCode'] < 300) {
          return Right(
            AppResponse(
              success: true,
              message: 'User Logged in successfully',
              statusCode: response.data['statusCode'],
              statusMessage: response.data['statusMessage'],
              data: UserModel.fromJson(
                response.data['user'],
              ).copyWith(token: response.data['token'], role: Role.patient),
            ),
          );
        } else {
          throw HttpException('Error happened');
        }
      } else {
        return Left(AppFailure(message: 'No user'));
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse>> logUserOut() async {
    try {
      final response = await _dio.post(AppConstants.logoutPath);
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(success: true, message: 'User successfully logged out'),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Error');
      }
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> completeUserInfo(
    CompleteUserInfoRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.completeInfoPath,
        data: {
          if (request.firstName != null) 'first_name': request.firstName,
          if (request.lastName != null) 'last_name': request.lastName,
          if (request.age != null) 'age': request.age,
          if (request.gender != null) 'gender': request.gender,
          if (request.bloodType != null) 'blood_type': request.bloodType,
          if (request.address != null) 'address': request.address,
        },
      );
      if (response.data['statusCode'] < 300) {
        wLog(response.data);

        return Right(
          AppResponse<UserModel>(
            success: true,
            message: response.data['message'],
            data: UserModel.fromJson(response.data['data']),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['message'][0]);
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> modifyUserInfo(
    CompleteUserInfoRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.patientEditProfilePath,
        data: {
          if (request.firstName != null) 'first_name': request.firstName,
          if (request.lastName != null) 'last_name': request.lastName,
          if (request.email != null) 'email': request.email,
          if (request.phone != null) 'phone': request.phone,
          if (request.gender != null) 'gender': request.gender,
          if (request.age != null) 'age': request.age,
          if (request.address != null) 'address': request.address,
          if (request.bloodType != null) 'blood_type': request.bloodType,
        },
      );
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        wLog(response.data);

        return Right(
          AppResponse<UserModel>(
            success: true,
            message: response.data['message'],
            data: UserModel.fromJson(response.data['data']),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> modifyUserPassword(
    ModifyPasswordRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.patientEditProfilePath,
        data: {
          'password': request.newPassword,
          'old_password': request.oldPassword,
          'password_confirmation': request.newPassword,
        },
      );
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        wLog(response.data);

        return Right(
          AppResponse<UserModel>(
            success: true,
            message: response.data['message'],
            data: UserModel.fromJson(response.data['data']),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  final Dio _dio;
}
