import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/pharmacy_model.dart';

class PharmaciesRepository {
  PharmaciesRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<PharmacyModel>>>>
  fetchAllPharmacies() async {
    try {
      final response = await _dio.get(AppConstants.showAllPharmaciesPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<PharmacyModel>>(
            success: true,
            message: 'Pharmacies fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((pharmacy) {
                  return PharmacyModel.fromJson(pharmacy);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Pharmacies are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<PharmacyModel>>>>
  searchPharmacyByName(String query) async {
    try {
      final response = await _dio.post(
        AppConstants.searchPharmacyByNamePath,
        data: {'name': query},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<PharmacyModel>>(
            success: true,
            message: 'Pharmacies fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((pharmacy) {
                  return PharmacyModel.fromJson(pharmacy);
                }).toList(),
          ),
        );
      } else if (response.data['statusCode'] == 404) {
        return Right(
          AppResponse<List<PharmacyModel>>(
            success: true,
            message: 'not found',
            data: [],
          ),
        );
      } else {
        throw HttpException('Pharmacies are not fetched');
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
