// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  //? User
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError; //? Patient
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'blood_type')
  String? get bloodType => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete_profile')
  bool get isCompleteProfile => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError; //? Doctor
  String? get photo => throw _privateConstructorUsedError;
  String? get clinic => throw _privateConstructorUsedError;
  String? get speciality => throw _privateConstructorUsedError;
  @JsonKey(name: 'professional_title')
  String? get professionalTitle => throw _privateConstructorUsedError;
  double? get finalRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_visit_duration')
  String? get averageVisitDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_fee')
  double? get visitFee => throw _privateConstructorUsedError;
  int? get experience => throw _privateConstructorUsedError;
  int? get treated => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_type')
  String? get bookingType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get sign => throw _privateConstructorUsedError;
  List<Schedule>? get schedule => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    String? phone,
    Role? role,
    String? token,
    String? password,
    int? age,
    String? gender,
    @JsonKey(name: 'blood_type') String? bloodType,
    @JsonKey(name: 'complete_profile') bool isCompleteProfile,
    String? address,
    String? photo,
    String? clinic,
    String? speciality,
    @JsonKey(name: 'professional_title') String? professionalTitle,
    double? finalRate,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    @JsonKey(name: 'visit_fee') double? visitFee,
    int? experience,
    int? treated,
    @JsonKey(name: 'booking_type') String? bookingType,
    String? status,
    String? sign,
    List<Schedule>? schedule,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? token = freezed,
    Object? password = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? bloodType = freezed,
    Object? isCompleteProfile = null,
    Object? address = freezed,
    Object? photo = freezed,
    Object? clinic = freezed,
    Object? speciality = freezed,
    Object? professionalTitle = freezed,
    Object? finalRate = freezed,
    Object? averageVisitDuration = freezed,
    Object? visitFee = freezed,
    Object? experience = freezed,
    Object? treated = freezed,
    Object? bookingType = freezed,
    Object? status = freezed,
    Object? sign = freezed,
    Object? schedule = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            firstName:
                freezed == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastName:
                freezed == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String?,
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
            role:
                freezed == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as Role?,
            token:
                freezed == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String?,
            password:
                freezed == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String?,
            age:
                freezed == age
                    ? _value.age
                    : age // ignore: cast_nullable_to_non_nullable
                        as int?,
            gender:
                freezed == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String?,
            bloodType:
                freezed == bloodType
                    ? _value.bloodType
                    : bloodType // ignore: cast_nullable_to_non_nullable
                        as String?,
            isCompleteProfile:
                null == isCompleteProfile
                    ? _value.isCompleteProfile
                    : isCompleteProfile // ignore: cast_nullable_to_non_nullable
                        as bool,
            address:
                freezed == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String?,
            photo:
                freezed == photo
                    ? _value.photo
                    : photo // ignore: cast_nullable_to_non_nullable
                        as String?,
            clinic:
                freezed == clinic
                    ? _value.clinic
                    : clinic // ignore: cast_nullable_to_non_nullable
                        as String?,
            speciality:
                freezed == speciality
                    ? _value.speciality
                    : speciality // ignore: cast_nullable_to_non_nullable
                        as String?,
            professionalTitle:
                freezed == professionalTitle
                    ? _value.professionalTitle
                    : professionalTitle // ignore: cast_nullable_to_non_nullable
                        as String?,
            finalRate:
                freezed == finalRate
                    ? _value.finalRate
                    : finalRate // ignore: cast_nullable_to_non_nullable
                        as double?,
            averageVisitDuration:
                freezed == averageVisitDuration
                    ? _value.averageVisitDuration
                    : averageVisitDuration // ignore: cast_nullable_to_non_nullable
                        as String?,
            visitFee:
                freezed == visitFee
                    ? _value.visitFee
                    : visitFee // ignore: cast_nullable_to_non_nullable
                        as double?,
            experience:
                freezed == experience
                    ? _value.experience
                    : experience // ignore: cast_nullable_to_non_nullable
                        as int?,
            treated:
                freezed == treated
                    ? _value.treated
                    : treated // ignore: cast_nullable_to_non_nullable
                        as int?,
            bookingType:
                freezed == bookingType
                    ? _value.bookingType
                    : bookingType // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
            sign:
                freezed == sign
                    ? _value.sign
                    : sign // ignore: cast_nullable_to_non_nullable
                        as String?,
            schedule:
                freezed == schedule
                    ? _value.schedule
                    : schedule // ignore: cast_nullable_to_non_nullable
                        as List<Schedule>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    String? phone,
    Role? role,
    String? token,
    String? password,
    int? age,
    String? gender,
    @JsonKey(name: 'blood_type') String? bloodType,
    @JsonKey(name: 'complete_profile') bool isCompleteProfile,
    String? address,
    String? photo,
    String? clinic,
    String? speciality,
    @JsonKey(name: 'professional_title') String? professionalTitle,
    double? finalRate,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    @JsonKey(name: 'visit_fee') double? visitFee,
    int? experience,
    int? treated,
    @JsonKey(name: 'booking_type') String? bookingType,
    String? status,
    String? sign,
    List<Schedule>? schedule,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? token = freezed,
    Object? password = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? bloodType = freezed,
    Object? isCompleteProfile = null,
    Object? address = freezed,
    Object? photo = freezed,
    Object? clinic = freezed,
    Object? speciality = freezed,
    Object? professionalTitle = freezed,
    Object? finalRate = freezed,
    Object? averageVisitDuration = freezed,
    Object? visitFee = freezed,
    Object? experience = freezed,
    Object? treated = freezed,
    Object? bookingType = freezed,
    Object? status = freezed,
    Object? sign = freezed,
    Object? schedule = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        firstName:
            freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastName:
            freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String?,
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
        role:
            freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as Role?,
        token:
            freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String?,
        age:
            freezed == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                    as int?,
        gender:
            freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String?,
        bloodType:
            freezed == bloodType
                ? _value.bloodType
                : bloodType // ignore: cast_nullable_to_non_nullable
                    as String?,
        isCompleteProfile:
            null == isCompleteProfile
                ? _value.isCompleteProfile
                : isCompleteProfile // ignore: cast_nullable_to_non_nullable
                    as bool,
        address:
            freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String?,
        photo:
            freezed == photo
                ? _value.photo
                : photo // ignore: cast_nullable_to_non_nullable
                    as String?,
        clinic:
            freezed == clinic
                ? _value.clinic
                : clinic // ignore: cast_nullable_to_non_nullable
                    as String?,
        speciality:
            freezed == speciality
                ? _value.speciality
                : speciality // ignore: cast_nullable_to_non_nullable
                    as String?,
        professionalTitle:
            freezed == professionalTitle
                ? _value.professionalTitle
                : professionalTitle // ignore: cast_nullable_to_non_nullable
                    as String?,
        finalRate:
            freezed == finalRate
                ? _value.finalRate
                : finalRate // ignore: cast_nullable_to_non_nullable
                    as double?,
        averageVisitDuration:
            freezed == averageVisitDuration
                ? _value.averageVisitDuration
                : averageVisitDuration // ignore: cast_nullable_to_non_nullable
                    as String?,
        visitFee:
            freezed == visitFee
                ? _value.visitFee
                : visitFee // ignore: cast_nullable_to_non_nullable
                    as double?,
        experience:
            freezed == experience
                ? _value.experience
                : experience // ignore: cast_nullable_to_non_nullable
                    as int?,
        treated:
            freezed == treated
                ? _value.treated
                : treated // ignore: cast_nullable_to_non_nullable
                    as int?,
        bookingType:
            freezed == bookingType
                ? _value.bookingType
                : bookingType // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
        sign:
            freezed == sign
                ? _value.sign
                : sign // ignore: cast_nullable_to_non_nullable
                    as String?,
        schedule:
            freezed == schedule
                ? _value._schedule
                : schedule // ignore: cast_nullable_to_non_nullable
                    as List<Schedule>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl({
    this.id,
    @JsonKey(name: 'first_name') this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    this.email,
    this.phone,
    this.role = Role.patient,
    this.token,
    this.password,
    this.age,
    this.gender,
    @JsonKey(name: 'blood_type') this.bloodType,
    @JsonKey(name: 'complete_profile') this.isCompleteProfile = false,
    this.address,
    this.photo,
    this.clinic,
    this.speciality,
    @JsonKey(name: 'professional_title') this.professionalTitle,
    this.finalRate,
    @JsonKey(name: 'average_visit_duration') this.averageVisitDuration,
    @JsonKey(name: 'visit_fee') this.visitFee,
    this.experience,
    this.treated,
    @JsonKey(name: 'booking_type') this.bookingType,
    this.status,
    this.sign,
    final List<Schedule>? schedule,
  }) : _schedule = schedule;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  //? User
  @override
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey()
  final Role? role;
  @override
  final String? token;
  @override
  final String? password;
  //? Patient
  @override
  final int? age;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'blood_type')
  final String? bloodType;
  @override
  @JsonKey(name: 'complete_profile')
  final bool isCompleteProfile;
  @override
  final String? address;
  //? Doctor
  @override
  final String? photo;
  @override
  final String? clinic;
  @override
  final String? speciality;
  @override
  @JsonKey(name: 'professional_title')
  final String? professionalTitle;
  @override
  final double? finalRate;
  @override
  @JsonKey(name: 'average_visit_duration')
  final String? averageVisitDuration;
  @override
  @JsonKey(name: 'visit_fee')
  final double? visitFee;
  @override
  final int? experience;
  @override
  final int? treated;
  @override
  @JsonKey(name: 'booking_type')
  final String? bookingType;
  @override
  final String? status;
  @override
  final String? sign;
  final List<Schedule>? _schedule;
  @override
  List<Schedule>? get schedule {
    final value = _schedule;
    if (value == null) return null;
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, role: $role, token: $token, password: $password, age: $age, gender: $gender, bloodType: $bloodType, isCompleteProfile: $isCompleteProfile, address: $address, photo: $photo, clinic: $clinic, speciality: $speciality, professionalTitle: $professionalTitle, finalRate: $finalRate, averageVisitDuration: $averageVisitDuration, visitFee: $visitFee, experience: $experience, treated: $treated, bookingType: $bookingType, status: $status, sign: $sign, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.isCompleteProfile, isCompleteProfile) ||
                other.isCompleteProfile == isCompleteProfile) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.clinic, clinic) || other.clinic == clinic) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            (identical(other.professionalTitle, professionalTitle) ||
                other.professionalTitle == professionalTitle) &&
            (identical(other.finalRate, finalRate) ||
                other.finalRate == finalRate) &&
            (identical(other.averageVisitDuration, averageVisitDuration) ||
                other.averageVisitDuration == averageVisitDuration) &&
            (identical(other.visitFee, visitFee) ||
                other.visitFee == visitFee) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.treated, treated) || other.treated == treated) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    firstName,
    lastName,
    email,
    phone,
    role,
    token,
    password,
    age,
    gender,
    bloodType,
    isCompleteProfile,
    address,
    photo,
    clinic,
    speciality,
    professionalTitle,
    finalRate,
    averageVisitDuration,
    visitFee,
    experience,
    treated,
    bookingType,
    status,
    sign,
    const DeepCollectionEquality().hash(_schedule),
  ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel({
    final int? id,
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    final String? email,
    final String? phone,
    final Role? role,
    final String? token,
    final String? password,
    final int? age,
    final String? gender,
    @JsonKey(name: 'blood_type') final String? bloodType,
    @JsonKey(name: 'complete_profile') final bool isCompleteProfile,
    final String? address,
    final String? photo,
    final String? clinic,
    final String? speciality,
    @JsonKey(name: 'professional_title') final String? professionalTitle,
    final double? finalRate,
    @JsonKey(name: 'average_visit_duration') final String? averageVisitDuration,
    @JsonKey(name: 'visit_fee') final double? visitFee,
    final int? experience,
    final int? treated,
    @JsonKey(name: 'booking_type') final String? bookingType,
    final String? status,
    final String? sign,
    final List<Schedule>? schedule,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  //? User
  @override
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  Role? get role;
  @override
  String? get token;
  @override
  String? get password; //? Patient
  @override
  int? get age;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'blood_type')
  String? get bloodType;
  @override
  @JsonKey(name: 'complete_profile')
  bool get isCompleteProfile;
  @override
  String? get address; //? Doctor
  @override
  String? get photo;
  @override
  String? get clinic;
  @override
  String? get speciality;
  @override
  @JsonKey(name: 'professional_title')
  String? get professionalTitle;
  @override
  double? get finalRate;
  @override
  @JsonKey(name: 'average_visit_duration')
  String? get averageVisitDuration;
  @override
  @JsonKey(name: 'visit_fee')
  double? get visitFee;
  @override
  int? get experience;
  @override
  int? get treated;
  @override
  @JsonKey(name: 'booking_type')
  String? get bookingType;
  @override
  String? get status;
  @override
  String? get sign;
  @override
  List<Schedule>? get schedule;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
