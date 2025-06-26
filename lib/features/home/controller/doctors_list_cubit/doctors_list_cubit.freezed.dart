// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorsListState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ClinicModel> get clinics => throw _privateConstructorUsedError;
  List<DoctorModel> get doctors => throw _privateConstructorUsedError;
  ClinicModel? get selectedClinic => throw _privateConstructorUsedError;

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorsListStateCopyWith<DoctorsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsListStateCopyWith<$Res> {
  factory $DoctorsListStateCopyWith(
    DoctorsListState value,
    $Res Function(DoctorsListState) then,
  ) = _$DoctorsListStateCopyWithImpl<$Res, DoctorsListState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<ClinicModel> clinics,
    List<DoctorModel> doctors,
    ClinicModel? selectedClinic,
  });

  $ClinicModelCopyWith<$Res>? get selectedClinic;
}

/// @nodoc
class _$DoctorsListStateCopyWithImpl<$Res, $Val extends DoctorsListState>
    implements $DoctorsListStateCopyWith<$Res> {
  _$DoctorsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clinics = null,
    Object? doctors = null,
    Object? selectedClinic = freezed,
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
            clinics:
                null == clinics
                    ? _value.clinics
                    : clinics // ignore: cast_nullable_to_non_nullable
                        as List<ClinicModel>,
            doctors:
                null == doctors
                    ? _value.doctors
                    : doctors // ignore: cast_nullable_to_non_nullable
                        as List<DoctorModel>,
            selectedClinic:
                freezed == selectedClinic
                    ? _value.selectedClinic
                    : selectedClinic // ignore: cast_nullable_to_non_nullable
                        as ClinicModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res>? get selectedClinic {
    if (_value.selectedClinic == null) {
      return null;
    }

    return $ClinicModelCopyWith<$Res>(_value.selectedClinic!, (value) {
      return _then(_value.copyWith(selectedClinic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorsListStateImplCopyWith<$Res>
    implements $DoctorsListStateCopyWith<$Res> {
  factory _$$DoctorsListStateImplCopyWith(
    _$DoctorsListStateImpl value,
    $Res Function(_$DoctorsListStateImpl) then,
  ) = __$$DoctorsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<ClinicModel> clinics,
    List<DoctorModel> doctors,
    ClinicModel? selectedClinic,
  });

  @override
  $ClinicModelCopyWith<$Res>? get selectedClinic;
}

/// @nodoc
class __$$DoctorsListStateImplCopyWithImpl<$Res>
    extends _$DoctorsListStateCopyWithImpl<$Res, _$DoctorsListStateImpl>
    implements _$$DoctorsListStateImplCopyWith<$Res> {
  __$$DoctorsListStateImplCopyWithImpl(
    _$DoctorsListStateImpl _value,
    $Res Function(_$DoctorsListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clinics = null,
    Object? doctors = null,
    Object? selectedClinic = freezed,
  }) {
    return _then(
      _$DoctorsListStateImpl(
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
        clinics:
            null == clinics
                ? _value._clinics
                : clinics // ignore: cast_nullable_to_non_nullable
                    as List<ClinicModel>,
        doctors:
            null == doctors
                ? _value._doctors
                : doctors // ignore: cast_nullable_to_non_nullable
                    as List<DoctorModel>,
        selectedClinic:
            freezed == selectedClinic
                ? _value.selectedClinic
                : selectedClinic // ignore: cast_nullable_to_non_nullable
                    as ClinicModel?,
      ),
    );
  }
}

/// @nodoc

class _$DoctorsListStateImpl implements _DoctorsListState {
  const _$DoctorsListStateImpl({
    required this.status,
    required this.message,
    required final List<ClinicModel> clinics,
    required final List<DoctorModel> doctors,
    this.selectedClinic,
  }) : _clinics = clinics,
       _doctors = doctors;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<ClinicModel> _clinics;
  @override
  List<ClinicModel> get clinics {
    if (_clinics is EqualUnmodifiableListView) return _clinics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clinics);
  }

  final List<DoctorModel> _doctors;
  @override
  List<DoctorModel> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  final ClinicModel? selectedClinic;

  @override
  String toString() {
    return 'DoctorsListState(status: $status, message: $message, clinics: $clinics, doctors: $doctors, selectedClinic: $selectedClinic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._clinics, _clinics) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            (identical(other.selectedClinic, selectedClinic) ||
                other.selectedClinic == selectedClinic));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_clinics),
    const DeepCollectionEquality().hash(_doctors),
    selectedClinic,
  );

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsListStateImplCopyWith<_$DoctorsListStateImpl> get copyWith =>
      __$$DoctorsListStateImplCopyWithImpl<_$DoctorsListStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorsListState implements DoctorsListState {
  const factory _DoctorsListState({
    required final DataStatus status,
    required final String message,
    required final List<ClinicModel> clinics,
    required final List<DoctorModel> doctors,
    final ClinicModel? selectedClinic,
  }) = _$DoctorsListStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<ClinicModel> get clinics;
  @override
  List<DoctorModel> get doctors;
  @override
  ClinicModel? get selectedClinic;

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsListStateImplCopyWith<_$DoctorsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
