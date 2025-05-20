// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_patient_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterPatientRequest {
  String? get email;
  String? get phone;
  String get password;
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation;

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterPatientRequestCopyWith<RegisterPatientRequest> get copyWith =>
      _$RegisterPatientRequestCopyWithImpl<RegisterPatientRequest>(
          this as RegisterPatientRequest, _$identity);

  /// Serializes this RegisterPatientRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPatientRequest &&
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

  @override
  String toString() {
    return 'RegisterPatientRequest(email: $email, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation)';
  }
}

/// @nodoc
abstract mixin class $RegisterPatientRequestCopyWith<$Res> {
  factory $RegisterPatientRequestCopyWith(RegisterPatientRequest value,
          $Res Function(RegisterPatientRequest) _then) =
      _$RegisterPatientRequestCopyWithImpl;
  @useResult
  $Res call(
      {String? email,
      String? phone,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation});
}

/// @nodoc
class _$RegisterPatientRequestCopyWithImpl<$Res>
    implements $RegisterPatientRequestCopyWith<$Res> {
  _$RegisterPatientRequestCopyWithImpl(this._self, this._then);

  final RegisterPatientRequest _self;
  final $Res Function(RegisterPatientRequest) _then;

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
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RegisterPatientRequest implements RegisterPatientRequest {
  _RegisterPatientRequest(
      {this.email,
      this.phone,
      required this.password,
      @JsonKey(name: 'password_confirmation')
      required this.passwordConfirmation});
  factory _RegisterPatientRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterPatientRequestFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterPatientRequestCopyWith<_RegisterPatientRequest> get copyWith =>
      __$RegisterPatientRequestCopyWithImpl<_RegisterPatientRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterPatientRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterPatientRequest &&
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

  @override
  String toString() {
    return 'RegisterPatientRequest(email: $email, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation)';
  }
}

/// @nodoc
abstract mixin class _$RegisterPatientRequestCopyWith<$Res>
    implements $RegisterPatientRequestCopyWith<$Res> {
  factory _$RegisterPatientRequestCopyWith(_RegisterPatientRequest value,
          $Res Function(_RegisterPatientRequest) _then) =
      __$RegisterPatientRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? email,
      String? phone,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation});
}

/// @nodoc
class __$RegisterPatientRequestCopyWithImpl<$Res>
    implements _$RegisterPatientRequestCopyWith<$Res> {
  __$RegisterPatientRequestCopyWithImpl(this._self, this._then);

  final _RegisterPatientRequest _self;
  final $Res Function(_RegisterPatientRequest) _then;

  /// Create a copy of RegisterPatientRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_RegisterPatientRequest(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
