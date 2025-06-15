// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_patient_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RegisterPatientRequest _$RegisterPatientRequestFromJson(
  Map<String, dynamic> json,
) {
  return _RegisterPatientRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterPatientRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation => throw _privateConstructorUsedError;

  /// Serializes this RegisterPatientRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterPatientRequestCopyWith<RegisterPatientRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPatientRequestCopyWith<$Res> {
  factory $RegisterPatientRequestCopyWith(
    RegisterPatientRequest value,
    $Res Function(RegisterPatientRequest) then,
  ) = _$RegisterPatientRequestCopyWithImpl<$Res, RegisterPatientRequest>;
  @useResult
  $Res call({
    String? email,
    String? phone,
    String password,
    @JsonKey(name: 'password_confirmation') String passwordConfirmation,
  });
}

/// @nodoc
class _$RegisterPatientRequestCopyWithImpl<
  $Res,
  $Val extends RegisterPatientRequest
>
    implements $RegisterPatientRequestCopyWith<$Res> {
  _$RegisterPatientRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _value.copyWith(
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            password:
                null == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String,
            passwordConfirmation:
                null == passwordConfirmation
                    ? _value.passwordConfirmation
                    : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterPatientRequestImplCopyWith<$Res>
    implements $RegisterPatientRequestCopyWith<$Res> {
  factory _$$RegisterPatientRequestImplCopyWith(
    _$RegisterPatientRequestImpl value,
    $Res Function(_$RegisterPatientRequestImpl) then,
  ) = __$$RegisterPatientRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? email,
    String? phone,
    String password,
    @JsonKey(name: 'password_confirmation') String passwordConfirmation,
  });
}

/// @nodoc
class __$$RegisterPatientRequestImplCopyWithImpl<$Res>
    extends
        _$RegisterPatientRequestCopyWithImpl<$Res, _$RegisterPatientRequestImpl>
    implements _$$RegisterPatientRequestImplCopyWith<$Res> {
  __$$RegisterPatientRequestImplCopyWithImpl(
    _$RegisterPatientRequestImpl _value,
    $Res Function(_$RegisterPatientRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _$RegisterPatientRequestImpl(
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
        passwordConfirmation:
            null == passwordConfirmation
                ? _value.passwordConfirmation
                : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterPatientRequestImpl implements _RegisterPatientRequest {
  _$RegisterPatientRequestImpl({
    this.email,
    this.phone,
    required this.password,
    @JsonKey(name: 'password_confirmation') required this.passwordConfirmation,
  });

  factory _$RegisterPatientRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterPatientRequestImplFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  @override
  String toString() {
    return 'RegisterPatientRequest(email: $email, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPatientRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phone, password, passwordConfirmation);

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPatientRequestImplCopyWith<_$RegisterPatientRequestImpl>
  get copyWith =>
      __$$RegisterPatientRequestImplCopyWithImpl<_$RegisterPatientRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterPatientRequestImplToJson(this);
  }
}

abstract class _RegisterPatientRequest implements RegisterPatientRequest {
  factory _RegisterPatientRequest({
    final String? email,
    final String? phone,
    required final String password,
    @JsonKey(name: 'password_confirmation')
    required final String passwordConfirmation,
  }) = _$RegisterPatientRequestImpl;

  factory _RegisterPatientRequest.fromJson(Map<String, dynamic> json) =
      _$RegisterPatientRequestImpl.fromJson;

  @override
  String? get email;
  @override
  String? get phone;
  @override
  String get password;
  @override
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation;

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterPatientRequestImplCopyWith<_$RegisterPatientRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
