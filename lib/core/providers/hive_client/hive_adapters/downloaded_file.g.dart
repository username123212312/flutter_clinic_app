// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloaded_file.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DownloadedFileAdapter extends TypeAdapter<DownloadedFile> {
  @override
  final int typeId = 0;

  @override
  DownloadedFile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DownloadedFile(
      id: fields[0] as String,
      originalUrl: fields[1] as String,
      localPath: fields[2] as String,
      fileName: fields[3] as String,
      downloadDate: fields[4] as DateTime,
      fileSize: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DownloadedFile obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.originalUrl)
      ..writeByte(2)
      ..write(obj.localPath)
      ..writeByte(3)
      ..write(obj.fileName)
      ..writeByte(4)
      ..write(obj.downloadDate)
      ..writeByte(5)
      ..write(obj.fileSize);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadedFileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
