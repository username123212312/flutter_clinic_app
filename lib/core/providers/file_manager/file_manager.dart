// Simplified file_manager.dart (Hive removed, Dio retained)
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/logger.dart';
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

  static Future<File> convertLargeBase64ToPdf({
    required String base64String,
    required String fileName,
    void Function(double progress)? onProgress,
  }) async {
    try {
      // Get the application documents directory
      final Directory directory =
          await getExternalStorageDirectory() ??
          await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';
      final file = File(filePath);

      // Remove data URI prefix if present
      final cleanBase64 = base64String.replaceFirst(
        RegExp(r'^data:application\/pdf;base64,'),
        '',
      );

      // Open the file for writing
      final sink = file.openWrite();

      // Process in chunks to avoid memory issues
      const chunkSize = 1024; // Adjust based on testing
      var bytesProcessed = 0;
      final totalBytes = cleanBase64.length;

      for (var i = 0; i < cleanBase64.length; i += chunkSize) {
        final end = (i + chunkSize).clamp(0, cleanBase64.length);
        final chunk = cleanBase64.substring(i, end);

        // Decode and write chunk
        final decodedBytes = base64.decode(chunk);
        sink.add(decodedBytes);

        // Update progress
        bytesProcessed += chunk.length;
        final progress = bytesProcessed / totalBytes;
        onProgress?.call(progress);

        // Yield to event loop to keep UI responsive
        await Future.delayed(Duration.zero);
      }

      // Close the file
      await sink.close();

      return file;
    } catch (e) {
      log('Error converting large base64 to PDF: $e');
      throw Exception('Failed to convert large PDF: ${e.toString()}');
    }
  }

  static Future<void> deleteAllStoredFiles() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final exDir = await getExternalStorageDirectory();
      await HydratedBloc.storage.clear();

      if (exDir != null) {
        final files = exDir.listSync();
        for (var fileEntity in files) {
          if (fileEntity is File) {
            await fileEntity.delete();
            eLog('Deleted file: ${fileEntity.path}');
          }
        }
      }
      final files = dir.listSync();
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
