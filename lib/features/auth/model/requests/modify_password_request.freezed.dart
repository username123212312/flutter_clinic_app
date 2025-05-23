// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modify_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModifyPasswordRequest {
  String get oldPassword;
  String get newPassword;

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModifyPasswordRequestCopyWith<ModifyPasswordRequest> get copyWith =>
      _$ModifyPasswordRequestCopyWithImpl<ModifyPasswordRequest>(
          this as ModifyPasswordRequest, _$identity);

  /// Serializes this ModifyPasswordRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModifyPasswordRequest &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @override
  String toString() {
    return 'ModifyPasswordRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class $ModifyPasswordRequestCopyWith<$Res> {
  factory $ModifyPasswordRequestCopyWith(ModifyPasswordRequest value,
          $Res Function(ModifyPasswordRequest) _then) =
      _$ModifyPasswordRequestCopyWithImpl;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$ModifyPasswordRequestCopyWithImpl<$Res>
    implements $ModifyPasswordRequestCopyWith<$Res> {
  _$ModifyPasswordRequestCopyWithImpl(this._self, this._then);

  final ModifyPasswordRequest _self;
  final $Res Function(ModifyPasswordRequest) _then;

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_self.copyWith(
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ModifyPasswordRequest implements ModifyPasswordRequest {
  _ModifyPasswordRequest(
      {required this.oldPassword, required this.newPassword});
  factory _ModifyPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ModifyPasswordRequestFromJson(json);

  @override
  final String oldPassword;
  @override
  final String newPassword;

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModifyPasswordRequestCopyWith<_ModifyPasswordRequest> get copyWith =>
      __$ModifyPasswordRequestCopyWithImpl<_ModifyPasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModifyPasswordRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModifyPasswordRequest &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @override
  String toString() {
    return 'ModifyPasswordRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class _$ModifyPasswordRequestCopyWith<$Res>
    implements $ModifyPasswordRequestCopyWith<$Res> {
  factory _$ModifyPasswordRequestCopyWith(_ModifyPasswordRequest value,
          $Res Function(_ModifyPasswordRequest) _then) =
      __$ModifyPasswordRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$ModifyPasswordRequestCopyWithImpl<$Res>
    implements _$ModifyPasswordRequestCopyWith<$Res> {
  __$ModifyPasswordRequestCopyWithImpl(this._self, this._then);

  final _ModifyPasswordRequest _self;
  final $Res Function(_ModifyPasswordRequest) _then;

  /// Create a copy of ModifyPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_ModifyPasswordRequest(
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
