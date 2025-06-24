import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../models/app_failure.dart';
import '../models/app_response.dart';

class ChangePasswordRepository {
  ChangePasswordRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse>> sendEmailOtp(String email) async {
    try {
      final response = await _dio.post(
        AppConstants.sendEmailOtpPath,
        data: {'email': email},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'verification email sent successfully, check OTP code',
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Some error occurred');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> sendSMSOtp(String phone) async {
    try {
      final response = await _dio.post(
        AppConstants.sendSMSOtpPath,
        data: {'phone': phone},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'verification phone sent successfully, check OTP code',
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Some error occurred');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<String>>> verifySMSOtp(
    String phone,
    int otp,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.verifySMSOtpPath,
        data: {'phone': phone, 'otp': otp.toString()},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<String>(
            success: true,
            message: ' phone verified successfully',
            data: response.data['reset_token'],
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Some error occurred');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<String>>> verifyEmailOtp(
    String email,
    int otp,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.verifyEmailOtpPath,
        data: {'email': email, 'otp': otp.toString()},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<String>(
            success: true,
            message: ' email verified successfully',
            data: response.data['reset_token'],
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Some error occurred');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> emailResetPassword(
    String email,
    String resetToken,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.resetPasswordPath,
        data: {
          'email': email,
          'reset_token': resetToken,
          'password': password,
          'password_confirmation': password,
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: ' Password changed successfully!',
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Some error occurred');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> phoneResetPassword(
    String phone,
    String resetToken,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.resetPasswordPath,
        data: {
          'phone': phone,
          'reset_token': resetToken,
          'password': password,
          'password_confirmation': password,
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: ' Password changed successfully!',
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Some error occurred');
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
