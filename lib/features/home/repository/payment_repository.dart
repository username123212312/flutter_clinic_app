import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';

class PaymentRepository {
  PaymentRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<Map<String, String>>>>
  createPaymentIntent(double amount) async {
    try {
      final response = await _dio.post(
        AppConstants.createPaymentIntentPath,
        data: {'amount': amount},
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<Map<String, String>>(
            success: true,
            message: 'Payment intent succedded!',
            data: (response.data as Map<String, dynamic>).map((key, value) {
              return MapEntry<String, String>(key, value.toString());
            }),
          ),
        );
      } else {
        throw HttpException('Payment intent is not completed');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> confirmWalletRecharge(
    String paymentIntentId,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.confirmWalletRechargePath,
        data: {'payment_intent_id': paymentIntentId},
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(success: true, message: 'Recharge succedded!'),
        );
      } else {
        throw HttpException('Recharge is not completed');
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
