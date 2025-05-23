// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditProfileRequest {
  UserModel? get user;

  /// Create a copy of EditProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditProfileRequestCopyWith<EditProfileRequest> get copyWith =>
      _$EditProfileRequestCopyWithImpl<EditProfileRequest>(
          this as EditProfileRequest, _$identity);

  /// Serializes this EditProfileRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileRequest &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'EditProfileRequest(user: $user)';
  }
}

/// @nodoc
abstract mixin class $EditProfileRequestCopyWith<$Res> {
  factory $EditProfileRequestCopyWith(
          EditProfileRequest value, $Res Function(EditProfileRequest) _then) =
      _$EditProfileRequestCopyWithImpl;
  @useResult
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$EditProfileRequestCopyWithImpl<$Res>
    implements $EditProfileRequestCopyWith<$Res> {
  _$EditProfileRequestCopyWithImpl(this._self, this._then);

  final EditProfileRequest _self;
  final $Res Function(EditProfileRequest) _then;

  /// Create a copy of EditProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of EditProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EditProfileRequest implements EditProfileRequest {
  _EditProfileRequest({this.user});
  factory _EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestFromJson(json);

  @override
  final UserModel? user;

  /// Create a copy of EditProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditProfileRequestCopyWith<_EditProfileRequest> get copyWith =>
      __$EditProfileRequestCopyWithImpl<_EditProfileRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditProfileRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditProfileRequest &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'EditProfileRequest(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$EditProfileRequestCopyWith<$Res>
    implements $EditProfileRequestCopyWith<$Res> {
  factory _$EditProfileRequestCopyWith(
          _EditProfileRequest value, $Res Function(_EditProfileRequest) _then) =
      __$EditProfileRequestCopyWithImpl;
  @override
  @useResult
  $Res call({UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$EditProfileRequestCopyWithImpl<$Res>
    implements _$EditProfileRequestCopyWith<$Res> {
  __$EditProfileRequestCopyWithImpl(this._self, this._then);

  final _EditProfileRequest _self;
  final $Res Function(_EditProfileRequest) _then;

  /// Create a copy of EditProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_EditProfileRequest(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of EditProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
