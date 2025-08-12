// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_all_vaccines_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorAllVaccinesState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<VaccinationRecord> get vaccines => throw _privateConstructorUsedError;

  /// Create a copy of DoctorAllVaccinesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorAllVaccinesStateCopyWith<DoctorAllVaccinesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAllVaccinesStateCopyWith<$Res> {
  factory $DoctorAllVaccinesStateCopyWith(
    DoctorAllVaccinesState value,
    $Res Function(DoctorAllVaccinesState) then,
  ) = _$DoctorAllVaccinesStateCopyWithImpl<$Res, DoctorAllVaccinesState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<VaccinationRecord> vaccines,
  });
}

/// @nodoc
class _$DoctorAllVaccinesStateCopyWithImpl<
  $Res,
  $Val extends DoctorAllVaccinesState
>
    implements $DoctorAllVaccinesStateCopyWith<$Res> {
  _$DoctorAllVaccinesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorAllVaccinesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? vaccines = null,
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
            vaccines:
                null == vaccines
                    ? _value.vaccines
                    : vaccines // ignore: cast_nullable_to_non_nullable
                        as List<VaccinationRecord>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorAllVaccinesStateImplCopyWith<$Res>
    implements $DoctorAllVaccinesStateCopyWith<$Res> {
  factory _$$DoctorAllVaccinesStateImplCopyWith(
    _$DoctorAllVaccinesStateImpl value,
    $Res Function(_$DoctorAllVaccinesStateImpl) then,
  ) = __$$DoctorAllVaccinesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<VaccinationRecord> vaccines,
  });
}

/// @nodoc
class __$$DoctorAllVaccinesStateImplCopyWithImpl<$Res>
    extends
        _$DoctorAllVaccinesStateCopyWithImpl<$Res, _$DoctorAllVaccinesStateImpl>
    implements _$$DoctorAllVaccinesStateImplCopyWith<$Res> {
  __$$DoctorAllVaccinesStateImplCopyWithImpl(
    _$DoctorAllVaccinesStateImpl _value,
    $Res Function(_$DoctorAllVaccinesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorAllVaccinesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? vaccines = null,
  }) {
    return _then(
      _$DoctorAllVaccinesStateImpl(
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
        vaccines:
            null == vaccines
                ? _value._vaccines
                : vaccines // ignore: cast_nullable_to_non_nullable
                    as List<VaccinationRecord>,
      ),
    );
  }
}

/// @nodoc

class _$DoctorAllVaccinesStateImpl implements _DoctorAllVaccinesState {
  const _$DoctorAllVaccinesStateImpl({
    required this.status,
    required this.message,
    required final List<VaccinationRecord> vaccines,
  }) : _vaccines = vaccines;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<VaccinationRecord> _vaccines;
  @override
  List<VaccinationRecord> get vaccines {
    if (_vaccines is EqualUnmodifiableListView) return _vaccines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vaccines);
  }

  @override
  String toString() {
    return 'DoctorAllVaccinesState(status: $status, message: $message, vaccines: $vaccines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorAllVaccinesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._vaccines, _vaccines));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_vaccines),
  );

  /// Create a copy of DoctorAllVaccinesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorAllVaccinesStateImplCopyWith<_$DoctorAllVaccinesStateImpl>
  get copyWith =>
      __$$DoctorAllVaccinesStateImplCopyWithImpl<_$DoctorAllVaccinesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorAllVaccinesState implements DoctorAllVaccinesState {
  const factory _DoctorAllVaccinesState({
    required final DataStatus status,
    required final String message,
    required final List<VaccinationRecord> vaccines,
  }) = _$DoctorAllVaccinesStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<VaccinationRecord> get vaccines;

  /// Create a copy of DoctorAllVaccinesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorAllVaccinesStateImplCopyWith<_$DoctorAllVaccinesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
