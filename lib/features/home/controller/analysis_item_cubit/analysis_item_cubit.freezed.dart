// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AnalysisItemState {
  AnalysisModel? get analysis => throw _privateConstructorUsedError;
  DownloadedFile? get downloadedAnalysis => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  double? get downloadProgress => throw _privateConstructorUsedError;

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisItemStateCopyWith<AnalysisItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisItemStateCopyWith<$Res> {
  factory $AnalysisItemStateCopyWith(
    AnalysisItemState value,
    $Res Function(AnalysisItemState) then,
  ) = _$AnalysisItemStateCopyWithImpl<$Res, AnalysisItemState>;
  @useResult
  $Res call({
    AnalysisModel? analysis,
    DownloadedFile? downloadedAnalysis,
    DataStatus status,
    double? downloadProgress,
  });

  $AnalysisModelCopyWith<$Res>? get analysis;
  $DownloadedFileCopyWith<$Res>? get downloadedAnalysis;
}

/// @nodoc
class _$AnalysisItemStateCopyWithImpl<$Res, $Val extends AnalysisItemState>
    implements $AnalysisItemStateCopyWith<$Res> {
  _$AnalysisItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis = freezed,
    Object? downloadedAnalysis = freezed,
    Object? status = null,
    Object? downloadProgress = freezed,
  }) {
    return _then(
      _value.copyWith(
            analysis:
                freezed == analysis
                    ? _value.analysis
                    : analysis // ignore: cast_nullable_to_non_nullable
                        as AnalysisModel?,
            downloadedAnalysis:
                freezed == downloadedAnalysis
                    ? _value.downloadedAnalysis
                    : downloadedAnalysis // ignore: cast_nullable_to_non_nullable
                        as DownloadedFile?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            downloadProgress:
                freezed == downloadProgress
                    ? _value.downloadProgress
                    : downloadProgress // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res>? get analysis {
    if (_value.analysis == null) {
      return null;
    }

    return $AnalysisModelCopyWith<$Res>(_value.analysis!, (value) {
      return _then(_value.copyWith(analysis: value) as $Val);
    });
  }

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedAnalysis {
    if (_value.downloadedAnalysis == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_value.downloadedAnalysis!, (value) {
      return _then(_value.copyWith(downloadedAnalysis: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalysisItemStateImplCopyWith<$Res>
    implements $AnalysisItemStateCopyWith<$Res> {
  factory _$$AnalysisItemStateImplCopyWith(
    _$AnalysisItemStateImpl value,
    $Res Function(_$AnalysisItemStateImpl) then,
  ) = __$$AnalysisItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AnalysisModel? analysis,
    DownloadedFile? downloadedAnalysis,
    DataStatus status,
    double? downloadProgress,
  });

  @override
  $AnalysisModelCopyWith<$Res>? get analysis;
  @override
  $DownloadedFileCopyWith<$Res>? get downloadedAnalysis;
}

/// @nodoc
class __$$AnalysisItemStateImplCopyWithImpl<$Res>
    extends _$AnalysisItemStateCopyWithImpl<$Res, _$AnalysisItemStateImpl>
    implements _$$AnalysisItemStateImplCopyWith<$Res> {
  __$$AnalysisItemStateImplCopyWithImpl(
    _$AnalysisItemStateImpl _value,
    $Res Function(_$AnalysisItemStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis = freezed,
    Object? downloadedAnalysis = freezed,
    Object? status = null,
    Object? downloadProgress = freezed,
  }) {
    return _then(
      _$AnalysisItemStateImpl(
        analysis:
            freezed == analysis
                ? _value.analysis
                : analysis // ignore: cast_nullable_to_non_nullable
                    as AnalysisModel?,
        downloadedAnalysis:
            freezed == downloadedAnalysis
                ? _value.downloadedAnalysis
                : downloadedAnalysis // ignore: cast_nullable_to_non_nullable
                    as DownloadedFile?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        downloadProgress:
            freezed == downloadProgress
                ? _value.downloadProgress
                : downloadProgress // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc

class _$AnalysisItemStateImpl implements _AnalysisItemState {
  const _$AnalysisItemStateImpl({
    this.analysis,
    this.downloadedAnalysis,
    required this.status,
    this.downloadProgress = 0.0,
  });

  @override
  final AnalysisModel? analysis;
  @override
  final DownloadedFile? downloadedAnalysis;
  @override
  final DataStatus status;
  @override
  @JsonKey()
  final double? downloadProgress;

  @override
  String toString() {
    return 'AnalysisItemState(analysis: $analysis, downloadedAnalysis: $downloadedAnalysis, status: $status, downloadProgress: $downloadProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisItemStateImpl &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.downloadedAnalysis, downloadedAnalysis) ||
                other.downloadedAnalysis == downloadedAnalysis) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.downloadProgress, downloadProgress) ||
                other.downloadProgress == downloadProgress));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    analysis,
    downloadedAnalysis,
    status,
    downloadProgress,
  );

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisItemStateImplCopyWith<_$AnalysisItemStateImpl> get copyWith =>
      __$$AnalysisItemStateImplCopyWithImpl<_$AnalysisItemStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AnalysisItemState implements AnalysisItemState {
  const factory _AnalysisItemState({
    final AnalysisModel? analysis,
    final DownloadedFile? downloadedAnalysis,
    required final DataStatus status,
    final double? downloadProgress,
  }) = _$AnalysisItemStateImpl;

  @override
  AnalysisModel? get analysis;
  @override
  DownloadedFile? get downloadedAnalysis;
  @override
  DataStatus get status;
  @override
  double? get downloadProgress;

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisItemStateImplCopyWith<_$AnalysisItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
