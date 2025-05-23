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

class UserLoggedInWithEmail implements UserEvent {
  const UserLoggedInWithEmail({required this.email, required this.password});

  final String email;
  final String password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLoggedInWithEmailCopyWith<UserLoggedInWithEmail> get copyWith =>
      _$UserLoggedInWithEmailCopyWithImpl<UserLoggedInWithEmail>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoggedInWithEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'UserEvent.userLoggedInWithEmail(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserLoggedInWithEmailCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserLoggedInWithEmailCopyWith(UserLoggedInWithEmail value,
          $Res Function(UserLoggedInWithEmail) _then) =
      _$UserLoggedInWithEmailCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserLoggedInWithEmailCopyWithImpl<$Res>
    implements $UserLoggedInWithEmailCopyWith<$Res> {
  _$UserLoggedInWithEmailCopyWithImpl(this._self, this._then);

  final UserLoggedInWithEmail _self;
  final $Res Function(UserLoggedInWithEmail) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(UserLoggedInWithEmail(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserLoggedInWithPhone implements UserEvent {
  const UserLoggedInWithPhone({required this.phone, required this.password});

  final String phone;
  final String password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLoggedInWithPhoneCopyWith<UserLoggedInWithPhone> get copyWith =>
      _$UserLoggedInWithPhoneCopyWithImpl<UserLoggedInWithPhone>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoggedInWithPhone &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, password);

  @override
  String toString() {
    return 'UserEvent.userLoggedInWithPhone(phone: $phone, password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserLoggedInWithPhoneCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserLoggedInWithPhoneCopyWith(UserLoggedInWithPhone value,
          $Res Function(UserLoggedInWithPhone) _then) =
      _$UserLoggedInWithPhoneCopyWithImpl;
  @useResult
  $Res call({String phone, String password});
}

/// @nodoc
class _$UserLoggedInWithPhoneCopyWithImpl<$Res>
    implements $UserLoggedInWithPhoneCopyWith<$Res> {
  _$UserLoggedInWithPhoneCopyWithImpl(this._self, this._then);

  final UserLoggedInWithPhone _self;
  final $Res Function(UserLoggedInWithPhone) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(UserLoggedInWithPhone(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserRegisteredWithEmail implements UserEvent {
  const UserRegisteredWithEmail({required this.password});

  final String password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRegisteredWithEmailCopyWith<UserRegisteredWithEmail> get copyWith =>
      _$UserRegisteredWithEmailCopyWithImpl<UserRegisteredWithEmail>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRegisteredWithEmail &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'UserEvent.userRegisteredWithEmail(password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserRegisteredWithEmailCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserRegisteredWithEmailCopyWith(UserRegisteredWithEmail value,
          $Res Function(UserRegisteredWithEmail) _then) =
      _$UserRegisteredWithEmailCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$UserRegisteredWithEmailCopyWithImpl<$Res>
    implements $UserRegisteredWithEmailCopyWith<$Res> {
  _$UserRegisteredWithEmailCopyWithImpl(this._self, this._then);

  final UserRegisteredWithEmail _self;
  final $Res Function(UserRegisteredWithEmail) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(UserRegisteredWithEmail(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserRegisteredWithPhone implements UserEvent {
  const UserRegisteredWithPhone({required this.password});

  final String password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRegisteredWithPhoneCopyWith<UserRegisteredWithPhone> get copyWith =>
      _$UserRegisteredWithPhoneCopyWithImpl<UserRegisteredWithPhone>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRegisteredWithPhone &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'UserEvent.userRegisteredWithPhone(password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserRegisteredWithPhoneCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserRegisteredWithPhoneCopyWith(UserRegisteredWithPhone value,
          $Res Function(UserRegisteredWithPhone) _then) =
      _$UserRegisteredWithPhoneCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$UserRegisteredWithPhoneCopyWithImpl<$Res>
    implements $UserRegisteredWithPhoneCopyWith<$Res> {
  _$UserRegisteredWithPhoneCopyWithImpl(this._self, this._then);

  final UserRegisteredWithPhone _self;
  final $Res Function(UserRegisteredWithPhone) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(UserRegisteredWithPhone(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserModified implements UserEvent {
  const UserModified({required this.user});

  final UserModel? user;

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
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserEvent.userModified(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserModifiedCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserModifiedCopyWith(
          UserModified value, $Res Function(UserModified) _then) =
      _$UserModifiedCopyWithImpl;
  @useResult
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
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
    Object? user = freezed,
  }) {
    return _then(UserModified(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of UserEvent
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

class UserLoggedOut implements UserEvent {
  const UserLoggedOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserEvent.userLoggedOut()';
  }
}

/// @nodoc

class UserCompletedProfileData implements UserEvent {
  const UserCompletedProfileData({required this.user});

  final UserModel user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCompletedProfileDataCopyWith<UserCompletedProfileData> get copyWith =>
      _$UserCompletedProfileDataCopyWithImpl<UserCompletedProfileData>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserCompletedProfileData &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserEvent.userCompletedProfileData(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserCompletedProfileDataCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserCompletedProfileDataCopyWith(UserCompletedProfileData value,
          $Res Function(UserCompletedProfileData) _then) =
      _$UserCompletedProfileDataCopyWithImpl;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserCompletedProfileDataCopyWithImpl<$Res>
    implements $UserCompletedProfileDataCopyWith<$Res> {
  _$UserCompletedProfileDataCopyWithImpl(this._self, this._then);

  final UserCompletedProfileData _self;
  final $Res Function(UserCompletedProfileData) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(UserCompletedProfileData(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of UserEvent
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

class UserModifiedProfileData implements UserEvent {
  const UserModifiedProfileData({required this.user});

  final UserModel user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModifiedProfileDataCopyWith<UserModifiedProfileData> get copyWith =>
      _$UserModifiedProfileDataCopyWithImpl<UserModifiedProfileData>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModifiedProfileData &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserEvent.userModifiedProfileData(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserModifiedProfileDataCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserModifiedProfileDataCopyWith(UserModifiedProfileData value,
          $Res Function(UserModifiedProfileData) _then) =
      _$UserModifiedProfileDataCopyWithImpl;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserModifiedProfileDataCopyWithImpl<$Res>
    implements $UserModifiedProfileDataCopyWith<$Res> {
  _$UserModifiedProfileDataCopyWithImpl(this._self, this._then);

  final UserModifiedProfileData _self;
  final $Res Function(UserModifiedProfileData) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(UserModifiedProfileData(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of UserEvent
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

class UserModifiedPassword implements UserEvent {
  const UserModifiedPassword(
      {required this.newPassword, required this.oldPassword});

  final String newPassword;
  final String oldPassword;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModifiedPasswordCopyWith<UserModifiedPassword> get copyWith =>
      _$UserModifiedPasswordCopyWithImpl<UserModifiedPassword>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModifiedPassword &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword, oldPassword);

  @override
  String toString() {
    return 'UserEvent.userModifiedPassword(newPassword: $newPassword, oldPassword: $oldPassword)';
  }
}

/// @nodoc
abstract mixin class $UserModifiedPasswordCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $UserModifiedPasswordCopyWith(UserModifiedPassword value,
          $Res Function(UserModifiedPassword) _then) =
      _$UserModifiedPasswordCopyWithImpl;
  @useResult
  $Res call({String newPassword, String oldPassword});
}

/// @nodoc
class _$UserModifiedPasswordCopyWithImpl<$Res>
    implements $UserModifiedPasswordCopyWith<$Res> {
  _$UserModifiedPasswordCopyWithImpl(this._self, this._then);

  final UserModifiedPassword _self;
  final $Res Function(UserModifiedPassword) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newPassword = null,
    Object? oldPassword = null,
  }) {
    return _then(UserModifiedPassword(
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$UserState {
  UserModel? get user;
  UserStatus get status;
  String get statusMessage;

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
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status, statusMessage);

  @override
  String toString() {
    return 'UserState(user: $user, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) =
      _$UserStateCopyWithImpl;
  @useResult
  $Res call({UserModel? user, UserStatus status, String statusMessage});

  $UserModelCopyWith<$Res>? get user;
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
    Object? user = freezed,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of UserState
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

class _UserState implements UserState {
  const _UserState(
      {required this.user,
      required this.status,
      this.statusMessage = 'Some error occurred'});

  @override
  final UserModel? user;
  @override
  final UserStatus status;
  @override
  @JsonKey()
  final String statusMessage;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status, statusMessage);

  @override
  String toString() {
    return 'UserState(user: $user, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) _then) =
      __$UserStateCopyWithImpl;
  @override
  @useResult
  $Res call({UserModel? user, UserStatus status, String statusMessage});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(_UserState(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of UserState
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
