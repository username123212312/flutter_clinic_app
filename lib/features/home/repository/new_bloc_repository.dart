import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointment_details/appointment_details_bloc.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';

class NewBlocRepository {
  NewBlocRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<UserModel>>> modify({
    required int id,
  }) async {
    try {
      final response = await _dio.post(
        AppRouteConstants.appointmentDetailsRouteName,
        data: {'id': id},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<UserModel>(
            data: response.data['user'],
            success: true,
            message: 'Modified successfully',
          ),
        );
      } else {
        throw HttpException('message');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  final Dio _dio;
}
