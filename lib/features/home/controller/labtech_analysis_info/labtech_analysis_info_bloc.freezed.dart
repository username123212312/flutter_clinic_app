// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labtech_analysis_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabtechAnalysisEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LabtechAnalysisEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LabtechAnalysisEvent()';
  }
}

/// @nodoc
class $LabtechAnalysisEventCopyWith<$Res> {
  $LabtechAnalysisEventCopyWith(
      LabtechAnalysisEvent _, $Res Function(LabtechAnalysisEvent) __);
}

/// @nodoc

class AnalysisResultAdded implements LabtechAnalysisEvent {
  const AnalysisResultAdded({required this.request});

  final AddAnalysisResultRequest request;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisResultAddedCopyWith<AnalysisResultAdded> get copyWith =>
      _$AnalysisResultAddedCopyWithImpl<AnalysisResultAdded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisResultAdded &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @override
  String toString() {
    return 'LabtechAnalysisEvent.analysisResultAdded(request: $request)';
  }
}

/// @nodoc
abstract mixin class $AnalysisResultAddedCopyWith<$Res>
    implements $LabtechAnalysisEventCopyWith<$Res> {
  factory $AnalysisResultAddedCopyWith(
          AnalysisResultAdded value, $Res Function(AnalysisResultAdded) _then) =
      _$AnalysisResultAddedCopyWithImpl;
  @useResult
  $Res call({AddAnalysisResultRequest request});

  $AddAnalysisResultRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$AnalysisResultAddedCopyWithImpl<$Res>
    implements $AnalysisResultAddedCopyWith<$Res> {
  _$AnalysisResultAddedCopyWithImpl(this._self, this._then);

  final AnalysisResultAdded _self;
  final $Res Function(AnalysisResultAdded) _then;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
  }) {
    return _then(AnalysisResultAdded(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddAnalysisResultRequest,
    ));
  }

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddAnalysisResultRequestCopyWith<$Res> get request {
    return $AddAnalysisResultRequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc

class DownloadFile implements LabtechAnalysisEvent {
  const DownloadFile();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DownloadFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LabtechAnalysisEvent.downloadFile()';
  }
}

/// @nodoc

class DownloadPhoto implements LabtechAnalysisEvent {
  const DownloadPhoto();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DownloadPhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LabtechAnalysisEvent.downloadPhoto()';
  }
}

/// @nodoc
mixin _$LabtechAnalysisInfoState {
  AnalysisModel get analysis;
  DataStatus get status;
  String get message;
  DownloadedFile? get downloadedFile;
  DownloadedFile? get downloadedPhoto;

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabtechAnalysisInfoStateCopyWith<LabtechAnalysisInfoState> get copyWith =>
      _$LabtechAnalysisInfoStateCopyWithImpl<LabtechAnalysisInfoState>(
          this as LabtechAnalysisInfoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabtechAnalysisInfoState &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.downloadedFile, downloadedFile) ||
                other.downloadedFile == downloadedFile) &&
            (identical(other.downloadedPhoto, downloadedPhoto) ||
                other.downloadedPhoto == downloadedPhoto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, analysis, status, message, downloadedFile, downloadedPhoto);

  @override
  String toString() {
    return 'LabtechAnalysisInfoState(analysis: $analysis, status: $status, message: $message, downloadedFile: $downloadedFile, downloadedPhoto: $downloadedPhoto)';
  }
}

/// @nodoc
abstract mixin class $LabtechAnalysisInfoStateCopyWith<$Res> {
  factory $LabtechAnalysisInfoStateCopyWith(LabtechAnalysisInfoState value,
          $Res Function(LabtechAnalysisInfoState) _then) =
      _$LabtechAnalysisInfoStateCopyWithImpl;
  @useResult
  $Res call(
      {AnalysisModel analysis,
      DataStatus status,
      String message,
      DownloadedFile? downloadedFile,
      DownloadedFile? downloadedPhoto});

  $AnalysisModelCopyWith<$Res> get analysis;
  $DownloadedFileCopyWith<$Res>? get downloadedFile;
  $DownloadedFileCopyWith<$Res>? get downloadedPhoto;
}

/// @nodoc
class _$LabtechAnalysisInfoStateCopyWithImpl<$Res>
    implements $LabtechAnalysisInfoStateCopyWith<$Res> {
  _$LabtechAnalysisInfoStateCopyWithImpl(this._self, this._then);

  final LabtechAnalysisInfoState _self;
  final $Res Function(LabtechAnalysisInfoState) _then;

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis = null,
    Object? status = null,
    Object? message = null,
    Object? downloadedFile = freezed,
    Object? downloadedPhoto = freezed,
  }) {
    return _then(_self.copyWith(
      analysis: null == analysis
          ? _self.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AnalysisModel,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      downloadedFile: freezed == downloadedFile
          ? _self.downloadedFile
          : downloadedFile // ignore: cast_nullable_to_non_nullable
              as DownloadedFile?,
      downloadedPhoto: freezed == downloadedPhoto
          ? _self.downloadedPhoto
          : downloadedPhoto // ignore: cast_nullable_to_non_nullable
              as DownloadedFile?,
    ));
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res> get analysis {
    return $AnalysisModelCopyWith<$Res>(_self.analysis, (value) {
      return _then(_self.copyWith(analysis: value));
    });
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedFile {
    if (_self.downloadedFile == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_self.downloadedFile!, (value) {
      return _then(_self.copyWith(downloadedFile: value));
    });
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedPhoto {
    if (_self.downloadedPhoto == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_self.downloadedPhoto!, (value) {
      return _then(_self.copyWith(downloadedPhoto: value));
    });
  }
}

/// @nodoc

class _LabtechAnalysisInfoState implements LabtechAnalysisInfoState {
  const _LabtechAnalysisInfoState(
      {required this.analysis,
      required this.status,
      required this.message,
      this.downloadedFile,
      this.downloadedPhoto});

  @override
  final AnalysisModel analysis;
  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final DownloadedFile? downloadedFile;
  @override
  final DownloadedFile? downloadedPhoto;

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabtechAnalysisInfoStateCopyWith<_LabtechAnalysisInfoState> get copyWith =>
      __$LabtechAnalysisInfoStateCopyWithImpl<_LabtechAnalysisInfoState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabtechAnalysisInfoState &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.downloadedFile, downloadedFile) ||
                other.downloadedFile == downloadedFile) &&
            (identical(other.downloadedPhoto, downloadedPhoto) ||
                other.downloadedPhoto == downloadedPhoto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, analysis, status, message, downloadedFile, downloadedPhoto);

  @override
  String toString() {
    return 'LabtechAnalysisInfoState(analysis: $analysis, status: $status, message: $message, downloadedFile: $downloadedFile, downloadedPhoto: $downloadedPhoto)';
  }
}

/// @nodoc
abstract mixin class _$LabtechAnalysisInfoStateCopyWith<$Res>
    implements $LabtechAnalysisInfoStateCopyWith<$Res> {
  factory _$LabtechAnalysisInfoStateCopyWith(_LabtechAnalysisInfoState value,
          $Res Function(_LabtechAnalysisInfoState) _then) =
      __$LabtechAnalysisInfoStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AnalysisModel analysis,
      DataStatus status,
      String message,
      DownloadedFile? downloadedFile,
      DownloadedFile? downloadedPhoto});

  @override
  $AnalysisModelCopyWith<$Res> get analysis;
  @override
  $DownloadedFileCopyWith<$Res>? get downloadedFile;
  @override
  $DownloadedFileCopyWith<$Res>? get downloadedPhoto;
}

/// @nodoc
class __$LabtechAnalysisInfoStateCopyWithImpl<$Res>
    implements _$LabtechAnalysisInfoStateCopyWith<$Res> {
  __$LabtechAnalysisInfoStateCopyWithImpl(this._self, this._then);

  final _LabtechAnalysisInfoState _self;
  final $Res Function(_LabtechAnalysisInfoState) _then;

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysis = null,
    Object? status = null,
    Object? message = null,
    Object? downloadedFile = freezed,
    Object? downloadedPhoto = freezed,
  }) {
    return _then(_LabtechAnalysisInfoState(
      analysis: null == analysis
          ? _self.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AnalysisModel,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      downloadedFile: freezed == downloadedFile
          ? _self.downloadedFile
          : downloadedFile // ignore: cast_nullable_to_non_nullable
              as DownloadedFile?,
      downloadedPhoto: freezed == downloadedPhoto
          ? _self.downloadedPhoto
          : downloadedPhoto // ignore: cast_nullable_to_non_nullable
              as DownloadedFile?,
    ));
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res> get analysis {
    return $AnalysisModelCopyWith<$Res>(_self.analysis, (value) {
      return _then(_self.copyWith(analysis: value));
    });
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedFile {
    if (_self.downloadedFile == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_self.downloadedFile!, (value) {
      return _then(_self.copyWith(downloadedFile: value));
    });
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedPhoto {
    if (_self.downloadedPhoto == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_self.downloadedPhoto!, (value) {
      return _then(_self.copyWith(downloadedPhoto: value));
    });
  }
}

// dart format on
