import 'package:dio/dio.dart';
import 'package:flutter_clinic_app/core/consts/app_constants.dart';
import 'package:flutter_clinic_app/core/models/app_response.dart';
import 'package:flutter_clinic_app/core/models/usermodel.dart';
import 'package:flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../model/requests/auth_requests.dart';

class AuthRepository {
  AuthRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<AppResponse<UserModel>> registerPatient(
    RegisterPatientRequest request,
  ) async {
    final response = await _dio.post(
      AppConstants.registerPath,
      data: request.toJson(),
    );
    return AppResponse<UserModel>.fromJson(
      response.data,
      (dynamic json) =>
          json != null && (json.statusCode >= 200 && json.statusCode < 300)
              ? UserModel.fromJson(json['user'])
              : UserModel(),
    );
  }

  final Dio _dio;
}
