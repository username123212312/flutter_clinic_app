// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labtech_analysis_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LabtechAnalysisEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddAnalysisResultRequest request)
    analysisResultAdded,
    required TResult Function() downloadFile,
    required TResult Function() downloadPhoto,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult? Function()? downloadFile,
    TResult? Function()? downloadPhoto,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult Function()? downloadFile,
    TResult Function()? downloadPhoto,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisResultAdded value) analysisResultAdded,
    required TResult Function(DownloadFile value) downloadFile,
    required TResult Function(DownloadPhoto value) downloadPhoto,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult? Function(DownloadFile value)? downloadFile,
    TResult? Function(DownloadPhoto value)? downloadPhoto,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult Function(DownloadFile value)? downloadFile,
    TResult Function(DownloadPhoto value)? downloadPhoto,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabtechAnalysisEventCopyWith<$Res> {
  factory $LabtechAnalysisEventCopyWith(
    LabtechAnalysisEvent value,
    $Res Function(LabtechAnalysisEvent) then,
  ) = _$LabtechAnalysisEventCopyWithImpl<$Res, LabtechAnalysisEvent>;
}

/// @nodoc
class _$LabtechAnalysisEventCopyWithImpl<
  $Res,
  $Val extends LabtechAnalysisEvent
>
    implements $LabtechAnalysisEventCopyWith<$Res> {
  _$LabtechAnalysisEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AnalysisResultAddedImplCopyWith<$Res> {
  factory _$$AnalysisResultAddedImplCopyWith(
    _$AnalysisResultAddedImpl value,
    $Res Function(_$AnalysisResultAddedImpl) then,
  ) = __$$AnalysisResultAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddAnalysisResultRequest request});

  $AddAnalysisResultRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$AnalysisResultAddedImplCopyWithImpl<$Res>
    extends _$LabtechAnalysisEventCopyWithImpl<$Res, _$AnalysisResultAddedImpl>
    implements _$$AnalysisResultAddedImplCopyWith<$Res> {
  __$$AnalysisResultAddedImplCopyWithImpl(
    _$AnalysisResultAddedImpl _value,
    $Res Function(_$AnalysisResultAddedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? request = null}) {
    return _then(
      _$AnalysisResultAddedImpl(
        request:
            null == request
                ? _value.request
                : request // ignore: cast_nullable_to_non_nullable
                    as AddAnalysisResultRequest,
      ),
    );
  }

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddAnalysisResultRequestCopyWith<$Res> get request {
    return $AddAnalysisResultRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AnalysisResultAddedImpl implements AnalysisResultAdded {
  const _$AnalysisResultAddedImpl({required this.request});

  @override
  final AddAnalysisResultRequest request;

  @override
  String toString() {
    return 'LabtechAnalysisEvent.analysisResultAdded(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisResultAddedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisResultAddedImplCopyWith<_$AnalysisResultAddedImpl> get copyWith =>
      __$$AnalysisResultAddedImplCopyWithImpl<_$AnalysisResultAddedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddAnalysisResultRequest request)
    analysisResultAdded,
    required TResult Function() downloadFile,
    required TResult Function() downloadPhoto,
  }) {
    return analysisResultAdded(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult? Function()? downloadFile,
    TResult? Function()? downloadPhoto,
  }) {
    return analysisResultAdded?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult Function()? downloadFile,
    TResult Function()? downloadPhoto,
    required TResult orElse(),
  }) {
    if (analysisResultAdded != null) {
      return analysisResultAdded(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisResultAdded value) analysisResultAdded,
    required TResult Function(DownloadFile value) downloadFile,
    required TResult Function(DownloadPhoto value) downloadPhoto,
  }) {
    return analysisResultAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult? Function(DownloadFile value)? downloadFile,
    TResult? Function(DownloadPhoto value)? downloadPhoto,
  }) {
    return analysisResultAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult Function(DownloadFile value)? downloadFile,
    TResult Function(DownloadPhoto value)? downloadPhoto,
    required TResult orElse(),
  }) {
    if (analysisResultAdded != null) {
      return analysisResultAdded(this);
    }
    return orElse();
  }
}

abstract class AnalysisResultAdded implements LabtechAnalysisEvent {
  const factory AnalysisResultAdded({
    required final AddAnalysisResultRequest request,
  }) = _$AnalysisResultAddedImpl;

  AddAnalysisResultRequest get request;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisResultAddedImplCopyWith<_$AnalysisResultAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadFileImplCopyWith<$Res> {
  factory _$$DownloadFileImplCopyWith(
    _$DownloadFileImpl value,
    $Res Function(_$DownloadFileImpl) then,
  ) = __$$DownloadFileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadFileImplCopyWithImpl<$Res>
    extends _$LabtechAnalysisEventCopyWithImpl<$Res, _$DownloadFileImpl>
    implements _$$DownloadFileImplCopyWith<$Res> {
  __$$DownloadFileImplCopyWithImpl(
    _$DownloadFileImpl _value,
    $Res Function(_$DownloadFileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DownloadFileImpl implements DownloadFile {
  const _$DownloadFileImpl();

  @override
  String toString() {
    return 'LabtechAnalysisEvent.downloadFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadFileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddAnalysisResultRequest request)
    analysisResultAdded,
    required TResult Function() downloadFile,
    required TResult Function() downloadPhoto,
  }) {
    return downloadFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult? Function()? downloadFile,
    TResult? Function()? downloadPhoto,
  }) {
    return downloadFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult Function()? downloadFile,
    TResult Function()? downloadPhoto,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisResultAdded value) analysisResultAdded,
    required TResult Function(DownloadFile value) downloadFile,
    required TResult Function(DownloadPhoto value) downloadPhoto,
  }) {
    return downloadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult? Function(DownloadFile value)? downloadFile,
    TResult? Function(DownloadPhoto value)? downloadPhoto,
  }) {
    return downloadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult Function(DownloadFile value)? downloadFile,
    TResult Function(DownloadPhoto value)? downloadPhoto,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(this);
    }
    return orElse();
  }
}

abstract class DownloadFile implements LabtechAnalysisEvent {
  const factory DownloadFile() = _$DownloadFileImpl;
}

/// @nodoc
abstract class _$$DownloadPhotoImplCopyWith<$Res> {
  factory _$$DownloadPhotoImplCopyWith(
    _$DownloadPhotoImpl value,
    $Res Function(_$DownloadPhotoImpl) then,
  ) = __$$DownloadPhotoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadPhotoImplCopyWithImpl<$Res>
    extends _$LabtechAnalysisEventCopyWithImpl<$Res, _$DownloadPhotoImpl>
    implements _$$DownloadPhotoImplCopyWith<$Res> {
  __$$DownloadPhotoImplCopyWithImpl(
    _$DownloadPhotoImpl _value,
    $Res Function(_$DownloadPhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DownloadPhotoImpl implements DownloadPhoto {
  const _$DownloadPhotoImpl();

  @override
  String toString() {
    return 'LabtechAnalysisEvent.downloadPhoto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadPhotoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddAnalysisResultRequest request)
    analysisResultAdded,
    required TResult Function() downloadFile,
    required TResult Function() downloadPhoto,
  }) {
    return downloadPhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult? Function()? downloadFile,
    TResult? Function()? downloadPhoto,
  }) {
    return downloadPhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddAnalysisResultRequest request)? analysisResultAdded,
    TResult Function()? downloadFile,
    TResult Function()? downloadPhoto,
    required TResult orElse(),
  }) {
    if (downloadPhoto != null) {
      return downloadPhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisResultAdded value) analysisResultAdded,
    required TResult Function(DownloadFile value) downloadFile,
    required TResult Function(DownloadPhoto value) downloadPhoto,
  }) {
    return downloadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult? Function(DownloadFile value)? downloadFile,
    TResult? Function(DownloadPhoto value)? downloadPhoto,
  }) {
    return downloadPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisResultAdded value)? analysisResultAdded,
    TResult Function(DownloadFile value)? downloadFile,
    TResult Function(DownloadPhoto value)? downloadPhoto,
    required TResult orElse(),
  }) {
    if (downloadPhoto != null) {
      return downloadPhoto(this);
    }
    return orElse();
  }
}

abstract class DownloadPhoto implements LabtechAnalysisEvent {
  const factory DownloadPhoto() = _$DownloadPhotoImpl;
}

/// @nodoc
mixin _$LabtechAnalysisInfoState {
  AnalysisModel get analysis => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DownloadedFile? get downloadedFile => throw _privateConstructorUsedError;
  DownloadedFile? get downloadedPhoto => throw _privateConstructorUsedError;

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabtechAnalysisInfoStateCopyWith<LabtechAnalysisInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabtechAnalysisInfoStateCopyWith<$Res> {
  factory $LabtechAnalysisInfoStateCopyWith(
    LabtechAnalysisInfoState value,
    $Res Function(LabtechAnalysisInfoState) then,
  ) = _$LabtechAnalysisInfoStateCopyWithImpl<$Res, LabtechAnalysisInfoState>;
  @useResult
  $Res call({
    AnalysisModel analysis,
    DataStatus status,
    String message,
    DownloadedFile? downloadedFile,
    DownloadedFile? downloadedPhoto,
  });

  $AnalysisModelCopyWith<$Res> get analysis;
  $DownloadedFileCopyWith<$Res>? get downloadedFile;
  $DownloadedFileCopyWith<$Res>? get downloadedPhoto;
}

/// @nodoc
class _$LabtechAnalysisInfoStateCopyWithImpl<
  $Res,
  $Val extends LabtechAnalysisInfoState
>
    implements $LabtechAnalysisInfoStateCopyWith<$Res> {
  _$LabtechAnalysisInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            analysis:
                null == analysis
                    ? _value.analysis
                    : analysis // ignore: cast_nullable_to_non_nullable
                        as AnalysisModel,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            downloadedFile:
                freezed == downloadedFile
                    ? _value.downloadedFile
                    : downloadedFile // ignore: cast_nullable_to_non_nullable
                        as DownloadedFile?,
            downloadedPhoto:
                freezed == downloadedPhoto
                    ? _value.downloadedPhoto
                    : downloadedPhoto // ignore: cast_nullable_to_non_nullable
                        as DownloadedFile?,
          )
          as $Val,
    );
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res> get analysis {
    return $AnalysisModelCopyWith<$Res>(_value.analysis, (value) {
      return _then(_value.copyWith(analysis: value) as $Val);
    });
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedFile {
    if (_value.downloadedFile == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_value.downloadedFile!, (value) {
      return _then(_value.copyWith(downloadedFile: value) as $Val);
    });
  }

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedPhoto {
    if (_value.downloadedPhoto == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_value.downloadedPhoto!, (value) {
      return _then(_value.copyWith(downloadedPhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LabtechAnalysisInfoStateImplCopyWith<$Res>
    implements $LabtechAnalysisInfoStateCopyWith<$Res> {
  factory _$$LabtechAnalysisInfoStateImplCopyWith(
    _$LabtechAnalysisInfoStateImpl value,
    $Res Function(_$LabtechAnalysisInfoStateImpl) then,
  ) = __$$LabtechAnalysisInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AnalysisModel analysis,
    DataStatus status,
    String message,
    DownloadedFile? downloadedFile,
    DownloadedFile? downloadedPhoto,
  });

  @override
  $AnalysisModelCopyWith<$Res> get analysis;
  @override
  $DownloadedFileCopyWith<$Res>? get downloadedFile;
  @override
  $DownloadedFileCopyWith<$Res>? get downloadedPhoto;
}

/// @nodoc
class __$$LabtechAnalysisInfoStateImplCopyWithImpl<$Res>
    extends
        _$LabtechAnalysisInfoStateCopyWithImpl<
          $Res,
          _$LabtechAnalysisInfoStateImpl
        >
    implements _$$LabtechAnalysisInfoStateImplCopyWith<$Res> {
  __$$LabtechAnalysisInfoStateImplCopyWithImpl(
    _$LabtechAnalysisInfoStateImpl _value,
    $Res Function(_$LabtechAnalysisInfoStateImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$LabtechAnalysisInfoStateImpl(
        analysis:
            null == analysis
                ? _value.analysis
                : analysis // ignore: cast_nullable_to_non_nullable
                    as AnalysisModel,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        downloadedFile:
            freezed == downloadedFile
                ? _value.downloadedFile
                : downloadedFile // ignore: cast_nullable_to_non_nullable
                    as DownloadedFile?,
        downloadedPhoto:
            freezed == downloadedPhoto
                ? _value.downloadedPhoto
                : downloadedPhoto // ignore: cast_nullable_to_non_nullable
                    as DownloadedFile?,
      ),
    );
  }
}

/// @nodoc

class _$LabtechAnalysisInfoStateImpl implements _LabtechAnalysisInfoState {
  const _$LabtechAnalysisInfoStateImpl({
    required this.analysis,
    required this.status,
    required this.message,
    this.downloadedFile,
    this.downloadedPhoto,
  });

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

  @override
  String toString() {
    return 'LabtechAnalysisInfoState(analysis: $analysis, status: $status, message: $message, downloadedFile: $downloadedFile, downloadedPhoto: $downloadedPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabtechAnalysisInfoStateImpl &&
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
    runtimeType,
    analysis,
    status,
    message,
    downloadedFile,
    downloadedPhoto,
  );

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabtechAnalysisInfoStateImplCopyWith<_$LabtechAnalysisInfoStateImpl>
  get copyWith => __$$LabtechAnalysisInfoStateImplCopyWithImpl<
    _$LabtechAnalysisInfoStateImpl
  >(this, _$identity);
}

abstract class _LabtechAnalysisInfoState implements LabtechAnalysisInfoState {
  const factory _LabtechAnalysisInfoState({
    required final AnalysisModel analysis,
    required final DataStatus status,
    required final String message,
    final DownloadedFile? downloadedFile,
    final DownloadedFile? downloadedPhoto,
  }) = _$LabtechAnalysisInfoStateImpl;

  @override
  AnalysisModel get analysis;
  @override
  DataStatus get status;
  @override
  String get message;
  @override
  DownloadedFile? get downloadedFile;
  @override
  DownloadedFile? get downloadedPhoto;

  /// Create a copy of LabtechAnalysisInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabtechAnalysisInfoStateImplCopyWith<_$LabtechAnalysisInfoStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
