// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_analysis_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchAnalysisEvent {
  String get query;

  /// Create a copy of SearchAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAnalysisEventCopyWith<SearchAnalysisEvent> get copyWith =>
      _$SearchAnalysisEventCopyWithImpl<SearchAnalysisEvent>(
          this as SearchAnalysisEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAnalysisEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'SearchAnalysisEvent(query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchAnalysisEventCopyWith<$Res> {
  factory $SearchAnalysisEventCopyWith(
          SearchAnalysisEvent value, $Res Function(SearchAnalysisEvent) _then) =
      _$SearchAnalysisEventCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchAnalysisEventCopyWithImpl<$Res>
    implements $SearchAnalysisEventCopyWith<$Res> {
  _$SearchAnalysisEventCopyWithImpl(this._self, this._then);

  final SearchAnalysisEvent _self;
  final $Res Function(SearchAnalysisEvent) _then;

  /// Create a copy of SearchAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_self.copyWith(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Searched implements SearchAnalysisEvent {
  const Searched({required this.query});

  @override
  final String query;

  /// Create a copy of SearchAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchedCopyWith<Searched> get copyWith =>
      _$SearchedCopyWithImpl<Searched>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Searched &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'SearchAnalysisEvent.searched(query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchedCopyWith<$Res>
    implements $SearchAnalysisEventCopyWith<$Res> {
  factory $SearchedCopyWith(Searched value, $Res Function(Searched) _then) =
      _$SearchedCopyWithImpl;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchedCopyWithImpl<$Res> implements $SearchedCopyWith<$Res> {
  _$SearchedCopyWithImpl(this._self, this._then);

  final Searched _self;
  final $Res Function(Searched) _then;

  /// Create a copy of SearchAnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(Searched(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SearchAnalysisState {
  List<AnalysisModel> get analysisList;

  /// Create a copy of SearchAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAnalysisStateCopyWith<SearchAnalysisState> get copyWith =>
      _$SearchAnalysisStateCopyWithImpl<SearchAnalysisState>(
          this as SearchAnalysisState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAnalysisState &&
            const DeepCollectionEquality()
                .equals(other.analysisList, analysisList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(analysisList));

  @override
  String toString() {
    return 'SearchAnalysisState(analysisList: $analysisList)';
  }
}

/// @nodoc
abstract mixin class $SearchAnalysisStateCopyWith<$Res> {
  factory $SearchAnalysisStateCopyWith(
          SearchAnalysisState value, $Res Function(SearchAnalysisState) _then) =
      _$SearchAnalysisStateCopyWithImpl;
  @useResult
  $Res call({List<AnalysisModel> analysisList});
}

/// @nodoc
class _$SearchAnalysisStateCopyWithImpl<$Res>
    implements $SearchAnalysisStateCopyWith<$Res> {
  _$SearchAnalysisStateCopyWithImpl(this._self, this._then);

  final SearchAnalysisState _self;
  final $Res Function(SearchAnalysisState) _then;

  /// Create a copy of SearchAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisList = null,
  }) {
    return _then(_self.copyWith(
      analysisList: null == analysisList
          ? _self.analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>,
    ));
  }
}

/// @nodoc

class _SearchAnalysisState implements SearchAnalysisState {
  const _SearchAnalysisState({required final List<AnalysisModel> analysisList})
      : _analysisList = analysisList;

  final List<AnalysisModel> _analysisList;
  @override
  List<AnalysisModel> get analysisList {
    if (_analysisList is EqualUnmodifiableListView) return _analysisList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analysisList);
  }

  /// Create a copy of SearchAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchAnalysisStateCopyWith<_SearchAnalysisState> get copyWith =>
      __$SearchAnalysisStateCopyWithImpl<_SearchAnalysisState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchAnalysisState &&
            const DeepCollectionEquality()
                .equals(other._analysisList, _analysisList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_analysisList));

  @override
  String toString() {
    return 'SearchAnalysisState(analysisList: $analysisList)';
  }
}

/// @nodoc
abstract mixin class _$SearchAnalysisStateCopyWith<$Res>
    implements $SearchAnalysisStateCopyWith<$Res> {
  factory _$SearchAnalysisStateCopyWith(_SearchAnalysisState value,
          $Res Function(_SearchAnalysisState) _then) =
      __$SearchAnalysisStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<AnalysisModel> analysisList});
}

/// @nodoc
class __$SearchAnalysisStateCopyWithImpl<$Res>
    implements _$SearchAnalysisStateCopyWith<$Res> {
  __$SearchAnalysisStateCopyWithImpl(this._self, this._then);

  final _SearchAnalysisState _self;
  final $Res Function(_SearchAnalysisState) _then;

  /// Create a copy of SearchAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analysisList = null,
  }) {
    return _then(_SearchAnalysisState(
      analysisList: null == analysisList
          ? _self._analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>,
    ));
  }
}

// dart format on
