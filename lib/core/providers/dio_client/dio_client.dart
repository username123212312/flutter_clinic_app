import '../../consts/app_constants.dart';
import 'app_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  static DioClient? _singleton;

  static late Dio _dio;

  DioClient._() {
    _dio = createDioClient();
  }

  factory DioClient() {
    return _singleton ??= DioClient._();
  }

  Dio get instance => _dio;

  Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.server_url,
        connectTimeout: Duration(milliseconds: 15000),
        receiveTimeout: Duration(milliseconds: 15000),
        sendTimeout: Duration(milliseconds: 15000),
        headers: {
          Headers.acceptHeader: 'application/json',
          Headers.contentTypeHeader: 'application/json',
        },
      ),
    );
    dio.interceptors.addAll([
      AppInterceptors(),
      PrettyDioLogger(
        compact: true,
        error: true,
        maxWidth: 90,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    ]);
    return dio;
  }
}
