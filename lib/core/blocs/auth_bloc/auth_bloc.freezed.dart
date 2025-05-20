// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// @nodoc

class UserModified implements AuthEvent {
  const UserModified({required this.user});

  final UserModel user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModifiedCopyWith<UserModified> get copyWith =>
      _$UserModifiedCopyWithImpl<UserModified>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModified &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthEvent.userModified(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserModifiedCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $UserModifiedCopyWith(
          UserModified value, $Res Function(UserModified) _then) =
      _$UserModifiedCopyWithImpl;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserModifiedCopyWithImpl<$Res> implements $UserModifiedCopyWith<$Res> {
  _$UserModifiedCopyWithImpl(this._self, this._then);

  final UserModified _self;
  final $Res Function(UserModified) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(UserModified(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class UserReset implements AuthEvent {
  const UserReset();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.userReset()';
  }
}

/// @nodoc
mixin _$AuthState {
  AuthUser? get authUser;
  String? get token;
  bool? get isAuth;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<AuthState> get copyWith =>
      _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState &&
            (identical(other.authUser, authUser) ||
                other.authUser == authUser) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authUser, token, isAuth);

  @override
  String toString() {
    return 'AuthState(authUser: $authUser, token: $token, isAuth: $isAuth)';
  }
}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
      _$AuthStateCopyWithImpl;
  @useResult
  $Res call({AuthUser? authUser, String? token, bool? isAuth});

  $AuthUserCopyWith<$Res>? get authUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authUser = freezed,
    Object? token = freezed,
    Object? isAuth = freezed,
  }) {
    return _then(_self.copyWith(
      authUser: freezed == authUser
          ? _self.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as AuthUser?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isAuth: freezed == isAuth
          ? _self.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res>? get authUser {
    if (_self.authUser == null) {
      return null;
    }

    return $AuthUserCopyWith<$Res>(_self.authUser!, (value) {
      return _then(_self.copyWith(authUser: value));
    });
  }
}

/// @nodoc

class _AuthState implements AuthState {
  const _AuthState({this.authUser, this.token, this.isAuth});

  @override
  final AuthUser? authUser;
  @override
  final String? token;
  @override
  final bool? isAuth;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            (identical(other.authUser, authUser) ||
                other.authUser == authUser) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authUser, token, isAuth);

  @override
  String toString() {
    return 'AuthState(authUser: $authUser, token: $token, isAuth: $isAuth)';
  }
}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) _then) =
      __$AuthStateCopyWithImpl;
  @override
  @useResult
  $Res call({AuthUser? authUser, String? token, bool? isAuth});

  @override
  $AuthUserCopyWith<$Res>? get authUser;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authUser = freezed,
    Object? token = freezed,
    Object? isAuth = freezed,
  }) {
    return _then(_AuthState(
      authUser: freezed == authUser
          ? _self.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as AuthUser?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isAuth: freezed == isAuth
          ? _self.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res>? get authUser {
    if (_self.authUser == null) {
      return null;
    }

    return $AuthUserCopyWith<$Res>(_self.authUser!, (value) {
      return _then(_self.copyWith(authUser: value));
    });
  }
}

// dart format on
