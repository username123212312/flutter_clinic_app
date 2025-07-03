// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_doctors_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClinicDoctorsState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ClinicModel get clinic => throw _privateConstructorUsedError;
  List<DoctorModel> get doctorsList => throw _privateConstructorUsedError;
  List<DoctorModel> get doctorsSearchList => throw _privateConstructorUsedError;

  /// Create a copy of ClinicDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClinicDoctorsStateCopyWith<ClinicDoctorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicDoctorsStateCopyWith<$Res> {
  factory $ClinicDoctorsStateCopyWith(
    ClinicDoctorsState value,
    $Res Function(ClinicDoctorsState) then,
  ) = _$ClinicDoctorsStateCopyWithImpl<$Res, ClinicDoctorsState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    ClinicModel clinic,
    List<DoctorModel> doctorsList,
    List<DoctorModel> doctorsSearchList,
  });

  $ClinicModelCopyWith<$Res> get clinic;
}

/// @nodoc
class _$ClinicDoctorsStateCopyWithImpl<$Res, $Val extends ClinicDoctorsState>
    implements $ClinicDoctorsStateCopyWith<$Res> {
  _$ClinicDoctorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClinicDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clinic = null,
    Object? doctorsList = null,
    Object? doctorsSearchList = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            clinic:
                null == clinic
                    ? _value.clinic
                    : clinic // ignore: cast_nullable_to_non_nullable
                        as ClinicModel,
            doctorsList:
                null == doctorsList
                    ? _value.doctorsList
                    : doctorsList // ignore: cast_nullable_to_non_nullable
                        as List<DoctorModel>,
            doctorsSearchList:
                null == doctorsSearchList
                    ? _value.doctorsSearchList
                    : doctorsSearchList // ignore: cast_nullable_to_non_nullable
                        as List<DoctorModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of ClinicDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res> get clinic {
    return $ClinicModelCopyWith<$Res>(_value.clinic, (value) {
      return _then(_value.copyWith(clinic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicDoctorsStateImplCopyWith<$Res>
    implements $ClinicDoctorsStateCopyWith<$Res> {
  factory _$$ClinicDoctorsStateImplCopyWith(
    _$ClinicDoctorsStateImpl value,
    $Res Function(_$ClinicDoctorsStateImpl) then,
  ) = __$$ClinicDoctorsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    ClinicModel clinic,
    List<DoctorModel> doctorsList,
    List<DoctorModel> doctorsSearchList,
  });

  @override
  $ClinicModelCopyWith<$Res> get clinic;
}

/// @nodoc
class __$$ClinicDoctorsStateImplCopyWithImpl<$Res>
    extends _$ClinicDoctorsStateCopyWithImpl<$Res, _$ClinicDoctorsStateImpl>
    implements _$$ClinicDoctorsStateImplCopyWith<$Res> {
  __$$ClinicDoctorsStateImplCopyWithImpl(
    _$ClinicDoctorsStateImpl _value,
    $Res Function(_$ClinicDoctorsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClinicDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clinic = null,
    Object? doctorsList = null,
    Object? doctorsSearchList = null,
  }) {
    return _then(
      _$ClinicDoctorsStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        clinic:
            null == clinic
                ? _value.clinic
                : clinic // ignore: cast_nullable_to_non_nullable
                    as ClinicModel,
        doctorsList:
            null == doctorsList
                ? _value._doctorsList
                : doctorsList // ignore: cast_nullable_to_non_nullable
                    as List<DoctorModel>,
        doctorsSearchList:
            null == doctorsSearchList
                ? _value._doctorsSearchList
                : doctorsSearchList // ignore: cast_nullable_to_non_nullable
                    as List<DoctorModel>,
      ),
    );
  }
}

/// @nodoc

class _$ClinicDoctorsStateImpl implements _ClinicDoctorsState {
  const _$ClinicDoctorsStateImpl({
    required this.status,
    required this.message,
    required this.clinic,
    required final List<DoctorModel> doctorsList,
    required final List<DoctorModel> doctorsSearchList,
  }) : _doctorsList = doctorsList,
       _doctorsSearchList = doctorsSearchList;

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final ClinicModel clinic;
  final List<DoctorModel> _doctorsList;
  @override
  List<DoctorModel> get doctorsList {
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorsList);
  }

  final List<DoctorModel> _doctorsSearchList;
  @override
  List<DoctorModel> get doctorsSearchList {
    if (_doctorsSearchList is EqualUnmodifiableListView)
      return _doctorsSearchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorsSearchList);
  }

  @override
  String toString() {
    return 'ClinicDoctorsState(status: $status, message: $message, clinic: $clinic, doctorsList: $doctorsList, doctorsSearchList: $doctorsSearchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicDoctorsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.clinic, clinic) || other.clinic == clinic) &&
            const DeepCollectionEquality().equals(
              other._doctorsList,
              _doctorsList,
            ) &&
            const DeepCollectionEquality().equals(
              other._doctorsSearchList,
              _doctorsSearchList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    clinic,
    const DeepCollectionEquality().hash(_doctorsList),
    const DeepCollectionEquality().hash(_doctorsSearchList),
  );

  /// Create a copy of ClinicDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicDoctorsStateImplCopyWith<_$ClinicDoctorsStateImpl> get copyWith =>
      __$$ClinicDoctorsStateImplCopyWithImpl<_$ClinicDoctorsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ClinicDoctorsState implements ClinicDoctorsState {
  const factory _ClinicDoctorsState({
    required final DataStatus status,
    required final String message,
    required final ClinicModel clinic,
    required final List<DoctorModel> doctorsList,
    required final List<DoctorModel> doctorsSearchList,
  }) = _$ClinicDoctorsStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  ClinicModel get clinic;
  @override
  List<DoctorModel> get doctorsList;
  @override
  List<DoctorModel> get doctorsSearchList;

  /// Create a copy of ClinicDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClinicDoctorsStateImplCopyWith<_$ClinicDoctorsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
