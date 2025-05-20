// downloaded_file.dart
import 'package:hive/hive.dart';

// part 'downloaded_file.g.dart'; // For code generation

@HiveType(typeId: 0)
class DownloadedFile {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String originalUrl;

  @HiveField(2)
  final String localPath;

  @HiveField(3)
  final String fileName;

  @HiveField(4)
  final DateTime downloadDate;

  @HiveField(5)
  final int fileSize; // in bytes

  DownloadedFile({
    required this.id,
    required this.originalUrl,
    required this.localPath,
    required this.fileName,
    required this.downloadDate,
    required this.fileSize,
  });
}
