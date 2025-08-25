// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_appointments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChangeAppointmentsState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<DateTime> get availableDays => throw _privateConstructorUsedError;

  /// Create a copy of ChangeAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeAppointmentsStateCopyWith<ChangeAppointmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAppointmentsStateCopyWith<$Res> {
  factory $ChangeAppointmentsStateCopyWith(
    ChangeAppointmentsState value,
    $Res Function(ChangeAppointmentsState) then,
  ) = _$ChangeAppointmentsStateCopyWithImpl<$Res, ChangeAppointmentsState>;
  @useResult
  $Res call({DataStatus status, String message, List<DateTime> availableDays});
}

/// @nodoc
class _$ChangeAppointmentsStateCopyWithImpl<
  $Res,
  $Val extends ChangeAppointmentsState
>
    implements $ChangeAppointmentsStateCopyWith<$Res> {
  _$ChangeAppointmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? availableDays = null,
  }) {
    return _then(
      _value.copyWith(
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
            availableDays:
                null == availableDays
                    ? _value.availableDays
                    : availableDays // ignore: cast_nullable_to_non_nullable
                        as List<DateTime>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangeAppointmentsStateImplCopyWith<$Res>
    implements $ChangeAppointmentsStateCopyWith<$Res> {
  factory _$$ChangeAppointmentsStateImplCopyWith(
    _$ChangeAppointmentsStateImpl value,
    $Res Function(_$ChangeAppointmentsStateImpl) then,
  ) = __$$ChangeAppointmentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, List<DateTime> availableDays});
}

/// @nodoc
class __$$ChangeAppointmentsStateImplCopyWithImpl<$Res>
    extends
        _$ChangeAppointmentsStateCopyWithImpl<
          $Res,
          _$ChangeAppointmentsStateImpl
        >
    implements _$$ChangeAppointmentsStateImplCopyWith<$Res> {
  __$$ChangeAppointmentsStateImplCopyWithImpl(
    _$ChangeAppointmentsStateImpl _value,
    $Res Function(_$ChangeAppointmentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? availableDays = null,
  }) {
    return _then(
      _$ChangeAppointmentsStateImpl(
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
        availableDays:
            null == availableDays
                ? _value._availableDays
                : availableDays // ignore: cast_nullable_to_non_nullable
                    as List<DateTime>,
      ),
    );
  }
}

/// @nodoc

class _$ChangeAppointmentsStateImpl implements _ChangeAppointmentsState {
  const _$ChangeAppointmentsStateImpl({
    required this.status,
    required this.message,
    required final List<DateTime> availableDays,
  }) : _availableDays = availableDays;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<DateTime> _availableDays;
  @override
  List<DateTime> get availableDays {
    if (_availableDays is EqualUnmodifiableListView) return _availableDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDays);
  }

  @override
  String toString() {
    return 'ChangeAppointmentsState(status: $status, message: $message, availableDays: $availableDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppointmentsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._availableDays,
              _availableDays,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_availableDays),
  );

  /// Create a copy of ChangeAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppointmentsStateImplCopyWith<_$ChangeAppointmentsStateImpl>
  get copyWith => __$$ChangeAppointmentsStateImplCopyWithImpl<
    _$ChangeAppointmentsStateImpl
  >(this, _$identity);
}

abstract class _ChangeAppointmentsState implements ChangeAppointmentsState {
  const factory _ChangeAppointmentsState({
    required final DataStatus status,
    required final String message,
    required final List<DateTime> availableDays,
  }) = _$ChangeAppointmentsStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<DateTime> get availableDays;

  /// Create a copy of ChangeAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAppointmentsStateImplCopyWith<_$ChangeAppointmentsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
