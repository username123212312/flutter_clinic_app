// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_user_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteUserInfoRequest {
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;
  int? get age;
  @JsonKey(name: 'blood_type')
  String? get bloodType;
  String? get gender;
  String? get address;

  /// Create a copy of CompleteUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompleteUserInfoRequestCopyWith<CompleteUserInfoRequest> get copyWith =>
      _$CompleteUserInfoRequestCopyWithImpl<CompleteUserInfoRequest>(
          this as CompleteUserInfoRequest, _$identity);

  /// Serializes this CompleteUserInfoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompleteUserInfoRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, age, bloodType, gender, address);

  @override
  String toString() {
    return 'CompleteUserInfoRequest(firstName: $firstName, lastName: $lastName, age: $age, bloodType: $bloodType, gender: $gender, address: $address)';
  }
}

/// @nodoc
abstract mixin class $CompleteUserInfoRequestCopyWith<$Res> {
  factory $CompleteUserInfoRequestCopyWith(CompleteUserInfoRequest value,
          $Res Function(CompleteUserInfoRequest) _then) =
      _$CompleteUserInfoRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      int? age,
      @JsonKey(name: 'blood_type') String? bloodType,
      String? gender,
      String? address});
}

/// @nodoc
class _$CompleteUserInfoRequestCopyWithImpl<$Res>
    implements $CompleteUserInfoRequestCopyWith<$Res> {
  _$CompleteUserInfoRequestCopyWithImpl(this._self, this._then);

  final CompleteUserInfoRequest _self;
  final $Res Function(CompleteUserInfoRequest) _then;

  /// Create a copy of CompleteUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? age = freezed,
    Object? bloodType = freezed,
    Object? gender = freezed,
    Object? address = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodType: freezed == bloodType
          ? _self.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CompleteUserInfoRequest implements CompleteUserInfoRequest {
  _CompleteUserInfoRequest(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.age,
      @JsonKey(name: 'blood_type') this.bloodType,
      this.gender,
      this.address});
  factory _CompleteUserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$CompleteUserInfoRequestFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final int? age;
  @override
  @JsonKey(name: 'blood_type')
  final String? bloodType;
  @override
  final String? gender;
  @override
  final String? address;

  /// Create a copy of CompleteUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompleteUserInfoRequestCopyWith<_CompleteUserInfoRequest> get copyWith =>
      __$CompleteUserInfoRequestCopyWithImpl<_CompleteUserInfoRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompleteUserInfoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteUserInfoRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, age, bloodType, gender, address);

  @override
  String toString() {
    return 'CompleteUserInfoRequest(firstName: $firstName, lastName: $lastName, age: $age, bloodType: $bloodType, gender: $gender, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$CompleteUserInfoRequestCopyWith<$Res>
    implements $CompleteUserInfoRequestCopyWith<$Res> {
  factory _$CompleteUserInfoRequestCopyWith(_CompleteUserInfoRequest value,
          $Res Function(_CompleteUserInfoRequest) _then) =
      __$CompleteUserInfoRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      int? age,
      @JsonKey(name: 'blood_type') String? bloodType,
      String? gender,
      String? address});
}

/// @nodoc
class __$CompleteUserInfoRequestCopyWithImpl<$Res>
    implements _$CompleteUserInfoRequestCopyWith<$Res> {
  __$CompleteUserInfoRequestCopyWithImpl(this._self, this._then);

  final _CompleteUserInfoRequest _self;
  final $Res Function(_CompleteUserInfoRequest) _then;

  /// Create a copy of CompleteUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? age = freezed,
    Object? bloodType = freezed,
    Object? gender = freezed,
    Object? address = freezed,
  }) {
    return _then(_CompleteUserInfoRequest(
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodType: freezed == bloodType
          ? _self.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
