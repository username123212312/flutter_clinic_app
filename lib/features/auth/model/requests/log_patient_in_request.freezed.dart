// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_patient_in_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogPatientInRequest {
  String? get email;
  String? get phone;
  String get password;

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogPatientInRequestCopyWith<LogPatientInRequest> get copyWith =>
      _$LogPatientInRequestCopyWithImpl<LogPatientInRequest>(
          this as LogPatientInRequest, _$identity);

  /// Serializes this LogPatientInRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogPatientInRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, phone, password);

  @override
  String toString() {
    return 'LogPatientInRequest(email: $email, phone: $phone, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LogPatientInRequestCopyWith<$Res> {
  factory $LogPatientInRequestCopyWith(
          LogPatientInRequest value, $Res Function(LogPatientInRequest) _then) =
      _$LogPatientInRequestCopyWithImpl;
  @useResult
  $Res call({String? email, String? phone, String password});
}

/// @nodoc
class _$LogPatientInRequestCopyWithImpl<$Res>
    implements $LogPatientInRequestCopyWith<$Res> {
  _$LogPatientInRequestCopyWithImpl(this._self, this._then);

  final LogPatientInRequest _self;
  final $Res Function(LogPatientInRequest) _then;

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LogPatientInRequest implements LogPatientInRequest {
  _LogPatientInRequest(
      {required this.email, required this.phone, required this.password});
  factory _LogPatientInRequest.fromJson(Map<String, dynamic> json) =>
      _$LogPatientInRequestFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String password;

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LogPatientInRequestCopyWith<_LogPatientInRequest> get copyWith =>
      __$LogPatientInRequestCopyWithImpl<_LogPatientInRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LogPatientInRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogPatientInRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, phone, password);

  @override
  String toString() {
    return 'LogPatientInRequest(email: $email, phone: $phone, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LogPatientInRequestCopyWith<$Res>
    implements $LogPatientInRequestCopyWith<$Res> {
  factory _$LogPatientInRequestCopyWith(_LogPatientInRequest value,
          $Res Function(_LogPatientInRequest) _then) =
      __$LogPatientInRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? email, String? phone, String password});
}

/// @nodoc
class __$LogPatientInRequestCopyWithImpl<$Res>
    implements _$LogPatientInRequestCopyWith<$Res> {
  __$LogPatientInRequestCopyWithImpl(this._self, this._then);

  final _LogPatientInRequest _self;
  final $Res Function(_LogPatientInRequest) _then;

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
  }) {
    return _then(_LogPatientInRequest(
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
    ));
  }
}

// dart format on
