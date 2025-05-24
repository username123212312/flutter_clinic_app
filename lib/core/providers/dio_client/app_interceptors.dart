import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/service_locator.dart';

import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../models/app_response.dart';

class AppInterceptors extends Interceptor {
  static AppInterceptors? _singleton;

  AppInterceptors._internal();

  factory AppInterceptors() {
    return _singleton ??= AppInterceptors._internal();
  }
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    /// Tries to add Authorization header only if Authorization header not extisted
    if (!options.headers.containsKey(HttpHeaders.authorizationHeader)) {
      final state = ServiceLocator.instance<AuthBloc>().state;

      if (state.token != null) {
        options.headers[HttpHeaders.authorizationHeader] =
            'Bearer ${state.token}';
      }
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    /// Maps custom response
    final responseData = mapResponseData(
      requestOptions: response.requestOptions,
      response: response,
    );

    return handler.resolve(responseData);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    /// Gets custom error message
    final errorMessage = getErrorMessage(err.type, err.response?.statusCode);

    /// Maps custom response
    final responseData = mapResponseData(
      requestOptions: err.requestOptions,
      response: err.response,
      customMessage: errorMessage,
      isErrorResponse: true,
    );

    return handler.resolve(responseData);
  }
}

String getErrorMessage(DioExceptionType errorType, int? statusCode) {
  String errorMessage = "";
  switch (errorType) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      errorMessage = DioExceptionMessage.deadlineExceededException;
      break;
    case DioExceptionType.badResponse:
      switch (statusCode) {
        case 400:
          errorMessage = DioExceptionMessage.badRequestException;
          break;
        case 401:
          errorMessage = DioExceptionMessage.unauthorizedException;
          break;
        case 404:
          errorMessage = DioExceptionMessage.notFoundException;
          break;
        case 409:
          errorMessage = DioExceptionMessage.conflictException;
          break;
        case 500:
          errorMessage = DioExceptionMessage.internalServerErrorException;
          break;
      }
      break;
    case DioExceptionType.cancel:
      break;
    default:
      errorMessage = DioExceptionMessage.unexpectedException;
      break;
  }
  return errorMessage;
}

class DioExceptionMessage {
  static const badRequestException = "Invalid request";
  static const internalServerErrorException =
      "Unknown error occurred, please try again later.";
  static const conflictException = "Conflict occurred";
  static const unauthorizedException = "Access denied";
  static const notFoundException =
      "The requested information could not be found";
  static const unexpectedException = "Unexpected error occurred.";
  static const noInternetConnectionException =
      "No internet connection detected, please try again.";
  static const deadlineExceededException =
      "The connection has timed out, please try again.";
}

Response<dynamic> mapResponseData({
  Response<dynamic>? response,
  required RequestOptions requestOptions,
  String customMessage = "",
  bool isErrorResponse = false,
}) {
  final bool hasResponseData = response?.data != null;

  Map<String, dynamic>? responseData = {};
  if (response?.data is List<dynamic>) {
    responseData.addAll({"items": response?.data});
  } else if (response?.data is ResponseBody) {
    responseData.addAll({'stream': response?.data.toString()});
  } else {
    responseData = response?.data;
  }

  if (hasResponseData) {
    responseData!.addAll({
      "statusCode": response?.statusCode,
      "statusMessage": response?.statusMessage,
    });
  }

  return Response(
    requestOptions: requestOptions,
    data:
        hasResponseData
            ? responseData
            : AppResponse(
              message: customMessage,
              success: isErrorResponse ? false : true,
              statusCode: response?.statusCode,
              statusMessage: response?.statusMessage,
            ).toJson((value) => null),
  );
}
