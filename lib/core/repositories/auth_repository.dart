import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:fpdart/fpdart.dart';

import '../services/shared_preferences/shared_preferences.dart';
import '../utils/utils.dart';

class AuthRepository {
  final Dio _dio;
  AuthRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<UserModel>>> checkAuthState() async {
    final Response response;
    try {
      response = await _dio.get(AppConstants.authWithTokenPath);
      if (response.data['statusCode']! < 300) {
        return Right(
          AppResponse<UserModel>(
            success: true,
            message: 'Successfully authenticated with token',
            data: UserModel.fromJson(response.data),
            statusCode: response.statusCode,
            statusMessage: response.statusMessage,
          ),
        );
      } else {
        throw (HttpException(response.data['error']));
      }
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse>> sendFCMToken() async {
    try {
      final fcmToken = await SharedPreferencesService().getToken('fcm_token');
      log(fcmToken);
      final response = await _dio.post(
        AppConstants.sendFCMTokenPath,
        data: {'fcm_token': fcmToken},
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'FCM token sent successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException('message');
      }
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }
}
