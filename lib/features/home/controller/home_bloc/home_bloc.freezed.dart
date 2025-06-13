// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// @nodoc

class _Started with DiagnosticableTreeMixin implements HomeEvent {
  const _Started();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }
}

/// @nodoc
mixin _$HomeState implements DiagnosticableTreeMixin {
  List get upcomingAppointmentsList;
  List get departmentsList;
  List get doctorsList;
  List get pharmaciesList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty(
          'upcomingAppointmentsList', upcomingAppointmentsList))
      ..add(DiagnosticsProperty('departmentsList', departmentsList))
      ..add(DiagnosticsProperty('doctorsList', doctorsList))
      ..add(DiagnosticsProperty('pharmaciesList', pharmaciesList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            const DeepCollectionEquality().equals(
                other.upcomingAppointmentsList, upcomingAppointmentsList) &&
            const DeepCollectionEquality()
                .equals(other.departmentsList, departmentsList) &&
            const DeepCollectionEquality()
                .equals(other.doctorsList, doctorsList) &&
            const DeepCollectionEquality()
                .equals(other.pharmaciesList, pharmaciesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(upcomingAppointmentsList),
      const DeepCollectionEquality().hash(departmentsList),
      const DeepCollectionEquality().hash(doctorsList),
      const DeepCollectionEquality().hash(pharmaciesList));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(upcomingAppointmentsList: $upcomingAppointmentsList, departmentsList: $departmentsList, doctorsList: $doctorsList, pharmaciesList: $pharmaciesList)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {List upcomingAppointmentsList,
      List departmentsList,
      List doctorsList,
      List pharmaciesList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upcomingAppointmentsList = null,
    Object? departmentsList = null,
    Object? doctorsList = null,
    Object? pharmaciesList = null,
  }) {
    return _then(_self.copyWith(
      upcomingAppointmentsList: null == upcomingAppointmentsList
          ? _self.upcomingAppointmentsList
          : upcomingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List,
      departmentsList: null == departmentsList
          ? _self.departmentsList
          : departmentsList // ignore: cast_nullable_to_non_nullable
              as List,
      doctorsList: null == doctorsList
          ? _self.doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as List,
      pharmaciesList: null == pharmaciesList
          ? _self.pharmaciesList
          : pharmaciesList // ignore: cast_nullable_to_non_nullable
              as List,
    ));
  }
}

/// @nodoc

class _HomeState with DiagnosticableTreeMixin implements HomeState {
  const _HomeState(
      {required final List upcomingAppointmentsList,
      required final List departmentsList,
      required final List doctorsList,
      required final List pharmaciesList})
      : _upcomingAppointmentsList = upcomingAppointmentsList,
        _departmentsList = departmentsList,
        _doctorsList = doctorsList,
        _pharmaciesList = pharmaciesList;

  final List _upcomingAppointmentsList;
  @override
  List get upcomingAppointmentsList {
    if (_upcomingAppointmentsList is EqualUnmodifiableListView)
      return _upcomingAppointmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingAppointmentsList);
  }

  final List _departmentsList;
  @override
  List get departmentsList {
    if (_departmentsList is EqualUnmodifiableListView) return _departmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departmentsList);
  }

  final List _doctorsList;
  @override
  List get doctorsList {
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorsList);
  }

  final List _pharmaciesList;
  @override
  List get pharmaciesList {
    if (_pharmaciesList is EqualUnmodifiableListView) return _pharmaciesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pharmaciesList);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty(
          'upcomingAppointmentsList', upcomingAppointmentsList))
      ..add(DiagnosticsProperty('departmentsList', departmentsList))
      ..add(DiagnosticsProperty('doctorsList', doctorsList))
      ..add(DiagnosticsProperty('pharmaciesList', pharmaciesList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(
                other._upcomingAppointmentsList, _upcomingAppointmentsList) &&
            const DeepCollectionEquality()
                .equals(other._departmentsList, _departmentsList) &&
            const DeepCollectionEquality()
                .equals(other._doctorsList, _doctorsList) &&
            const DeepCollectionEquality()
                .equals(other._pharmaciesList, _pharmaciesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_upcomingAppointmentsList),
      const DeepCollectionEquality().hash(_departmentsList),
      const DeepCollectionEquality().hash(_doctorsList),
      const DeepCollectionEquality().hash(_pharmaciesList));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(upcomingAppointmentsList: $upcomingAppointmentsList, departmentsList: $departmentsList, doctorsList: $doctorsList, pharmaciesList: $pharmaciesList)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List upcomingAppointmentsList,
      List departmentsList,
      List doctorsList,
      List pharmaciesList});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? upcomingAppointmentsList = null,
    Object? departmentsList = null,
    Object? doctorsList = null,
    Object? pharmaciesList = null,
  }) {
    return _then(_HomeState(
      upcomingAppointmentsList: null == upcomingAppointmentsList
          ? _self._upcomingAppointmentsList
          : upcomingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List,
      departmentsList: null == departmentsList
          ? _self._departmentsList
          : departmentsList // ignore: cast_nullable_to_non_nullable
              as List,
      doctorsList: null == doctorsList
          ? _self._doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as List,
      pharmaciesList: null == pharmaciesList
          ? _self._pharmaciesList
          : pharmaciesList // ignore: cast_nullable_to_non_nullable
              as List,
    ));
  }
}

// dart format on
