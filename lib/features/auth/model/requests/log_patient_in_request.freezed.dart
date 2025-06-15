// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_patient_in_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LogPatientInRequest _$LogPatientInRequestFromJson(Map<String, dynamic> json) {
  return _LogPatientInRequest.fromJson(json);
}

/// @nodoc
mixin _$LogPatientInRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LogPatientInRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogPatientInRequestCopyWith<LogPatientInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogPatientInRequestCopyWith<$Res> {
  factory $LogPatientInRequestCopyWith(
    LogPatientInRequest value,
    $Res Function(LogPatientInRequest) then,
  ) = _$LogPatientInRequestCopyWithImpl<$Res, LogPatientInRequest>;
  @useResult
  $Res call({String? email, String? phone, String password});
}

/// @nodoc
class _$LogPatientInRequestCopyWithImpl<$Res, $Val extends LogPatientInRequest>
    implements $LogPatientInRequestCopyWith<$Res> {
  _$LogPatientInRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LogPatientInRequestImplCopyWith<$Res>
    implements $LogPatientInRequestCopyWith<$Res> {
  factory _$$LogPatientInRequestImplCopyWith(
    _$LogPatientInRequestImpl value,
    $Res Function(_$LogPatientInRequestImpl) then,
  ) = __$$LogPatientInRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? phone, String password});
}

/// @nodoc
class __$$LogPatientInRequestImplCopyWithImpl<$Res>
    extends _$LogPatientInRequestCopyWithImpl<$Res, _$LogPatientInRequestImpl>
    implements _$$LogPatientInRequestImplCopyWith<$Res> {
  __$$LogPatientInRequestImplCopyWithImpl(
    _$LogPatientInRequestImpl _value,
    $Res Function(_$LogPatientInRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
  }) {
    return _then(
      _$LogPatientInRequestImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LogPatientInRequestImpl implements _LogPatientInRequest {
  _$LogPatientInRequestImpl({
    required this.email,
    required this.phone,
    required this.password,
  });

  factory _$LogPatientInRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogPatientInRequestImplFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String password;

  @override
  String toString() {
    return 'LogPatientInRequest(email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogPatientInRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, phone, password);

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogPatientInRequestImplCopyWith<_$LogPatientInRequestImpl> get copyWith =>
      __$$LogPatientInRequestImplCopyWithImpl<_$LogPatientInRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LogPatientInRequestImplToJson(this);
  }
}

abstract class _LogPatientInRequest implements LogPatientInRequest {
  factory _LogPatientInRequest({
    required final String? email,
    required final String? phone,
    required final String password,
  }) = _$LogPatientInRequestImpl;

  factory _LogPatientInRequest.fromJson(Map<String, dynamic> json) =
      _$LogPatientInRequestImpl.fromJson;

  @override
  String? get email;
  @override
  String? get phone;
  @override
  String get password;

  /// Create a copy of LogPatientInRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogPatientInRequestImplCopyWith<_$LogPatientInRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
