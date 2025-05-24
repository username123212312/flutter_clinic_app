import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_clinic_app/core/models/downloaded_file.dart';
import 'package:flutter_clinic_app/core/providers/file_manager/file_manager.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/models/app_failure.dart';

class AnalysisItemRepository {
  Future<Either<AppFailure, DownloadedFile>> downloadFile(
    String url,
    void Function(double progressValue)? onRecieveProgress,
  ) async {
    try {
      final result = await FileManager.downloadFile(
        url,
        onReceiveProgress: (received, total) {
          if (onRecieveProgress != null) {
            onRecieveProgress((received / total) * 100);
          }
        },
      );
      return Right(
        DownloadedFile(
          fileName: result.fileName,
          fileSize: result.fileSize,
          originalUrl: result.originalUrl,
          localPath: result.localPath,
          downloadDate: result.downloadDate,
        ),
      );
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }
}
