// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisItemState {
  AnalysisModel? get analysis;
  DownloadedFile? get downloadedAnalysis;
  DataStatus get status;
  double? get downloadProgress;

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisItemStateCopyWith<AnalysisItemState> get copyWith =>
      _$AnalysisItemStateCopyWithImpl<AnalysisItemState>(
          this as AnalysisItemState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisItemState &&
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
      runtimeType, analysis, downloadedAnalysis, status, downloadProgress);

  @override
  String toString() {
    return 'AnalysisItemState(analysis: $analysis, downloadedAnalysis: $downloadedAnalysis, status: $status, downloadProgress: $downloadProgress)';
  }
}

/// @nodoc
abstract mixin class $AnalysisItemStateCopyWith<$Res> {
  factory $AnalysisItemStateCopyWith(
          AnalysisItemState value, $Res Function(AnalysisItemState) _then) =
      _$AnalysisItemStateCopyWithImpl;
  @useResult
  $Res call(
      {AnalysisModel? analysis,
      DownloadedFile? downloadedAnalysis,
      DataStatus status,
      double? downloadProgress});

  $AnalysisModelCopyWith<$Res>? get analysis;
  $DownloadedFileCopyWith<$Res>? get downloadedAnalysis;
}

/// @nodoc
class _$AnalysisItemStateCopyWithImpl<$Res>
    implements $AnalysisItemStateCopyWith<$Res> {
  _$AnalysisItemStateCopyWithImpl(this._self, this._then);

  final AnalysisItemState _self;
  final $Res Function(AnalysisItemState) _then;

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
    return _then(_self.copyWith(
      analysis: freezed == analysis
          ? _self.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AnalysisModel?,
      downloadedAnalysis: freezed == downloadedAnalysis
          ? _self.downloadedAnalysis
          : downloadedAnalysis // ignore: cast_nullable_to_non_nullable
              as DownloadedFile?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      downloadProgress: freezed == downloadProgress
          ? _self.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res>? get analysis {
    if (_self.analysis == null) {
      return null;
    }

    return $AnalysisModelCopyWith<$Res>(_self.analysis!, (value) {
      return _then(_self.copyWith(analysis: value));
    });
  }

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedAnalysis {
    if (_self.downloadedAnalysis == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_self.downloadedAnalysis!, (value) {
      return _then(_self.copyWith(downloadedAnalysis: value));
    });
  }
}

/// @nodoc

class _AnalysisItemState implements AnalysisItemState {
  const _AnalysisItemState(
      {this.analysis,
      this.downloadedAnalysis,
      required this.status,
      this.downloadProgress = 0.0});

  @override
  final AnalysisModel? analysis;
  @override
  final DownloadedFile? downloadedAnalysis;
  @override
  final DataStatus status;
  @override
  @JsonKey()
  final double? downloadProgress;

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnalysisItemStateCopyWith<_AnalysisItemState> get copyWith =>
      __$AnalysisItemStateCopyWithImpl<_AnalysisItemState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnalysisItemState &&
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
      runtimeType, analysis, downloadedAnalysis, status, downloadProgress);

  @override
  String toString() {
    return 'AnalysisItemState(analysis: $analysis, downloadedAnalysis: $downloadedAnalysis, status: $status, downloadProgress: $downloadProgress)';
  }
}

/// @nodoc
abstract mixin class _$AnalysisItemStateCopyWith<$Res>
    implements $AnalysisItemStateCopyWith<$Res> {
  factory _$AnalysisItemStateCopyWith(
          _AnalysisItemState value, $Res Function(_AnalysisItemState) _then) =
      __$AnalysisItemStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AnalysisModel? analysis,
      DownloadedFile? downloadedAnalysis,
      DataStatus status,
      double? downloadProgress});

  @override
  $AnalysisModelCopyWith<$Res>? get analysis;
  @override
  $DownloadedFileCopyWith<$Res>? get downloadedAnalysis;
}

/// @nodoc
class __$AnalysisItemStateCopyWithImpl<$Res>
    implements _$AnalysisItemStateCopyWith<$Res> {
  __$AnalysisItemStateCopyWithImpl(this._self, this._then);

  final _AnalysisItemState _self;
  final $Res Function(_AnalysisItemState) _then;

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysis = freezed,
    Object? downloadedAnalysis = freezed,
    Object? status = null,
    Object? downloadProgress = freezed,
  }) {
    return _then(_AnalysisItemState(
      analysis: freezed == analysis
          ? _self.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AnalysisModel?,
      downloadedAnalysis: freezed == downloadedAnalysis
          ? _self.downloadedAnalysis
          : downloadedAnalysis // ignore: cast_nullable_to_non_nullable
              as DownloadedFile?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      downloadProgress: freezed == downloadProgress
          ? _self.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res>? get analysis {
    if (_self.analysis == null) {
      return null;
    }

    return $AnalysisModelCopyWith<$Res>(_self.analysis!, (value) {
      return _then(_self.copyWith(analysis: value));
    });
  }

  /// Create a copy of AnalysisItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<$Res>? get downloadedAnalysis {
    if (_self.downloadedAnalysis == null) {
      return null;
    }

    return $DownloadedFileCopyWith<$Res>(_self.downloadedAnalysis!, (value) {
      return _then(_self.copyWith(downloadedAnalysis: value));
    });
  }
}

// dart format on
