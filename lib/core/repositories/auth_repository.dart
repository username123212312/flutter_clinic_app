import 'dart:io';

import 'package:dio/dio.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/models/authuser.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepository {
  final Dio _dio;
  AuthRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<UserModel>>> checkAuthState() async {
    final Response response;
    try {
      response = await _dio.get(AppConstants.showProfilePath);
      eLog(response.data);
      if (response.data['statusCode']! < 300) {
        return Right(
          AppResponse<UserModel>(
            success: true,
            message: response.data['message'],
            data: UserModel.fromJson(response.data['data']),
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
}
