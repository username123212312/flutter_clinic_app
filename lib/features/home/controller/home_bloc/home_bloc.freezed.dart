// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({required TResult Function() started}) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? started}) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$HomeState {
  List<dynamic> get upcomingAppointmentsList =>
      throw _privateConstructorUsedError;
  List<dynamic> get departmentsList => throw _privateConstructorUsedError;
  List<dynamic> get doctorsList => throw _privateConstructorUsedError;
  List<dynamic> get pharmaciesList => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    List<dynamic> upcomingAppointmentsList,
    List<dynamic> departmentsList,
    List<dynamic> doctorsList,
    List<dynamic> pharmaciesList,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            upcomingAppointmentsList:
                null == upcomingAppointmentsList
                    ? _value.upcomingAppointmentsList
                    : upcomingAppointmentsList // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            departmentsList:
                null == departmentsList
                    ? _value.departmentsList
                    : departmentsList // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            doctorsList:
                null == doctorsList
                    ? _value.doctorsList
                    : doctorsList // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            pharmaciesList:
                null == pharmaciesList
                    ? _value.pharmaciesList
                    : pharmaciesList // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<dynamic> upcomingAppointmentsList,
    List<dynamic> departmentsList,
    List<dynamic> doctorsList,
    List<dynamic> pharmaciesList,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$HomeStateImpl(
        upcomingAppointmentsList:
            null == upcomingAppointmentsList
                ? _value._upcomingAppointmentsList
                : upcomingAppointmentsList // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        departmentsList:
            null == departmentsList
                ? _value._departmentsList
                : departmentsList // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        doctorsList:
            null == doctorsList
                ? _value._doctorsList
                : doctorsList // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        pharmaciesList:
            null == pharmaciesList
                ? _value._pharmaciesList
                : pharmaciesList // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl with DiagnosticableTreeMixin implements _HomeState {
  const _$HomeStateImpl({
    required final List<dynamic> upcomingAppointmentsList,
    required final List<dynamic> departmentsList,
    required final List<dynamic> doctorsList,
    required final List<dynamic> pharmaciesList,
  }) : _upcomingAppointmentsList = upcomingAppointmentsList,
       _departmentsList = departmentsList,
       _doctorsList = doctorsList,
       _pharmaciesList = pharmaciesList;

  final List<dynamic> _upcomingAppointmentsList;
  @override
  List<dynamic> get upcomingAppointmentsList {
    if (_upcomingAppointmentsList is EqualUnmodifiableListView)
      return _upcomingAppointmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingAppointmentsList);
  }

  final List<dynamic> _departmentsList;
  @override
  List<dynamic> get departmentsList {
    if (_departmentsList is EqualUnmodifiableListView) return _departmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departmentsList);
  }

  final List<dynamic> _doctorsList;
  @override
  List<dynamic> get doctorsList {
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorsList);
  }

  final List<dynamic> _pharmaciesList;
  @override
  List<dynamic> get pharmaciesList {
    if (_pharmaciesList is EqualUnmodifiableListView) return _pharmaciesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pharmaciesList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(upcomingAppointmentsList: $upcomingAppointmentsList, departmentsList: $departmentsList, doctorsList: $doctorsList, pharmaciesList: $pharmaciesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(
        DiagnosticsProperty(
          'upcomingAppointmentsList',
          upcomingAppointmentsList,
        ),
      )
      ..add(DiagnosticsProperty('departmentsList', departmentsList))
      ..add(DiagnosticsProperty('doctorsList', doctorsList))
      ..add(DiagnosticsProperty('pharmaciesList', pharmaciesList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(
              other._upcomingAppointmentsList,
              _upcomingAppointmentsList,
            ) &&
            const DeepCollectionEquality().equals(
              other._departmentsList,
              _departmentsList,
            ) &&
            const DeepCollectionEquality().equals(
              other._doctorsList,
              _doctorsList,
            ) &&
            const DeepCollectionEquality().equals(
              other._pharmaciesList,
              _pharmaciesList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_upcomingAppointmentsList),
    const DeepCollectionEquality().hash(_departmentsList),
    const DeepCollectionEquality().hash(_doctorsList),
    const DeepCollectionEquality().hash(_pharmaciesList),
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    required final List<dynamic> upcomingAppointmentsList,
    required final List<dynamic> departmentsList,
    required final List<dynamic> doctorsList,
    required final List<dynamic> pharmaciesList,
  }) = _$HomeStateImpl;

  @override
  List<dynamic> get upcomingAppointmentsList;
  @override
  List<dynamic> get departmentsList;
  @override
  List<dynamic> get doctorsList;
  @override
  List<dynamic> get pharmaciesList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
