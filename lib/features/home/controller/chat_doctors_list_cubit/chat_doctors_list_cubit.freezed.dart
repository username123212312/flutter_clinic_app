// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_doctors_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatDoctorsListState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<UserModel> get doctors => throw _privateConstructorUsedError;

  /// Create a copy of ChatDoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatDoctorsListStateCopyWith<ChatDoctorsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDoctorsListStateCopyWith<$Res> {
  factory $ChatDoctorsListStateCopyWith(
    ChatDoctorsListState value,
    $Res Function(ChatDoctorsListState) then,
  ) = _$ChatDoctorsListStateCopyWithImpl<$Res, ChatDoctorsListState>;
  @useResult
  $Res call({DataStatus status, String message, List<UserModel> doctors});
}

/// @nodoc
class _$ChatDoctorsListStateCopyWithImpl<
  $Res,
  $Val extends ChatDoctorsListState
>
    implements $ChatDoctorsListStateCopyWith<$Res> {
  _$ChatDoctorsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? doctors = null,
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
            doctors:
                null == doctors
                    ? _value.doctors
                    : doctors // ignore: cast_nullable_to_non_nullable
                        as List<UserModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatDoctorsListStateImplCopyWith<$Res>
    implements $ChatDoctorsListStateCopyWith<$Res> {
  factory _$$ChatDoctorsListStateImplCopyWith(
    _$ChatDoctorsListStateImpl value,
    $Res Function(_$ChatDoctorsListStateImpl) then,
  ) = __$$ChatDoctorsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, List<UserModel> doctors});
}

/// @nodoc
class __$$ChatDoctorsListStateImplCopyWithImpl<$Res>
    extends _$ChatDoctorsListStateCopyWithImpl<$Res, _$ChatDoctorsListStateImpl>
    implements _$$ChatDoctorsListStateImplCopyWith<$Res> {
  __$$ChatDoctorsListStateImplCopyWithImpl(
    _$ChatDoctorsListStateImpl _value,
    $Res Function(_$ChatDoctorsListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? doctors = null,
  }) {
    return _then(
      _$ChatDoctorsListStateImpl(
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
        doctors:
            null == doctors
                ? _value._doctors
                : doctors // ignore: cast_nullable_to_non_nullable
                    as List<UserModel>,
      ),
    );
  }
}

/// @nodoc

class _$ChatDoctorsListStateImpl implements _ChatDoctorsListState {
  const _$ChatDoctorsListStateImpl({
    required this.status,
    required this.message,
    required final List<UserModel> doctors,
  }) : _doctors = doctors;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<UserModel> _doctors;
  @override
  List<UserModel> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'ChatDoctorsListState(status: $status, message: $message, doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDoctorsListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_doctors),
  );

  /// Create a copy of ChatDoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDoctorsListStateImplCopyWith<_$ChatDoctorsListStateImpl>
  get copyWith =>
      __$$ChatDoctorsListStateImplCopyWithImpl<_$ChatDoctorsListStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ChatDoctorsListState implements ChatDoctorsListState {
  const factory _ChatDoctorsListState({
    required final DataStatus status,
    required final String message,
    required final List<UserModel> doctors,
  }) = _$ChatDoctorsListStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<UserModel> get doctors;

  /// Create a copy of ChatDoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDoctorsListStateImplCopyWith<_$ChatDoctorsListStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
