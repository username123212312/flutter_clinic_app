// file_manager.dart
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:hive/hive.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';

import '../hive_client/hive_adapters/downloaded_file.dart';

class FileManager {
  static FileManager? _singleton;

  FileManager._();

  factory FileManager() {
    return _singleton ?? FileManager._();
  }

  static final Box<DownloadedFile> _filesBox = Hive.box<DownloadedFile>(
    'downloadedFiles',
  );
  static final DioClient _dioClient = DioClient();

  Future<String?> pickAndUploadPDF(
    void Function(int recieved, int total)? onSendProgress,
  ) async {
    // Request storage permission (Android)
    if (Platform.isAndroid && !await Permission.storage.request().isGranted) {
      return 'Access denied';
    }

    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        File file = File(result.files.single.path!);
        await _uploadPDF(file, onSendProgress);
      }
      return null;
    } catch (e) {
      return 'Some error happened';
    }
  }

  Future<String?> _uploadPDF(
    File file,
    void Function(int recieved, int total)? onSendProgress,
  ) async {
    try {
      FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(file.path),
      });

      var response = await _dioClient.instance.post(
        'https://your-upload-endpoint.com/upload',
        data: formData,
        onSendProgress: onSendProgress,
      );

      return response.data['url']; // Assuming server returns URL
    } catch (e) {
      return 'Some error happened';
    }
  }

  static Future<void> downloadFile(
    String url,
    void Function(int recieved, int total)? onReceiveProgress,
  ) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final fileName = url.split('/').last;
      final savePath = '${dir.path}/$fileName';

      // Check if file already exists
      if (_filesBox.values.any((file) => file.originalUrl == url)) {
        throw Exception('File already downloaded');
      }

      // Download file
      await _dioClient.instance.download(
        url,
        savePath,
        onReceiveProgress: onReceiveProgress,
      );

      // Get file info
      final file = File(savePath);
      final stat = await file.stat();

      // Save metadata to Hive
      final downloadedFile = DownloadedFile(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        originalUrl: url,
        localPath: savePath,
        fileName: fileName,
        downloadDate: DateTime.now(),
        fileSize: stat.size,
      );

      await _filesBox.add(downloadedFile);
    } catch (e) {
      throw Exception('Download failed: $e');
    }
  }

  // Get all downloaded files
  static List<DownloadedFile> getAllFiles() {
    return _filesBox.values.toList();
  }

  // Get file by ID
  static DownloadedFile? getFileById(String id) {
    return _filesBox.values.firstWhere((file) => file.id == id);
  }

  // Open file with default viewer
  static Future<void> openFile(String filePath) async {
    try {
      await OpenFile.open(filePath);
    } catch (e) {
      throw Exception('Could not open file: $e');
    }
  }

  // Delete file and its metadata
  static Future<void> deleteFile(String id) async {
    try {
      final file = getFileById(id);
      if (file != null) {
        // Delete physical file
        final fileEntity = File(file.localPath);
        if (await fileEntity.exists()) {
          await fileEntity.delete();
        }

        // Delete metadata
        final key = _filesBox.keyAt(
          _filesBox.values.toList().indexWhere((f) => f.id == id),
        );
        await _filesBox.delete(key);
      }
    } catch (e) {
      throw Exception('Delete failed: $e');
    }
  }

  // Check if file exists by URL
  static bool isFileDownloaded(String url) {
    return _filesBox.values.any((file) => file.originalUrl == url);
  }
}
