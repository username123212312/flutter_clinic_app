// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labtech_analysis_bloc.dart';

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

class AnalysisFetched implements LabtechAnalysisEvent {
  const AnalysisFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AnalysisFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LabtechAnalysisEvent.analysisFetched()';
  }
}

/// @nodoc

class AnalysisStatusChanged implements LabtechAnalysisEvent {
  const AnalysisStatusChanged({required this.analysisStatus});

  final AnalysisStatus analysisStatus;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisStatusChangedCopyWith<AnalysisStatusChanged> get copyWith =>
      _$AnalysisStatusChangedCopyWithImpl<AnalysisStatusChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisStatusChanged &&
            (identical(other.analysisStatus, analysisStatus) ||
                other.analysisStatus == analysisStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysisStatus);

  @override
  String toString() {
    return 'LabtechAnalysisEvent.analysisStatusChanged(analysisStatus: $analysisStatus)';
  }
}

/// @nodoc
abstract mixin class $AnalysisStatusChangedCopyWith<$Res>
    implements $LabtechAnalysisEventCopyWith<$Res> {
  factory $AnalysisStatusChangedCopyWith(AnalysisStatusChanged value,
          $Res Function(AnalysisStatusChanged) _then) =
      _$AnalysisStatusChangedCopyWithImpl;
  @useResult
  $Res call({AnalysisStatus analysisStatus});
}

/// @nodoc
class _$AnalysisStatusChangedCopyWithImpl<$Res>
    implements $AnalysisStatusChangedCopyWith<$Res> {
  _$AnalysisStatusChangedCopyWithImpl(this._self, this._then);

  final AnalysisStatusChanged _self;
  final $Res Function(AnalysisStatusChanged) _then;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysisStatus = null,
  }) {
    return _then(AnalysisStatusChanged(
      analysisStatus: null == analysisStatus
          ? _self.analysisStatus
          : analysisStatus // ignore: cast_nullable_to_non_nullable
              as AnalysisStatus,
    ));
  }
}

/// @nodoc

class AnalysisShown implements LabtechAnalysisEvent {
  const AnalysisShown({required this.analysisId});

  final int analysisId;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisShownCopyWith<AnalysisShown> get copyWith =>
      _$AnalysisShownCopyWithImpl<AnalysisShown>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisShown &&
            (identical(other.analysisId, analysisId) ||
                other.analysisId == analysisId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysisId);

  @override
  String toString() {
    return 'LabtechAnalysisEvent.analysisShown(analysisId: $analysisId)';
  }
}

/// @nodoc
abstract mixin class $AnalysisShownCopyWith<$Res>
    implements $LabtechAnalysisEventCopyWith<$Res> {
  factory $AnalysisShownCopyWith(
          AnalysisShown value, $Res Function(AnalysisShown) _then) =
      _$AnalysisShownCopyWithImpl;
  @useResult
  $Res call({int analysisId});
}

/// @nodoc
class _$AnalysisShownCopyWithImpl<$Res>
    implements $AnalysisShownCopyWith<$Res> {
  _$AnalysisShownCopyWithImpl(this._self, this._then);

  final AnalysisShown _self;
  final $Res Function(AnalysisShown) _then;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysisId = null,
  }) {
    return _then(AnalysisShown(
      analysisId: null == analysisId
          ? _self.analysisId
          : analysisId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class AnalysisSearched implements LabtechAnalysisEvent {
  const AnalysisSearched({required this.query});

  final String query;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisSearchedCopyWith<AnalysisSearched> get copyWith =>
      _$AnalysisSearchedCopyWithImpl<AnalysisSearched>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisSearched &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'LabtechAnalysisEvent.searched(query: $query)';
  }
}

/// @nodoc
abstract mixin class $AnalysisSearchedCopyWith<$Res>
    implements $LabtechAnalysisEventCopyWith<$Res> {
  factory $AnalysisSearchedCopyWith(
          AnalysisSearched value, $Res Function(AnalysisSearched) _then) =
      _$AnalysisSearchedCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$AnalysisSearchedCopyWithImpl<$Res>
    implements $AnalysisSearchedCopyWith<$Res> {
  _$AnalysisSearchedCopyWithImpl(this._self, this._then);

  final AnalysisSearched _self;
  final $Res Function(AnalysisSearched) _then;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(AnalysisSearched(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AnalysisAdded implements LabtechAnalysisEvent {
  const AnalysisAdded({required this.request});

  final AddAnalysisRequest request;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisAddedCopyWith<AnalysisAdded> get copyWith =>
      _$AnalysisAddedCopyWithImpl<AnalysisAdded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisAdded &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @override
  String toString() {
    return 'LabtechAnalysisEvent.addAnalysis(request: $request)';
  }
}

/// @nodoc
abstract mixin class $AnalysisAddedCopyWith<$Res>
    implements $LabtechAnalysisEventCopyWith<$Res> {
  factory $AnalysisAddedCopyWith(
          AnalysisAdded value, $Res Function(AnalysisAdded) _then) =
      _$AnalysisAddedCopyWithImpl;
  @useResult
  $Res call({AddAnalysisRequest request});

  $AddAnalysisRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$AnalysisAddedCopyWithImpl<$Res>
    implements $AnalysisAddedCopyWith<$Res> {
  _$AnalysisAddedCopyWithImpl(this._self, this._then);

  final AnalysisAdded _self;
  final $Res Function(AnalysisAdded) _then;

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
  }) {
    return _then(AnalysisAdded(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddAnalysisRequest,
    ));
  }

  /// Create a copy of LabtechAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddAnalysisRequestCopyWith<$Res> get request {
    return $AddAnalysisRequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc
mixin _$LabtechAnalysisState {
  List<AnalysisModel> get analysisList;
  AnalysisStatus get analysisStatus;
  DataStatus get status;
  String get message;

  /// Create a copy of LabtechAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabtechAnalysisStateCopyWith<LabtechAnalysisState> get copyWith =>
      _$LabtechAnalysisStateCopyWithImpl<LabtechAnalysisState>(
          this as LabtechAnalysisState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabtechAnalysisState &&
            const DeepCollectionEquality()
                .equals(other.analysisList, analysisList) &&
            (identical(other.analysisStatus, analysisStatus) ||
                other.analysisStatus == analysisStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(analysisList),
      analysisStatus,
      status,
      message);

  @override
  String toString() {
    return 'LabtechAnalysisState(analysisList: $analysisList, analysisStatus: $analysisStatus, status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class $LabtechAnalysisStateCopyWith<$Res> {
  factory $LabtechAnalysisStateCopyWith(LabtechAnalysisState value,
          $Res Function(LabtechAnalysisState) _then) =
      _$LabtechAnalysisStateCopyWithImpl;
  @useResult
  $Res call(
      {List<AnalysisModel> analysisList,
      AnalysisStatus analysisStatus,
      DataStatus status,
      String message});
}

/// @nodoc
class _$LabtechAnalysisStateCopyWithImpl<$Res>
    implements $LabtechAnalysisStateCopyWith<$Res> {
  _$LabtechAnalysisStateCopyWithImpl(this._self, this._then);

  final LabtechAnalysisState _self;
  final $Res Function(LabtechAnalysisState) _then;

  /// Create a copy of LabtechAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisList = null,
    Object? analysisStatus = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      analysisList: null == analysisList
          ? _self.analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>,
      analysisStatus: null == analysisStatus
          ? _self.analysisStatus
          : analysisStatus // ignore: cast_nullable_to_non_nullable
              as AnalysisStatus,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LabtechAnalysisState implements LabtechAnalysisState {
  const _LabtechAnalysisState(
      {required final List<AnalysisModel> analysisList,
      required this.analysisStatus,
      required this.status,
      required this.message})
      : _analysisList = analysisList;

  final List<AnalysisModel> _analysisList;
  @override
  List<AnalysisModel> get analysisList {
    if (_analysisList is EqualUnmodifiableListView) return _analysisList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analysisList);
  }

  @override
  final AnalysisStatus analysisStatus;
  @override
  final DataStatus status;
  @override
  final String message;

  /// Create a copy of LabtechAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabtechAnalysisStateCopyWith<_LabtechAnalysisState> get copyWith =>
      __$LabtechAnalysisStateCopyWithImpl<_LabtechAnalysisState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabtechAnalysisState &&
            const DeepCollectionEquality()
                .equals(other._analysisList, _analysisList) &&
            (identical(other.analysisStatus, analysisStatus) ||
                other.analysisStatus == analysisStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_analysisList),
      analysisStatus,
      status,
      message);

  @override
  String toString() {
    return 'LabtechAnalysisState(analysisList: $analysisList, analysisStatus: $analysisStatus, status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$LabtechAnalysisStateCopyWith<$Res>
    implements $LabtechAnalysisStateCopyWith<$Res> {
  factory _$LabtechAnalysisStateCopyWith(_LabtechAnalysisState value,
          $Res Function(_LabtechAnalysisState) _then) =
      __$LabtechAnalysisStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<AnalysisModel> analysisList,
      AnalysisStatus analysisStatus,
      DataStatus status,
      String message});
}

/// @nodoc
class __$LabtechAnalysisStateCopyWithImpl<$Res>
    implements _$LabtechAnalysisStateCopyWith<$Res> {
  __$LabtechAnalysisStateCopyWithImpl(this._self, this._then);

  final _LabtechAnalysisState _self;
  final $Res Function(_LabtechAnalysisState) _then;

  /// Create a copy of LabtechAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysisList = null,
    Object? analysisStatus = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_LabtechAnalysisState(
      analysisList: null == analysisList
          ? _self._analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>,
      analysisStatus: null == analysisStatus
          ? _self.analysisStatus
          : analysisStatus // ignore: cast_nullable_to_non_nullable
              as AnalysisStatus,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
