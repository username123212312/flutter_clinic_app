// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserEvent()';
  }
}

/// @nodoc
class $UserEventCopyWith<$Res> {
  $UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}

/// @nodoc

class UserModified implements UserEvent {
  const UserModified({this.email, this.password, this.role});

  final String? email;
  final String? password;
  final Role? role;

  /// Create a copy of UserEvent
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
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, role);

  @override
  String toString() {
    return 'UserEvent.userModified(email: $email, password: $password, role: $role)';
  }
}

/// @nodoc
abstract mixin class $UserModifiedCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserModifiedCopyWith(
          UserModified value, $Res Function(UserModified) _then) =
      _$UserModifiedCopyWithImpl;
  @useResult
  $Res call({String? email, String? password, Role? role});
}

/// @nodoc
class _$UserModifiedCopyWithImpl<$Res> implements $UserModifiedCopyWith<$Res> {
  _$UserModifiedCopyWithImpl(this._self, this._then);

  final UserModified _self;
  final $Res Function(UserModified) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
  }) {
    return _then(UserModified(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc

class UserReset implements UserEvent {
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
    return 'UserEvent.userReset()';
  }
}

/// @nodoc
mixin _$UserState {
  String get email;
  String get password;
  Role get role;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserStateCopyWith<UserState> get copyWith =>
      _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, role);

  @override
  String toString() {
    return 'UserState(email: $email, password: $password, role: $role)';
  }
}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) =
      _$UserStateCopyWithImpl;
  @useResult
  $Res call({String email, String password, Role role});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc

class _UserInitial implements UserState {
  const _UserInitial(
      {required this.email, required this.password, required this.role});

  @override
  final String email;
  @override
  final String password;
  @override
  final Role role;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserInitialCopyWith<_UserInitial> get copyWith =>
      __$UserInitialCopyWithImpl<_UserInitial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInitial &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, role);

  @override
  String toString() {
    return 'UserState.initial(email: $email, password: $password, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$UserInitialCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$UserInitialCopyWith(
          _UserInitial value, $Res Function(_UserInitial) _then) =
      __$UserInitialCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password, Role role});
}

/// @nodoc
class __$UserInitialCopyWithImpl<$Res> implements _$UserInitialCopyWith<$Res> {
  __$UserInitialCopyWithImpl(this._self, this._then);

  final _UserInitial _self;
  final $Res Function(_UserInitial) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_UserInitial(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc

class _UserModified implements UserState {
  const _UserModified(
      {required this.email, required this.password, required this.role});

  @override
  final String email;
  @override
  final String password;
  @override
  final Role role;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserModifiedCopyWith<_UserModified> get copyWith =>
      __$UserModifiedCopyWithImpl<_UserModified>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModified &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, role);

  @override
  String toString() {
    return 'UserState.modified(email: $email, password: $password, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$UserModifiedCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$UserModifiedCopyWith(
          _UserModified value, $Res Function(_UserModified) _then) =
      __$UserModifiedCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password, Role role});
}

/// @nodoc
class __$UserModifiedCopyWithImpl<$Res>
    implements _$UserModifiedCopyWith<$Res> {
  __$UserModifiedCopyWithImpl(this._self, this._then);

  final _UserModified _self;
  final $Res Function(_UserModified) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_UserModified(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

// dart format on
