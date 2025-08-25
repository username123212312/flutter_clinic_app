// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) userModified,
    required TResult Function(UserModel user, String token) userAuthenticated,
    required TResult Function() userReset,
    required TResult Function() checkUserAuthState,
    required TResult Function(String token) addToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? userModified,
    TResult? Function(UserModel user, String token)? userAuthenticated,
    TResult? Function()? userReset,
    TResult? Function()? checkUserAuthState,
    TResult? Function(String token)? addToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? userModified,
    TResult Function(UserModel user, String token)? userAuthenticated,
    TResult Function()? userReset,
    TResult Function()? checkUserAuthState,
    TResult Function(String token)? addToken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserReset value) userReset,
    required TResult Function(CheckUserAuthState value) checkUserAuthState,
    required TResult Function(TokenAdded value) addToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserAuthenticated value)? userAuthenticated,
    TResult? Function(UserReset value)? userReset,
    TResult? Function(CheckUserAuthState value)? checkUserAuthState,
    TResult? Function(TokenAdded value)? addToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModified value)? userModified,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserReset value)? userReset,
    TResult Function(CheckUserAuthState value)? checkUserAuthState,
    TResult Function(TokenAdded value)? addToken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserModifiedImplCopyWith<$Res> {
  factory _$$UserModifiedImplCopyWith(
    _$UserModifiedImpl value,
    $Res Function(_$UserModifiedImpl) then,
  ) = __$$UserModifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserModifiedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserModifiedImpl>
    implements _$$UserModifiedImplCopyWith<$Res> {
  __$$UserModifiedImplCopyWithImpl(
    _$UserModifiedImpl _value,
    $Res Function(_$UserModifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$UserModifiedImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel,
      ),
    );
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserModifiedImpl implements UserModified {
  const _$UserModifiedImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.userModified(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModifiedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModifiedImplCopyWith<_$UserModifiedImpl> get copyWith =>
      __$$UserModifiedImplCopyWithImpl<_$UserModifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) userModified,
    required TResult Function(UserModel user, String token) userAuthenticated,
    required TResult Function() userReset,
    required TResult Function() checkUserAuthState,
    required TResult Function(String token) addToken,
  }) {
    return userModified(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? userModified,
    TResult? Function(UserModel user, String token)? userAuthenticated,
    TResult? Function()? userReset,
    TResult? Function()? checkUserAuthState,
    TResult? Function(String token)? addToken,
  }) {
    return userModified?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? userModified,
    TResult Function(UserModel user, String token)? userAuthenticated,
    TResult Function()? userReset,
    TResult Function()? checkUserAuthState,
    TResult Function(String token)? addToken,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserReset value) userReset,
    required TResult Function(CheckUserAuthState value) checkUserAuthState,
    required TResult Function(TokenAdded value) addToken,
  }) {
    return userModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserAuthenticated value)? userAuthenticated,
    TResult? Function(UserReset value)? userReset,
    TResult? Function(CheckUserAuthState value)? checkUserAuthState,
    TResult? Function(TokenAdded value)? addToken,
  }) {
    return userModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModified value)? userModified,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserReset value)? userReset,
    TResult Function(CheckUserAuthState value)? checkUserAuthState,
    TResult Function(TokenAdded value)? addToken,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(this);
    }
    return orElse();
  }
}

abstract class UserModified implements AuthEvent {
  const factory UserModified({required final UserModel user}) =
      _$UserModifiedImpl;

  UserModel get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModifiedImplCopyWith<_$UserModifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAuthenticatedImplCopyWith<$Res> {
  factory _$$UserAuthenticatedImplCopyWith(
    _$UserAuthenticatedImpl value,
    $Res Function(_$UserAuthenticatedImpl) then,
  ) = __$$UserAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, String token});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserAuthenticatedImpl>
    implements _$$UserAuthenticatedImplCopyWith<$Res> {
  __$$UserAuthenticatedImplCopyWithImpl(
    _$UserAuthenticatedImpl _value,
    $Res Function(_$UserAuthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null, Object? token = null}) {
    return _then(
      _$UserAuthenticatedImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel,
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserAuthenticatedImpl implements UserAuthenticated {
  const _$UserAuthenticatedImpl({required this.user, required this.token});

  @override
  final UserModel user;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.userAuthenticated(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthenticatedImplCopyWith<_$UserAuthenticatedImpl> get copyWith =>
      __$$UserAuthenticatedImplCopyWithImpl<_$UserAuthenticatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) userModified,
    required TResult Function(UserModel user, String token) userAuthenticated,
    required TResult Function() userReset,
    required TResult Function() checkUserAuthState,
    required TResult Function(String token) addToken,
  }) {
    return userAuthenticated(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? userModified,
    TResult? Function(UserModel user, String token)? userAuthenticated,
    TResult? Function()? userReset,
    TResult? Function()? checkUserAuthState,
    TResult? Function(String token)? addToken,
  }) {
    return userAuthenticated?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? userModified,
    TResult Function(UserModel user, String token)? userAuthenticated,
    TResult Function()? userReset,
    TResult Function()? checkUserAuthState,
    TResult Function(String token)? addToken,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserReset value) userReset,
    required TResult Function(CheckUserAuthState value) checkUserAuthState,
    required TResult Function(TokenAdded value) addToken,
  }) {
    return userAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserAuthenticated value)? userAuthenticated,
    TResult? Function(UserReset value)? userReset,
    TResult? Function(CheckUserAuthState value)? checkUserAuthState,
    TResult? Function(TokenAdded value)? addToken,
  }) {
    return userAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModified value)? userModified,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserReset value)? userReset,
    TResult Function(CheckUserAuthState value)? checkUserAuthState,
    TResult Function(TokenAdded value)? addToken,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UserAuthenticated implements AuthEvent {
  const factory UserAuthenticated({
    required final UserModel user,
    required final String token,
  }) = _$UserAuthenticatedImpl;

  UserModel get user;
  String get token;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthenticatedImplCopyWith<_$UserAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserResetImplCopyWith<$Res> {
  factory _$$UserResetImplCopyWith(
    _$UserResetImpl value,
    $Res Function(_$UserResetImpl) then,
  ) = __$$UserResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserResetImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserResetImpl>
    implements _$$UserResetImplCopyWith<$Res> {
  __$$UserResetImplCopyWithImpl(
    _$UserResetImpl _value,
    $Res Function(_$UserResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserResetImpl implements UserReset {
  const _$UserResetImpl();

  @override
  String toString() {
    return 'AuthEvent.userReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) userModified,
    required TResult Function(UserModel user, String token) userAuthenticated,
    required TResult Function() userReset,
    required TResult Function() checkUserAuthState,
    required TResult Function(String token) addToken,
  }) {
    return userReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? userModified,
    TResult? Function(UserModel user, String token)? userAuthenticated,
    TResult? Function()? userReset,
    TResult? Function()? checkUserAuthState,
    TResult? Function(String token)? addToken,
  }) {
    return userReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? userModified,
    TResult Function(UserModel user, String token)? userAuthenticated,
    TResult Function()? userReset,
    TResult Function()? checkUserAuthState,
    TResult Function(String token)? addToken,
    required TResult orElse(),
  }) {
    if (userReset != null) {
      return userReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserReset value) userReset,
    required TResult Function(CheckUserAuthState value) checkUserAuthState,
    required TResult Function(TokenAdded value) addToken,
  }) {
    return userReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserAuthenticated value)? userAuthenticated,
    TResult? Function(UserReset value)? userReset,
    TResult? Function(CheckUserAuthState value)? checkUserAuthState,
    TResult? Function(TokenAdded value)? addToken,
  }) {
    return userReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModified value)? userModified,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserReset value)? userReset,
    TResult Function(CheckUserAuthState value)? checkUserAuthState,
    TResult Function(TokenAdded value)? addToken,
    required TResult orElse(),
  }) {
    if (userReset != null) {
      return userReset(this);
    }
    return orElse();
  }
}

abstract class UserReset implements AuthEvent {
  const factory UserReset() = _$UserResetImpl;
}

/// @nodoc
abstract class _$$CheckUserAuthStateImplCopyWith<$Res> {
  factory _$$CheckUserAuthStateImplCopyWith(
    _$CheckUserAuthStateImpl value,
    $Res Function(_$CheckUserAuthStateImpl) then,
  ) = __$$CheckUserAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserAuthStateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserAuthStateImpl>
    implements _$$CheckUserAuthStateImplCopyWith<$Res> {
  __$$CheckUserAuthStateImplCopyWithImpl(
    _$CheckUserAuthStateImpl _value,
    $Res Function(_$CheckUserAuthStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUserAuthStateImpl implements CheckUserAuthState {
  const _$CheckUserAuthStateImpl();

  @override
  String toString() {
    return 'AuthEvent.checkUserAuthState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) userModified,
    required TResult Function(UserModel user, String token) userAuthenticated,
    required TResult Function() userReset,
    required TResult Function() checkUserAuthState,
    required TResult Function(String token) addToken,
  }) {
    return checkUserAuthState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? userModified,
    TResult? Function(UserModel user, String token)? userAuthenticated,
    TResult? Function()? userReset,
    TResult? Function()? checkUserAuthState,
    TResult? Function(String token)? addToken,
  }) {
    return checkUserAuthState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? userModified,
    TResult Function(UserModel user, String token)? userAuthenticated,
    TResult Function()? userReset,
    TResult Function()? checkUserAuthState,
    TResult Function(String token)? addToken,
    required TResult orElse(),
  }) {
    if (checkUserAuthState != null) {
      return checkUserAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserReset value) userReset,
    required TResult Function(CheckUserAuthState value) checkUserAuthState,
    required TResult Function(TokenAdded value) addToken,
  }) {
    return checkUserAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserAuthenticated value)? userAuthenticated,
    TResult? Function(UserReset value)? userReset,
    TResult? Function(CheckUserAuthState value)? checkUserAuthState,
    TResult? Function(TokenAdded value)? addToken,
  }) {
    return checkUserAuthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModified value)? userModified,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserReset value)? userReset,
    TResult Function(CheckUserAuthState value)? checkUserAuthState,
    TResult Function(TokenAdded value)? addToken,
    required TResult orElse(),
  }) {
    if (checkUserAuthState != null) {
      return checkUserAuthState(this);
    }
    return orElse();
  }
}

abstract class CheckUserAuthState implements AuthEvent {
  const factory CheckUserAuthState() = _$CheckUserAuthStateImpl;
}

/// @nodoc
abstract class _$$TokenAddedImplCopyWith<$Res> {
  factory _$$TokenAddedImplCopyWith(
    _$TokenAddedImpl value,
    $Res Function(_$TokenAddedImpl) then,
  ) = __$$TokenAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TokenAddedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$TokenAddedImpl>
    implements _$$TokenAddedImplCopyWith<$Res> {
  __$$TokenAddedImplCopyWithImpl(
    _$TokenAddedImpl _value,
    $Res Function(_$TokenAddedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null}) {
    return _then(
      _$TokenAddedImpl(
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$TokenAddedImpl implements TokenAdded {
  const _$TokenAddedImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.addToken(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenAddedImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenAddedImplCopyWith<_$TokenAddedImpl> get copyWith =>
      __$$TokenAddedImplCopyWithImpl<_$TokenAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) userModified,
    required TResult Function(UserModel user, String token) userAuthenticated,
    required TResult Function() userReset,
    required TResult Function() checkUserAuthState,
    required TResult Function(String token) addToken,
  }) {
    return addToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? userModified,
    TResult? Function(UserModel user, String token)? userAuthenticated,
    TResult? Function()? userReset,
    TResult? Function()? checkUserAuthState,
    TResult? Function(String token)? addToken,
  }) {
    return addToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? userModified,
    TResult Function(UserModel user, String token)? userAuthenticated,
    TResult Function()? userReset,
    TResult Function()? checkUserAuthState,
    TResult Function(String token)? addToken,
    required TResult orElse(),
  }) {
    if (addToken != null) {
      return addToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserReset value) userReset,
    required TResult Function(CheckUserAuthState value) checkUserAuthState,
    required TResult Function(TokenAdded value) addToken,
  }) {
    return addToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserAuthenticated value)? userAuthenticated,
    TResult? Function(UserReset value)? userReset,
    TResult? Function(CheckUserAuthState value)? checkUserAuthState,
    TResult? Function(TokenAdded value)? addToken,
  }) {
    return addToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModified value)? userModified,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserReset value)? userReset,
    TResult Function(CheckUserAuthState value)? checkUserAuthState,
    TResult Function(TokenAdded value)? addToken,
    required TResult orElse(),
  }) {
    if (addToken != null) {
      return addToken(this);
    }
    return orElse();
  }
}

abstract class TokenAdded implements AuthEvent {
  const factory TokenAdded({required final String token}) = _$TokenAddedImpl;

  String get token;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenAddedImplCopyWith<_$TokenAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  AuthUser? get authUser => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  bool? get isAuth => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({
    AuthUser? authUser,
    String? token,
    bool? isAuth,
    DataStatus status,
    String statusMessage,
  });

  $AuthUserCopyWith<$Res>? get authUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authUser = freezed,
    Object? token = freezed,
    Object? isAuth = freezed,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(
      _value.copyWith(
            authUser:
                freezed == authUser
                    ? _value.authUser
                    : authUser // ignore: cast_nullable_to_non_nullable
                        as AuthUser?,
            token:
                freezed == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String?,
            isAuth:
                freezed == isAuth
                    ? _value.isAuth
                    : isAuth // ignore: cast_nullable_to_non_nullable
                        as bool?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            statusMessage:
                null == statusMessage
                    ? _value.statusMessage
                    : statusMessage // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res>? get authUser {
    if (_value.authUser == null) {
      return null;
    }

    return $AuthUserCopyWith<$Res>(_value.authUser!, (value) {
      return _then(_value.copyWith(authUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
    _$AuthStateImpl value,
    $Res Function(_$AuthStateImpl) then,
  ) = __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AuthUser? authUser,
    String? token,
    bool? isAuth,
    DataStatus status,
    String statusMessage,
  });

  @override
  $AuthUserCopyWith<$Res>? get authUser;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
    _$AuthStateImpl _value,
    $Res Function(_$AuthStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authUser = freezed,
    Object? token = freezed,
    Object? isAuth = freezed,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(
      _$AuthStateImpl(
        authUser:
            freezed == authUser
                ? _value.authUser
                : authUser // ignore: cast_nullable_to_non_nullable
                    as AuthUser?,
        token:
            freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String?,
        isAuth:
            freezed == isAuth
                ? _value.isAuth
                : isAuth // ignore: cast_nullable_to_non_nullable
                    as bool?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        statusMessage:
            null == statusMessage
                ? _value.statusMessage
                : statusMessage // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl({
    this.authUser,
    this.token,
    this.isAuth = false,
    required this.status,
    required this.statusMessage,
  });

  @override
  final AuthUser? authUser;
  @override
  final String? token;
  @override
  @JsonKey()
  final bool? isAuth;
  @override
  final DataStatus status;
  @override
  final String statusMessage;

  @override
  String toString() {
    return 'AuthState(authUser: $authUser, token: $token, isAuth: $isAuth, status: $status, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.authUser, authUser) ||
                other.authUser == authUser) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authUser, token, isAuth, status, statusMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({
    final AuthUser? authUser,
    final String? token,
    final bool? isAuth,
    required final DataStatus status,
    required final String statusMessage,
  }) = _$AuthStateImpl;

  @override
  AuthUser? get authUser;
  @override
  String? get token;
  @override
  bool? get isAuth;
  @override
  DataStatus get status;
  @override
  String get statusMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
