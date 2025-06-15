// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modify_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ModifyPasswordRequest _$ModifyPasswordRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ModifyPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ModifyPasswordRequest {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ModifyPasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModifyPasswordRequestCopyWith<ModifyPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifyPasswordRequestCopyWith<$Res> {
  factory $ModifyPasswordRequestCopyWith(
    ModifyPasswordRequest value,
    $Res Function(ModifyPasswordRequest) then,
  ) = _$ModifyPasswordRequestCopyWithImpl<$Res, ModifyPasswordRequest>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$ModifyPasswordRequestCopyWithImpl<
  $Res,
  $Val extends ModifyPasswordRequest
>
    implements $ModifyPasswordRequestCopyWith<$Res> {
  _$ModifyPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            oldPassword:
                null == oldPassword
                    ? _value.oldPassword
                    : oldPassword // ignore: cast_nullable_to_non_nullable
                        as String,
            newPassword:
                null == newPassword
                    ? _value.newPassword
                    : newPassword // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModifyPasswordRequestImplCopyWith<$Res>
    implements $ModifyPasswordRequestCopyWith<$Res> {
  factory _$$ModifyPasswordRequestImplCopyWith(
    _$ModifyPasswordRequestImpl value,
    $Res Function(_$ModifyPasswordRequestImpl) then,
  ) = __$$ModifyPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$ModifyPasswordRequestImplCopyWithImpl<$Res>
    extends
        _$ModifyPasswordRequestCopyWithImpl<$Res, _$ModifyPasswordRequestImpl>
    implements _$$ModifyPasswordRequestImplCopyWith<$Res> {
  __$$ModifyPasswordRequestImplCopyWithImpl(
    _$ModifyPasswordRequestImpl _value,
    $Res Function(_$ModifyPasswordRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _$ModifyPasswordRequestImpl(
        oldPassword:
            null == oldPassword
                ? _value.oldPassword
                : oldPassword // ignore: cast_nullable_to_non_nullable
                    as String,
        newPassword:
            null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ModifyPasswordRequestImpl implements _ModifyPasswordRequest {
  _$ModifyPasswordRequestImpl({
    required this.oldPassword,
    required this.newPassword,
  });

  factory _$ModifyPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModifyPasswordRequestImplFromJson(json);

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ModifyPasswordRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyPasswordRequestImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifyPasswordRequestImplCopyWith<_$ModifyPasswordRequestImpl>
  get copyWith =>
      __$$ModifyPasswordRequestImplCopyWithImpl<_$ModifyPasswordRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ModifyPasswordRequestImplToJson(this);
  }
}

abstract class _ModifyPasswordRequest implements ModifyPasswordRequest {
  factory _ModifyPasswordRequest({
    required final String oldPassword,
    required final String newPassword,
  }) = _$ModifyPasswordRequestImpl;

  factory _ModifyPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ModifyPasswordRequestImpl.fromJson;

  @override
  String get oldPassword;
  @override
  String get newPassword;

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModifyPasswordRequestImplCopyWith<_$ModifyPasswordRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
