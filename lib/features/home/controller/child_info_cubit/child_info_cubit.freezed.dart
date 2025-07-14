// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChildInfoState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserModel get child => throw _privateConstructorUsedError;

  /// Create a copy of ChildInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildInfoStateCopyWith<ChildInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildInfoStateCopyWith<$Res> {
  factory $ChildInfoStateCopyWith(
    ChildInfoState value,
    $Res Function(ChildInfoState) then,
  ) = _$ChildInfoStateCopyWithImpl<$Res, ChildInfoState>;
  @useResult
  $Res call({DataStatus status, String message, UserModel child});

  $UserModelCopyWith<$Res> get child;
}

/// @nodoc
class _$ChildInfoStateCopyWithImpl<$Res, $Val extends ChildInfoState>
    implements $ChildInfoStateCopyWith<$Res> {
  _$ChildInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? child = null,
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
            child:
                null == child
                    ? _value.child
                    : child // ignore: cast_nullable_to_non_nullable
                        as UserModel,
          )
          as $Val,
    );
  }

  /// Create a copy of ChildInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get child {
    return $UserModelCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildInfoStateImplCopyWith<$Res>
    implements $ChildInfoStateCopyWith<$Res> {
  factory _$$ChildInfoStateImplCopyWith(
    _$ChildInfoStateImpl value,
    $Res Function(_$ChildInfoStateImpl) then,
  ) = __$$ChildInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, UserModel child});

  @override
  $UserModelCopyWith<$Res> get child;
}

/// @nodoc
class __$$ChildInfoStateImplCopyWithImpl<$Res>
    extends _$ChildInfoStateCopyWithImpl<$Res, _$ChildInfoStateImpl>
    implements _$$ChildInfoStateImplCopyWith<$Res> {
  __$$ChildInfoStateImplCopyWithImpl(
    _$ChildInfoStateImpl _value,
    $Res Function(_$ChildInfoStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChildInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? child = null,
  }) {
    return _then(
      _$ChildInfoStateImpl(
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
        child:
            null == child
                ? _value.child
                : child // ignore: cast_nullable_to_non_nullable
                    as UserModel,
      ),
    );
  }
}

/// @nodoc

class _$ChildInfoStateImpl implements _ChildInfoState {
  const _$ChildInfoStateImpl({
    required this.status,
    required this.message,
    required this.child,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final UserModel child;

  @override
  String toString() {
    return 'ChildInfoState(status: $status, message: $message, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildInfoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, child);

  /// Create a copy of ChildInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildInfoStateImplCopyWith<_$ChildInfoStateImpl> get copyWith =>
      __$$ChildInfoStateImplCopyWithImpl<_$ChildInfoStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ChildInfoState implements ChildInfoState {
  const factory _ChildInfoState({
    required final DataStatus status,
    required final String message,
    required final UserModel child,
  }) = _$ChildInfoStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  UserModel get child;

  /// Create a copy of ChildInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildInfoStateImplCopyWith<_$ChildInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
