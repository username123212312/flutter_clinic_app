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
  AnalysisModel get analysis;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisListEventCopyWith<AnalysisListEvent> get copyWith =>
      _$AnalysisListEventCopyWithImpl<AnalysisListEvent>(
          this as AnalysisListEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisListEvent &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysis);

  @override
  String toString() {
    return 'AnalysisListEvent(analysis: $analysis)';
  }
}

/// @nodoc
abstract mixin class $AnalysisListEventCopyWith<$Res> {
  factory $AnalysisListEventCopyWith(
          AnalysisListEvent value, $Res Function(AnalysisListEvent) _then) =
      _$AnalysisListEventCopyWithImpl;
  @useResult
  $Res call({AnalysisModel analysis});

  $AnalysisModelCopyWith<$Res> get analysis;
}

/// @nodoc
class _$AnalysisListEventCopyWithImpl<$Res>
    implements $AnalysisListEventCopyWith<$Res> {
  _$AnalysisListEventCopyWithImpl(this._self, this._then);

  final AnalysisListEvent _self;
  final $Res Function(AnalysisListEvent) _then;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis = null,
  }) {
    return _then(_self.copyWith(
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

class AnaysisAdded implements AnalysisListEvent {
  const AnaysisAdded({required this.analysis});

  @override
  final AnalysisModel analysis;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
  @override
  @useResult
  $Res call({AnalysisModel analysis});

  @override
  $AnalysisModelCopyWith<$Res> get analysis;
}

/// @nodoc
class _$AnaysisAddedCopyWithImpl<$Res> implements $AnaysisAddedCopyWith<$Res> {
  _$AnaysisAddedCopyWithImpl(this._self, this._then);

  final AnaysisAdded _self;
  final $Res Function(AnaysisAdded) _then;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
mixin _$AnalysisListState {
  List<AnalysisModel>? get analysisList;
  DataStatus get status;

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
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(analysisList), status);

  @override
  String toString() {
    return 'AnalysisListState(analysisList: $analysisList, status: $status)';
  }
}

/// @nodoc
abstract mixin class $AnalysisListStateCopyWith<$Res> {
  factory $AnalysisListStateCopyWith(
          AnalysisListState value, $Res Function(AnalysisListState) _then) =
      _$AnalysisListStateCopyWithImpl;
  @useResult
  $Res call({List<AnalysisModel>? analysisList, DataStatus status});
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
    ));
  }
}

/// @nodoc

class _AnalysisListState implements AnalysisListState {
  const _AnalysisListState(
      {final List<AnalysisModel>? analysisList, required this.status})
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
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_analysisList), status);

  @override
  String toString() {
    return 'AnalysisListState(analysisList: $analysisList, status: $status)';
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
  $Res call({List<AnalysisModel>? analysisList, DataStatus status});
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
    ));
  }
}

// dart format on
