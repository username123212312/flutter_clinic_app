// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserLoggedInWithEmailImplCopyWith<$Res> {
  factory _$$UserLoggedInWithEmailImplCopyWith(
    _$UserLoggedInWithEmailImpl value,
    $Res Function(_$UserLoggedInWithEmailImpl) then,
  ) = __$$UserLoggedInWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoggedInWithEmailImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserLoggedInWithEmailImpl>
    implements _$$UserLoggedInWithEmailImplCopyWith<$Res> {
  __$$UserLoggedInWithEmailImplCopyWithImpl(
    _$UserLoggedInWithEmailImpl _value,
    $Res Function(_$UserLoggedInWithEmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$UserLoggedInWithEmailImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UserLoggedInWithEmailImpl implements UserLoggedInWithEmail {
  const _$UserLoggedInWithEmailImpl({
    required this.email,
    required this.password,
  });

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.userLoggedInWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInWithEmailImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInWithEmailImplCopyWith<_$UserLoggedInWithEmailImpl>
  get copyWith =>
      __$$UserLoggedInWithEmailImplCopyWithImpl<_$UserLoggedInWithEmailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userLoggedInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userLoggedInWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedInWithEmail != null) {
      return userLoggedInWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userLoggedInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userLoggedInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedInWithEmail != null) {
      return userLoggedInWithEmail(this);
    }
    return orElse();
  }
}

abstract class UserLoggedInWithEmail implements UserEvent {
  const factory UserLoggedInWithEmail({
    required final String email,
    required final String password,
  }) = _$UserLoggedInWithEmailImpl;

  String get email;
  String get password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoggedInWithEmailImplCopyWith<_$UserLoggedInWithEmailImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedInWithPhoneImplCopyWith<$Res> {
  factory _$$UserLoggedInWithPhoneImplCopyWith(
    _$UserLoggedInWithPhoneImpl value,
    $Res Function(_$UserLoggedInWithPhoneImpl) then,
  ) = __$$UserLoggedInWithPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String password});
}

/// @nodoc
class __$$UserLoggedInWithPhoneImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserLoggedInWithPhoneImpl>
    implements _$$UserLoggedInWithPhoneImplCopyWith<$Res> {
  __$$UserLoggedInWithPhoneImplCopyWithImpl(
    _$UserLoggedInWithPhoneImpl _value,
    $Res Function(_$UserLoggedInWithPhoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null, Object? password = null}) {
    return _then(
      _$UserLoggedInWithPhoneImpl(
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UserLoggedInWithPhoneImpl implements UserLoggedInWithPhone {
  const _$UserLoggedInWithPhoneImpl({
    required this.phone,
    required this.password,
  });

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.userLoggedInWithPhone(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInWithPhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, password);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInWithPhoneImplCopyWith<_$UserLoggedInWithPhoneImpl>
  get copyWith =>
      __$$UserLoggedInWithPhoneImplCopyWithImpl<_$UserLoggedInWithPhoneImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userLoggedInWithPhone(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userLoggedInWithPhone?.call(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedInWithPhone != null) {
      return userLoggedInWithPhone(phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userLoggedInWithPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userLoggedInWithPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedInWithPhone != null) {
      return userLoggedInWithPhone(this);
    }
    return orElse();
  }
}

abstract class UserLoggedInWithPhone implements UserEvent {
  const factory UserLoggedInWithPhone({
    required final String phone,
    required final String password,
  }) = _$UserLoggedInWithPhoneImpl;

  String get phone;
  String get password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoggedInWithPhoneImplCopyWith<_$UserLoggedInWithPhoneImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedInWithGoogleImplCopyWith<$Res> {
  factory _$$UserLoggedInWithGoogleImplCopyWith(
    _$UserLoggedInWithGoogleImpl value,
    $Res Function(_$UserLoggedInWithGoogleImpl) then,
  ) = __$$UserLoggedInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoggedInWithGoogleImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserLoggedInWithGoogleImpl>
    implements _$$UserLoggedInWithGoogleImplCopyWith<$Res> {
  __$$UserLoggedInWithGoogleImplCopyWithImpl(
    _$UserLoggedInWithGoogleImpl _value,
    $Res Function(_$UserLoggedInWithGoogleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserLoggedInWithGoogleImpl implements UserLoggedInWithGoogle {
  const _$UserLoggedInWithGoogleImpl();

  @override
  String toString() {
    return 'UserEvent.userLoggedInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userLoggedInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userLoggedInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedInWithGoogle != null) {
      return userLoggedInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userLoggedInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userLoggedInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedInWithGoogle != null) {
      return userLoggedInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class UserLoggedInWithGoogle implements UserEvent {
  const factory UserLoggedInWithGoogle() = _$UserLoggedInWithGoogleImpl;
}

/// @nodoc
abstract class _$$UserRegisteredWithEmailImplCopyWith<$Res> {
  factory _$$UserRegisteredWithEmailImplCopyWith(
    _$UserRegisteredWithEmailImpl value,
    $Res Function(_$UserRegisteredWithEmailImpl) then,
  ) = __$$UserRegisteredWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UserRegisteredWithEmailImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserRegisteredWithEmailImpl>
    implements _$$UserRegisteredWithEmailImplCopyWith<$Res> {
  __$$UserRegisteredWithEmailImplCopyWithImpl(
    _$UserRegisteredWithEmailImpl _value,
    $Res Function(_$UserRegisteredWithEmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$UserRegisteredWithEmailImpl(
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UserRegisteredWithEmailImpl implements UserRegisteredWithEmail {
  const _$UserRegisteredWithEmailImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.userRegisteredWithEmail(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisteredWithEmailImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisteredWithEmailImplCopyWith<_$UserRegisteredWithEmailImpl>
  get copyWith => __$$UserRegisteredWithEmailImplCopyWithImpl<
    _$UserRegisteredWithEmailImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userRegisteredWithEmail(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userRegisteredWithEmail?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userRegisteredWithEmail != null) {
      return userRegisteredWithEmail(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userRegisteredWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userRegisteredWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userRegisteredWithEmail != null) {
      return userRegisteredWithEmail(this);
    }
    return orElse();
  }
}

abstract class UserRegisteredWithEmail implements UserEvent {
  const factory UserRegisteredWithEmail({required final String password}) =
      _$UserRegisteredWithEmailImpl;

  String get password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisteredWithEmailImplCopyWith<_$UserRegisteredWithEmailImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisteredWithPhoneImplCopyWith<$Res> {
  factory _$$UserRegisteredWithPhoneImplCopyWith(
    _$UserRegisteredWithPhoneImpl value,
    $Res Function(_$UserRegisteredWithPhoneImpl) then,
  ) = __$$UserRegisteredWithPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UserRegisteredWithPhoneImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserRegisteredWithPhoneImpl>
    implements _$$UserRegisteredWithPhoneImplCopyWith<$Res> {
  __$$UserRegisteredWithPhoneImplCopyWithImpl(
    _$UserRegisteredWithPhoneImpl _value,
    $Res Function(_$UserRegisteredWithPhoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$UserRegisteredWithPhoneImpl(
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UserRegisteredWithPhoneImpl implements UserRegisteredWithPhone {
  const _$UserRegisteredWithPhoneImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.userRegisteredWithPhone(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisteredWithPhoneImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisteredWithPhoneImplCopyWith<_$UserRegisteredWithPhoneImpl>
  get copyWith => __$$UserRegisteredWithPhoneImplCopyWithImpl<
    _$UserRegisteredWithPhoneImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userRegisteredWithPhone(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userRegisteredWithPhone?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userRegisteredWithPhone != null) {
      return userRegisteredWithPhone(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userRegisteredWithPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userRegisteredWithPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userRegisteredWithPhone != null) {
      return userRegisteredWithPhone(this);
    }
    return orElse();
  }
}

abstract class UserRegisteredWithPhone implements UserEvent {
  const factory UserRegisteredWithPhone({required final String password}) =
      _$UserRegisteredWithPhoneImpl;

  String get password;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisteredWithPhoneImplCopyWith<_$UserRegisteredWithPhoneImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserModifiedImplCopyWith<$Res> {
  factory _$$UserModifiedImplCopyWith(
    _$UserModifiedImpl value,
    $Res Function(_$UserModifiedImpl) then,
  ) = __$$UserModifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserModifiedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserModifiedImpl>
    implements _$$UserModifiedImplCopyWith<$Res> {
  __$$UserModifiedImplCopyWithImpl(
    _$UserModifiedImpl _value,
    $Res Function(_$UserModifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = freezed}) {
    return _then(
      _$UserModifiedImpl(
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
      ),
    );
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserModifiedImpl implements UserModified {
  const _$UserModifiedImpl({required this.user});

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'UserEvent.userModified(user: $user)';
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

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModifiedImplCopyWith<_$UserModifiedImpl> get copyWith =>
      __$$UserModifiedImplCopyWithImpl<_$UserModifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userModified(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userModified?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
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
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(this);
    }
    return orElse();
  }
}

abstract class UserModified implements UserEvent {
  const factory UserModified({required final UserModel? user}) =
      _$UserModifiedImpl;

  UserModel? get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModifiedImplCopyWith<_$UserModifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedOutImplCopyWith<$Res> {
  factory _$$UserLoggedOutImplCopyWith(
    _$UserLoggedOutImpl value,
    $Res Function(_$UserLoggedOutImpl) then,
  ) = __$$UserLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoggedOutImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserLoggedOutImpl>
    implements _$$UserLoggedOutImplCopyWith<$Res> {
  __$$UserLoggedOutImplCopyWithImpl(
    _$UserLoggedOutImpl _value,
    $Res Function(_$UserLoggedOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserLoggedOutImpl implements UserLoggedOut {
  const _$UserLoggedOutImpl();

  @override
  String toString() {
    return 'UserEvent.userLoggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut(this);
    }
    return orElse();
  }
}

abstract class UserLoggedOut implements UserEvent {
  const factory UserLoggedOut() = _$UserLoggedOutImpl;
}

/// @nodoc
abstract class _$$UserCompletedProfileDataImplCopyWith<$Res> {
  factory _$$UserCompletedProfileDataImplCopyWith(
    _$UserCompletedProfileDataImpl value,
    $Res Function(_$UserCompletedProfileDataImpl) then,
  ) = __$$UserCompletedProfileDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserCompletedProfileDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserCompletedProfileDataImpl>
    implements _$$UserCompletedProfileDataImplCopyWith<$Res> {
  __$$UserCompletedProfileDataImplCopyWithImpl(
    _$UserCompletedProfileDataImpl _value,
    $Res Function(_$UserCompletedProfileDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$UserCompletedProfileDataImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel,
      ),
    );
  }

  /// Create a copy of UserEvent
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

class _$UserCompletedProfileDataImpl implements UserCompletedProfileData {
  const _$UserCompletedProfileDataImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserEvent.userCompletedProfileData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCompletedProfileDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCompletedProfileDataImplCopyWith<_$UserCompletedProfileDataImpl>
  get copyWith => __$$UserCompletedProfileDataImplCopyWithImpl<
    _$UserCompletedProfileDataImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userCompletedProfileData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userCompletedProfileData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userCompletedProfileData != null) {
      return userCompletedProfileData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userCompletedProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userCompletedProfileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userCompletedProfileData != null) {
      return userCompletedProfileData(this);
    }
    return orElse();
  }
}

abstract class UserCompletedProfileData implements UserEvent {
  const factory UserCompletedProfileData({required final UserModel user}) =
      _$UserCompletedProfileDataImpl;

  UserModel get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCompletedProfileDataImplCopyWith<_$UserCompletedProfileDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserModifiedProfileDataImplCopyWith<$Res> {
  factory _$$UserModifiedProfileDataImplCopyWith(
    _$UserModifiedProfileDataImpl value,
    $Res Function(_$UserModifiedProfileDataImpl) then,
  ) = __$$UserModifiedProfileDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserModifiedProfileDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserModifiedProfileDataImpl>
    implements _$$UserModifiedProfileDataImplCopyWith<$Res> {
  __$$UserModifiedProfileDataImplCopyWithImpl(
    _$UserModifiedProfileDataImpl _value,
    $Res Function(_$UserModifiedProfileDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$UserModifiedProfileDataImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel,
      ),
    );
  }

  /// Create a copy of UserEvent
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

class _$UserModifiedProfileDataImpl implements UserModifiedProfileData {
  const _$UserModifiedProfileDataImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserEvent.userModifiedProfileData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModifiedProfileDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModifiedProfileDataImplCopyWith<_$UserModifiedProfileDataImpl>
  get copyWith => __$$UserModifiedProfileDataImplCopyWithImpl<
    _$UserModifiedProfileDataImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userModifiedProfileData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userModifiedProfileData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userModifiedProfileData != null) {
      return userModifiedProfileData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userModifiedProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userModifiedProfileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userModifiedProfileData != null) {
      return userModifiedProfileData(this);
    }
    return orElse();
  }
}

abstract class UserModifiedProfileData implements UserEvent {
  const factory UserModifiedProfileData({required final UserModel user}) =
      _$UserModifiedProfileDataImpl;

  UserModel get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModifiedProfileDataImplCopyWith<_$UserModifiedProfileDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserModifiedPasswordImplCopyWith<$Res> {
  factory _$$UserModifiedPasswordImplCopyWith(
    _$UserModifiedPasswordImpl value,
    $Res Function(_$UserModifiedPasswordImpl) then,
  ) = __$$UserModifiedPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPassword, String oldPassword});
}

/// @nodoc
class __$$UserModifiedPasswordImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserModifiedPasswordImpl>
    implements _$$UserModifiedPasswordImplCopyWith<$Res> {
  __$$UserModifiedPasswordImplCopyWithImpl(
    _$UserModifiedPasswordImpl _value,
    $Res Function(_$UserModifiedPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? newPassword = null, Object? oldPassword = null}) {
    return _then(
      _$UserModifiedPasswordImpl(
        newPassword:
            null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                    as String,
        oldPassword:
            null == oldPassword
                ? _value.oldPassword
                : oldPassword // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UserModifiedPasswordImpl implements UserModifiedPassword {
  const _$UserModifiedPasswordImpl({
    required this.newPassword,
    required this.oldPassword,
  });

  @override
  final String newPassword;
  @override
  final String oldPassword;

  @override
  String toString() {
    return 'UserEvent.userModifiedPassword(newPassword: $newPassword, oldPassword: $oldPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModifiedPasswordImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword, oldPassword);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModifiedPasswordImplCopyWith<_$UserModifiedPasswordImpl>
  get copyWith =>
      __$$UserModifiedPasswordImplCopyWithImpl<_$UserModifiedPasswordImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return userModifiedPassword(newPassword, oldPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return userModifiedPassword?.call(newPassword, oldPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userModifiedPassword != null) {
      return userModifiedPassword(newPassword, oldPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return userModifiedPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return userModifiedPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (userModifiedPassword != null) {
      return userModifiedPassword(this);
    }
    return orElse();
  }
}

abstract class UserModifiedPassword implements UserEvent {
  const factory UserModifiedPassword({
    required final String newPassword,
    required final String oldPassword,
  }) = _$UserModifiedPasswordImpl;

  String get newPassword;
  String get oldPassword;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModifiedPasswordImplCopyWith<_$UserModifiedPasswordImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllChildrenFetchedImplCopyWith<$Res> {
  factory _$$AllChildrenFetchedImplCopyWith(
    _$AllChildrenFetchedImpl value,
    $Res Function(_$AllChildrenFetchedImpl) then,
  ) = __$$AllChildrenFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllChildrenFetchedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AllChildrenFetchedImpl>
    implements _$$AllChildrenFetchedImplCopyWith<$Res> {
  __$$AllChildrenFetchedImplCopyWithImpl(
    _$AllChildrenFetchedImpl _value,
    $Res Function(_$AllChildrenFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllChildrenFetchedImpl implements AllChildrenFetched {
  const _$AllChildrenFetchedImpl();

  @override
  String toString() {
    return 'UserEvent.allChildrenFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllChildrenFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return allChildrenFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return allChildrenFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (allChildrenFetched != null) {
      return allChildrenFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return allChildrenFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return allChildrenFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (allChildrenFetched != null) {
      return allChildrenFetched(this);
    }
    return orElse();
  }
}

abstract class AllChildrenFetched implements UserEvent {
  const factory AllChildrenFetched() = _$AllChildrenFetchedImpl;
}

/// @nodoc
abstract class _$$ChildAddedImplCopyWith<$Res> {
  factory _$$ChildAddedImplCopyWith(
    _$ChildAddedImpl value,
    $Res Function(_$ChildAddedImpl) then,
  ) = __$$ChildAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CompleteUserInfoRequest request});

  $CompleteUserInfoRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$ChildAddedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ChildAddedImpl>
    implements _$$ChildAddedImplCopyWith<$Res> {
  __$$ChildAddedImplCopyWithImpl(
    _$ChildAddedImpl _value,
    $Res Function(_$ChildAddedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? request = null}) {
    return _then(
      _$ChildAddedImpl(
        request:
            null == request
                ? _value.request
                : request // ignore: cast_nullable_to_non_nullable
                    as CompleteUserInfoRequest,
      ),
    );
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompleteUserInfoRequestCopyWith<$Res> get request {
    return $CompleteUserInfoRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$ChildAddedImpl implements ChildAdded {
  const _$ChildAddedImpl({required this.request});

  @override
  final CompleteUserInfoRequest request;

  @override
  String toString() {
    return 'UserEvent.childAdded(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildAddedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildAddedImplCopyWith<_$ChildAddedImpl> get copyWith =>
      __$$ChildAddedImplCopyWithImpl<_$ChildAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return childAdded(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return childAdded?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (childAdded != null) {
      return childAdded(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return childAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return childAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (childAdded != null) {
      return childAdded(this);
    }
    return orElse();
  }
}

abstract class ChildAdded implements UserEvent {
  const factory ChildAdded({required final CompleteUserInfoRequest request}) =
      _$ChildAddedImpl;

  CompleteUserInfoRequest get request;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildAddedImplCopyWith<_$ChildAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildRemovedImplCopyWith<$Res> {
  factory _$$ChildRemovedImplCopyWith(
    _$ChildRemovedImpl value,
    $Res Function(_$ChildRemovedImpl) then,
  ) = __$$ChildRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int childId});
}

/// @nodoc
class __$$ChildRemovedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ChildRemovedImpl>
    implements _$$ChildRemovedImplCopyWith<$Res> {
  __$$ChildRemovedImplCopyWithImpl(
    _$ChildRemovedImpl _value,
    $Res Function(_$ChildRemovedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? childId = null}) {
    return _then(
      _$ChildRemovedImpl(
        childId:
            null == childId
                ? _value.childId
                : childId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$ChildRemovedImpl implements ChildRemoved {
  const _$ChildRemovedImpl({required this.childId});

  @override
  final int childId;

  @override
  String toString() {
    return 'UserEvent.childRemoved(childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildRemovedImpl &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childId);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildRemovedImplCopyWith<_$ChildRemovedImpl> get copyWith =>
      __$$ChildRemovedImplCopyWithImpl<_$ChildRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return childRemoved(childId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return childRemoved?.call(childId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (childRemoved != null) {
      return childRemoved(childId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return childRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return childRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (childRemoved != null) {
      return childRemoved(this);
    }
    return orElse();
  }
}

abstract class ChildRemoved implements UserEvent {
  const factory ChildRemoved({required final int childId}) = _$ChildRemovedImpl;

  int get childId;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildRemovedImplCopyWith<_$ChildRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountSwitchedImplCopyWith<$Res> {
  factory _$$AccountSwitchedImplCopyWith(
    _$AccountSwitchedImpl value,
    $Res Function(_$AccountSwitchedImpl) then,
  ) = __$$AccountSwitchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? childId});
}

/// @nodoc
class __$$AccountSwitchedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AccountSwitchedImpl>
    implements _$$AccountSwitchedImplCopyWith<$Res> {
  __$$AccountSwitchedImplCopyWithImpl(
    _$AccountSwitchedImpl _value,
    $Res Function(_$AccountSwitchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? childId = freezed}) {
    return _then(
      _$AccountSwitchedImpl(
        childId:
            freezed == childId
                ? _value.childId
                : childId // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$AccountSwitchedImpl implements AccountSwitched {
  const _$AccountSwitchedImpl({this.childId});

  @override
  final int? childId;

  @override
  String toString() {
    return 'UserEvent.accountSwitched(childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSwitchedImpl &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childId);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSwitchedImplCopyWith<_$AccountSwitchedImpl> get copyWith =>
      __$$AccountSwitchedImplCopyWithImpl<_$AccountSwitchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
    userLoggedInWithEmail,
    required TResult Function(String phone, String password)
    userLoggedInWithPhone,
    required TResult Function() userLoggedInWithGoogle,
    required TResult Function(String password) userRegisteredWithEmail,
    required TResult Function(String password) userRegisteredWithPhone,
    required TResult Function(UserModel? user) userModified,
    required TResult Function() userLoggedOut,
    required TResult Function(UserModel user) userCompletedProfileData,
    required TResult Function(UserModel user) userModifiedProfileData,
    required TResult Function(String newPassword, String oldPassword)
    userModifiedPassword,
    required TResult Function() allChildrenFetched,
    required TResult Function(CompleteUserInfoRequest request) childAdded,
    required TResult Function(int childId) childRemoved,
    required TResult Function(int? childId) accountSwitched,
  }) {
    return accountSwitched(childId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLoggedInWithEmail,
    TResult? Function(String phone, String password)? userLoggedInWithPhone,
    TResult? Function()? userLoggedInWithGoogle,
    TResult? Function(String password)? userRegisteredWithEmail,
    TResult? Function(String password)? userRegisteredWithPhone,
    TResult? Function(UserModel? user)? userModified,
    TResult? Function()? userLoggedOut,
    TResult? Function(UserModel user)? userCompletedProfileData,
    TResult? Function(UserModel user)? userModifiedProfileData,
    TResult? Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult? Function()? allChildrenFetched,
    TResult? Function(CompleteUserInfoRequest request)? childAdded,
    TResult? Function(int childId)? childRemoved,
    TResult? Function(int? childId)? accountSwitched,
  }) {
    return accountSwitched?.call(childId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLoggedInWithEmail,
    TResult Function(String phone, String password)? userLoggedInWithPhone,
    TResult Function()? userLoggedInWithGoogle,
    TResult Function(String password)? userRegisteredWithEmail,
    TResult Function(String password)? userRegisteredWithPhone,
    TResult Function(UserModel? user)? userModified,
    TResult Function()? userLoggedOut,
    TResult Function(UserModel user)? userCompletedProfileData,
    TResult Function(UserModel user)? userModifiedProfileData,
    TResult Function(String newPassword, String oldPassword)?
    userModifiedPassword,
    TResult Function()? allChildrenFetched,
    TResult Function(CompleteUserInfoRequest request)? childAdded,
    TResult Function(int childId)? childRemoved,
    TResult Function(int? childId)? accountSwitched,
    required TResult orElse(),
  }) {
    if (accountSwitched != null) {
      return accountSwitched(childId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedInWithEmail value)
    userLoggedInWithEmail,
    required TResult Function(UserLoggedInWithPhone value)
    userLoggedInWithPhone,
    required TResult Function(UserLoggedInWithGoogle value)
    userLoggedInWithGoogle,
    required TResult Function(UserRegisteredWithEmail value)
    userRegisteredWithEmail,
    required TResult Function(UserRegisteredWithPhone value)
    userRegisteredWithPhone,
    required TResult Function(UserModified value) userModified,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserCompletedProfileData value)
    userCompletedProfileData,
    required TResult Function(UserModifiedProfileData value)
    userModifiedProfileData,
    required TResult Function(UserModifiedPassword value) userModifiedPassword,
    required TResult Function(AllChildrenFetched value) allChildrenFetched,
    required TResult Function(ChildAdded value) childAdded,
    required TResult Function(ChildRemoved value) childRemoved,
    required TResult Function(AccountSwitched value) accountSwitched,
  }) {
    return accountSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult? Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult? Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult? Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult? Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult? Function(UserModified value)? userModified,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult? Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult? Function(UserModifiedPassword value)? userModifiedPassword,
    TResult? Function(AllChildrenFetched value)? allChildrenFetched,
    TResult? Function(ChildAdded value)? childAdded,
    TResult? Function(ChildRemoved value)? childRemoved,
    TResult? Function(AccountSwitched value)? accountSwitched,
  }) {
    return accountSwitched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedInWithEmail value)? userLoggedInWithEmail,
    TResult Function(UserLoggedInWithPhone value)? userLoggedInWithPhone,
    TResult Function(UserLoggedInWithGoogle value)? userLoggedInWithGoogle,
    TResult Function(UserRegisteredWithEmail value)? userRegisteredWithEmail,
    TResult Function(UserRegisteredWithPhone value)? userRegisteredWithPhone,
    TResult Function(UserModified value)? userModified,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserCompletedProfileData value)? userCompletedProfileData,
    TResult Function(UserModifiedProfileData value)? userModifiedProfileData,
    TResult Function(UserModifiedPassword value)? userModifiedPassword,
    TResult Function(AllChildrenFetched value)? allChildrenFetched,
    TResult Function(ChildAdded value)? childAdded,
    TResult Function(ChildRemoved value)? childRemoved,
    TResult Function(AccountSwitched value)? accountSwitched,
    required TResult orElse(),
  }) {
    if (accountSwitched != null) {
      return accountSwitched(this);
    }
    return orElse();
  }
}

abstract class AccountSwitched implements UserEvent {
  const factory AccountSwitched({final int? childId}) = _$AccountSwitchedImpl;

  int? get childId;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSwitchedImplCopyWith<_$AccountSwitchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  UserModel? get user => throw _privateConstructorUsedError;
  UserStatus get status => throw _privateConstructorUsedError;
  List<UserModel> get children => throw _privateConstructorUsedError;
  DataStatus get childrenListStatus => throw _privateConstructorUsedError;
  int? get currentChildId => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({
    UserModel? user,
    UserStatus status,
    List<UserModel> children,
    DataStatus childrenListStatus,
    int? currentChildId,
    String statusMessage,
  });

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? status = null,
    Object? children = null,
    Object? childrenListStatus = null,
    Object? currentChildId = freezed,
    Object? statusMessage = null,
  }) {
    return _then(
      _value.copyWith(
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModel?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as UserStatus,
            children:
                null == children
                    ? _value.children
                    : children // ignore: cast_nullable_to_non_nullable
                        as List<UserModel>,
            childrenListStatus:
                null == childrenListStatus
                    ? _value.childrenListStatus
                    : childrenListStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            currentChildId:
                freezed == currentChildId
                    ? _value.currentChildId
                    : currentChildId // ignore: cast_nullable_to_non_nullable
                        as int?,
            statusMessage:
                null == statusMessage
                    ? _value.statusMessage
                    : statusMessage // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
    _$UserStateImpl value,
    $Res Function(_$UserStateImpl) then,
  ) = __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    UserModel? user,
    UserStatus status,
    List<UserModel> children,
    DataStatus childrenListStatus,
    int? currentChildId,
    String statusMessage,
  });

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
    _$UserStateImpl _value,
    $Res Function(_$UserStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? status = null,
    Object? children = null,
    Object? childrenListStatus = null,
    Object? currentChildId = freezed,
    Object? statusMessage = null,
  }) {
    return _then(
      _$UserStateImpl(
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as UserStatus,
        children:
            null == children
                ? _value._children
                : children // ignore: cast_nullable_to_non_nullable
                    as List<UserModel>,
        childrenListStatus:
            null == childrenListStatus
                ? _value.childrenListStatus
                : childrenListStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        currentChildId:
            freezed == currentChildId
                ? _value.currentChildId
                : currentChildId // ignore: cast_nullable_to_non_nullable
                    as int?,
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

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl({
    required this.user,
    required this.status,
    required final List<UserModel> children,
    required this.childrenListStatus,
    this.currentChildId,
    this.statusMessage = 'Some error occurred',
  }) : _children = children;

  @override
  final UserModel? user;
  @override
  final UserStatus status;
  final List<UserModel> _children;
  @override
  List<UserModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final DataStatus childrenListStatus;
  @override
  final int? currentChildId;
  @override
  @JsonKey()
  final String statusMessage;

  @override
  String toString() {
    return 'UserState(user: $user, status: $status, children: $children, childrenListStatus: $childrenListStatus, currentChildId: $currentChildId, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.childrenListStatus, childrenListStatus) ||
                other.childrenListStatus == childrenListStatus) &&
            (identical(other.currentChildId, currentChildId) ||
                other.currentChildId == currentChildId) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    user,
    status,
    const DeepCollectionEquality().hash(_children),
    childrenListStatus,
    currentChildId,
    statusMessage,
  );

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({
    required final UserModel? user,
    required final UserStatus status,
    required final List<UserModel> children,
    required final DataStatus childrenListStatus,
    final int? currentChildId,
    final String statusMessage,
  }) = _$UserStateImpl;

  @override
  UserModel? get user;
  @override
  UserStatus get status;
  @override
  List<UserModel> get children;
  @override
  DataStatus get childrenListStatus;
  @override
  int? get currentChildId;
  @override
  String get statusMessage;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
