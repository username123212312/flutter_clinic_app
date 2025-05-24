// Simplified file_manager.dart (Hive removed, Dio retained)
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_clinic_app/core/consts/app_constants.dart';
import 'package:flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:flutter_clinic_app/core/utils/logger.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../models/downloaded_file.dart';

class FileManager {
  static final FileManager _singleton = FileManager._internal();

  FileManager._internal();

  factory FileManager() => _singleton;

  static final DioClient _dioClient = DioClient();

  Future<String?> pickAndUploadPDF({
    void Function(int received, int total)? onSendProgress,
  }) async {
    if (Platform.isAndroid && !await Permission.storage.request().isGranted) {
      return 'Access denied';
    }

    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);
        return await uploadFile(file, onSendProgress: onSendProgress);
      }
      return null;
    } catch (e) {
      return 'Error picking/uploading PDF: \$e';
    }
  }

  Future<String?> pickAndUploadImage({
    void Function(int received, int total)? onSendProgress,
  }) async {
    if (Platform.isAndroid && !await Permission.storage.request().isGranted) {
      return 'Access denied';
    }

    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);
        return await uploadFile(file, onSendProgress: onSendProgress);
      }
      return null;
    } catch (e) {
      return 'Error picking/uploading image: \$e';
    }
  }

  static Future<String?> uploadFile(
    File file, {
    void Function(int received, int total)? onSendProgress,
  }) async {
    try {
      final formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(file.path),
      });

      final response = await _dioClient.instance.post(
        'https://your-upload-endpoint.com/upload',
        data: formData,
        onSendProgress: onSendProgress,
      );

      return response.data['url'];
    } catch (e) {
      return 'Upload failed: \$e';
    }
  }

  static Future<DownloadedFile> downloadFile(
    String url, {
    void Function(int received, int total)? onReceiveProgress,
  }) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final fileName = url.split('/').last;
      final savePath = '${dir.path}/$fileName';

      final response = await Dio(
        BaseOptions(
          baseUrl: AppConstants.serverUrl,
          connectTimeout: Duration(milliseconds: 15000),
          receiveTimeout: Duration(milliseconds: 15000),
          sendTimeout: Duration(milliseconds: 15000),
          headers: {
            Headers.acceptHeader: 'application/json',

            Headers.contentTypeHeader: 'application/json',
          },
          followRedirects: true,

          validateStatus: (status) => status! < 500,
        ),
      ).download(url, savePath, onReceiveProgress: onReceiveProgress);

      if (response.statusCode == 200) {
        eLog('Download completed: $savePath');
        eLog((response.data as ResponseBody).headers);
        eLog(response.statusCode);
        // You can now open the file or notify the user
      } else {
        eLog('Download failed with status: ${response.statusCode}');
      }

      final file = File(savePath);

      final stat = await file.stat();

      return DownloadedFile(
        originalUrl: url,
        localPath: savePath,
        fileName: fileName,
        fileSize: stat.size,
        downloadDate: DateTime.now(),
      );
    } catch (e) {
      throw Exception('Download failed: \$e');
    }
  }

  static Future<void> openFile(String filePath) async {
    try {
      await OpenFilex.open(filePath);
    } catch (e) {
      throw Exception('Could not open file: \$e');
    }
  }

  static Future<void> deleteAllStoredFiles() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final files = dir.listSync();
      await HydratedBloc.storage.clear();
      for (var fileEntity in files) {
        if (fileEntity is File) {
          await fileEntity.delete();
          eLog('Deleted file: ${fileEntity.path}');
        }
      }

      eLog('All stored files deleted.');
    } catch (e) {
      throw Exception('Failed to delete stored files: $e');
    }
  }
}
