// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisListEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AnalysisListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AnalysisListEvent()';
  }
}

/// @nodoc
class $AnalysisListEventCopyWith<$Res> {
  $AnalysisListEventCopyWith(
      AnalysisListEvent _, $Res Function(AnalysisListEvent) __);
}

/// @nodoc

class AnaysisAdded implements AnalysisListEvent {
  const AnaysisAdded({required this.analysis});

  final AnalysisModel analysis;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnaysisAddedCopyWith<AnaysisAdded> get copyWith =>
      _$AnaysisAddedCopyWithImpl<AnaysisAdded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnaysisAdded &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysis);

  @override
  String toString() {
    return 'AnalysisListEvent.anaysisAdded(analysis: $analysis)';
  }
}

/// @nodoc
abstract mixin class $AnaysisAddedCopyWith<$Res>
    implements $AnalysisListEventCopyWith<$Res> {
  factory $AnaysisAddedCopyWith(
          AnaysisAdded value, $Res Function(AnaysisAdded) _then) =
      _$AnaysisAddedCopyWithImpl;
  @useResult
  $Res call({AnalysisModel analysis});

  $AnalysisModelCopyWith<$Res> get analysis;
}

/// @nodoc
class _$AnaysisAddedCopyWithImpl<$Res> implements $AnaysisAddedCopyWith<$Res> {
  _$AnaysisAddedCopyWithImpl(this._self, this._then);

  final AnaysisAdded _self;
  final $Res Function(AnaysisAdded) _then;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysis = null,
  }) {
    return _then(AnaysisAdded(
      analysis: null == analysis
          ? _self.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AnalysisModel,
    ));
  }

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res> get analysis {
    return $AnalysisModelCopyWith<$Res>(_self.analysis, (value) {
      return _then(_self.copyWith(analysis: value));
    });
  }
}

/// @nodoc

class AnalysisRemoved implements AnalysisListEvent {
  const AnalysisRemoved({required this.analysisId});

  final int analysisId;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisRemovedCopyWith<AnalysisRemoved> get copyWith =>
      _$AnalysisRemovedCopyWithImpl<AnalysisRemoved>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisRemoved &&
            (identical(other.analysisId, analysisId) ||
                other.analysisId == analysisId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysisId);

  @override
  String toString() {
    return 'AnalysisListEvent.analysisRemoved(analysisId: $analysisId)';
  }
}

/// @nodoc
abstract mixin class $AnalysisRemovedCopyWith<$Res>
    implements $AnalysisListEventCopyWith<$Res> {
  factory $AnalysisRemovedCopyWith(
          AnalysisRemoved value, $Res Function(AnalysisRemoved) _then) =
      _$AnalysisRemovedCopyWithImpl;
  @useResult
  $Res call({int analysisId});
}

/// @nodoc
class _$AnalysisRemovedCopyWithImpl<$Res>
    implements $AnalysisRemovedCopyWith<$Res> {
  _$AnalysisRemovedCopyWithImpl(this._self, this._then);

  final AnalysisRemoved _self;
  final $Res Function(AnalysisRemoved) _then;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysisId = null,
  }) {
    return _then(AnalysisRemoved(
      analysisId: null == analysisId
          ? _self.analysisId
          : analysisId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class AnalysisFetchRequested implements AnalysisListEvent {
  const AnalysisFetchRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AnalysisFetchRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AnalysisListEvent.analysisFetchRequested()';
  }
}

/// @nodoc

class AnalysisFilterRequested implements AnalysisListEvent {
  const AnalysisFilterRequested({required this.analysisStatus});

  final AnalysisStatus analysisStatus;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisFilterRequestedCopyWith<AnalysisFilterRequested> get copyWith =>
      _$AnalysisFilterRequestedCopyWithImpl<AnalysisFilterRequested>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisFilterRequested &&
            (identical(other.analysisStatus, analysisStatus) ||
                other.analysisStatus == analysisStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysisStatus);

  @override
  String toString() {
    return 'AnalysisListEvent.analysisFilterRequested(analysisStatus: $analysisStatus)';
  }
}

/// @nodoc
abstract mixin class $AnalysisFilterRequestedCopyWith<$Res>
    implements $AnalysisListEventCopyWith<$Res> {
  factory $AnalysisFilterRequestedCopyWith(AnalysisFilterRequested value,
          $Res Function(AnalysisFilterRequested) _then) =
      _$AnalysisFilterRequestedCopyWithImpl;
  @useResult
  $Res call({AnalysisStatus analysisStatus});
}

/// @nodoc
class _$AnalysisFilterRequestedCopyWithImpl<$Res>
    implements $AnalysisFilterRequestedCopyWith<$Res> {
  _$AnalysisFilterRequestedCopyWithImpl(this._self, this._then);

  final AnalysisFilterRequested _self;
  final $Res Function(AnalysisFilterRequested) _then;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysisStatus = null,
  }) {
    return _then(AnalysisFilterRequested(
      analysisStatus: null == analysisStatus
          ? _self.analysisStatus
          : analysisStatus // ignore: cast_nullable_to_non_nullable
              as AnalysisStatus,
    ));
  }
}

/// @nodoc
mixin _$AnalysisListState {
  List<AnalysisModel>? get analysisList;
  DataStatus get status;
  String get statusMessage;
  double get progressValue;

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisListStateCopyWith<AnalysisListState> get copyWith =>
      _$AnalysisListStateCopyWithImpl<AnalysisListState>(
          this as AnalysisListState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisListState &&
            const DeepCollectionEquality()
                .equals(other.analysisList, analysisList) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.progressValue, progressValue) ||
                other.progressValue == progressValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(analysisList),
      status,
      statusMessage,
      progressValue);

  @override
  String toString() {
    return 'AnalysisListState(analysisList: $analysisList, status: $status, statusMessage: $statusMessage, progressValue: $progressValue)';
  }
}

/// @nodoc
abstract mixin class $AnalysisListStateCopyWith<$Res> {
  factory $AnalysisListStateCopyWith(
          AnalysisListState value, $Res Function(AnalysisListState) _then) =
      _$AnalysisListStateCopyWithImpl;
  @useResult
  $Res call(
      {List<AnalysisModel>? analysisList,
      DataStatus status,
      String statusMessage,
      double progressValue});
}

/// @nodoc
class _$AnalysisListStateCopyWithImpl<$Res>
    implements $AnalysisListStateCopyWith<$Res> {
  _$AnalysisListStateCopyWithImpl(this._self, this._then);

  final AnalysisListState _self;
  final $Res Function(AnalysisListState) _then;

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisList = freezed,
    Object? status = null,
    Object? statusMessage = null,
    Object? progressValue = null,
  }) {
    return _then(_self.copyWith(
      analysisList: freezed == analysisList
          ? _self.analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      progressValue: null == progressValue
          ? _self.progressValue
          : progressValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _AnalysisListState implements AnalysisListState {
  const _AnalysisListState(
      {final List<AnalysisModel>? analysisList,
      required this.status,
      this.statusMessage = 'no change',
      this.progressValue = 0.0})
      : _analysisList = analysisList;

  final List<AnalysisModel>? _analysisList;
  @override
  List<AnalysisModel>? get analysisList {
    final value = _analysisList;
    if (value == null) return null;
    if (_analysisList is EqualUnmodifiableListView) return _analysisList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DataStatus status;
  @override
  @JsonKey()
  final String statusMessage;
  @override
  @JsonKey()
  final double progressValue;

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnalysisListStateCopyWith<_AnalysisListState> get copyWith =>
      __$AnalysisListStateCopyWithImpl<_AnalysisListState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnalysisListState &&
            const DeepCollectionEquality()
                .equals(other._analysisList, _analysisList) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.progressValue, progressValue) ||
                other.progressValue == progressValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_analysisList),
      status,
      statusMessage,
      progressValue);

  @override
  String toString() {
    return 'AnalysisListState(analysisList: $analysisList, status: $status, statusMessage: $statusMessage, progressValue: $progressValue)';
  }
}

/// @nodoc
abstract mixin class _$AnalysisListStateCopyWith<$Res>
    implements $AnalysisListStateCopyWith<$Res> {
  factory _$AnalysisListStateCopyWith(
          _AnalysisListState value, $Res Function(_AnalysisListState) _then) =
      __$AnalysisListStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<AnalysisModel>? analysisList,
      DataStatus status,
      String statusMessage,
      double progressValue});
}

/// @nodoc
class __$AnalysisListStateCopyWithImpl<$Res>
    implements _$AnalysisListStateCopyWith<$Res> {
  __$AnalysisListStateCopyWithImpl(this._self, this._then);

  final _AnalysisListState _self;
  final $Res Function(_AnalysisListState) _then;

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysisList = freezed,
    Object? status = null,
    Object? statusMessage = null,
    Object? progressValue = null,
  }) {
    return _then(_AnalysisListState(
      analysisList: freezed == analysisList
          ? _self._analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      progressValue: null == progressValue
          ? _self.progressValue
          : progressValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
