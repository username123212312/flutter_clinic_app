// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_edit_vac_record_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorEditVacRecordRequest {
  int? get doseNumber => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  bool get isTaken => throw _privateConstructorUsedError;
  int get recordId => throw _privateConstructorUsedError;
  DateTime? get nextVaccineDate => throw _privateConstructorUsedError;

  /// Create a copy of DoctorEditVacRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorEditVacRecordRequestCopyWith<DoctorEditVacRecordRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEditVacRecordRequestCopyWith<$Res> {
  factory $DoctorEditVacRecordRequestCopyWith(
    DoctorEditVacRecordRequest value,
    $Res Function(DoctorEditVacRecordRequest) then,
  ) =
      _$DoctorEditVacRecordRequestCopyWithImpl<
        $Res,
        DoctorEditVacRecordRequest
      >;
  @useResult
  $Res call({
    int? doseNumber,
    String? notes,
    bool isTaken,
    int recordId,
    DateTime? nextVaccineDate,
  });
}

/// @nodoc
class _$DoctorEditVacRecordRequestCopyWithImpl<
  $Res,
  $Val extends DoctorEditVacRecordRequest
>
    implements $DoctorEditVacRecordRequestCopyWith<$Res> {
  _$DoctorEditVacRecordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorEditVacRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseNumber = freezed,
    Object? notes = freezed,
    Object? isTaken = null,
    Object? recordId = null,
    Object? nextVaccineDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            doseNumber:
                freezed == doseNumber
                    ? _value.doseNumber
                    : doseNumber // ignore: cast_nullable_to_non_nullable
                        as int?,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
            isTaken:
                null == isTaken
                    ? _value.isTaken
                    : isTaken // ignore: cast_nullable_to_non_nullable
                        as bool,
            recordId:
                null == recordId
                    ? _value.recordId
                    : recordId // ignore: cast_nullable_to_non_nullable
                        as int,
            nextVaccineDate:
                freezed == nextVaccineDate
                    ? _value.nextVaccineDate
                    : nextVaccineDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorEditVacRecordRequestImplCopyWith<$Res>
    implements $DoctorEditVacRecordRequestCopyWith<$Res> {
  factory _$$DoctorEditVacRecordRequestImplCopyWith(
    _$DoctorEditVacRecordRequestImpl value,
    $Res Function(_$DoctorEditVacRecordRequestImpl) then,
  ) = __$$DoctorEditVacRecordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? doseNumber,
    String? notes,
    bool isTaken,
    int recordId,
    DateTime? nextVaccineDate,
  });
}

/// @nodoc
class __$$DoctorEditVacRecordRequestImplCopyWithImpl<$Res>
    extends
        _$DoctorEditVacRecordRequestCopyWithImpl<
          $Res,
          _$DoctorEditVacRecordRequestImpl
        >
    implements _$$DoctorEditVacRecordRequestImplCopyWith<$Res> {
  __$$DoctorEditVacRecordRequestImplCopyWithImpl(
    _$DoctorEditVacRecordRequestImpl _value,
    $Res Function(_$DoctorEditVacRecordRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorEditVacRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseNumber = freezed,
    Object? notes = freezed,
    Object? isTaken = null,
    Object? recordId = null,
    Object? nextVaccineDate = freezed,
  }) {
    return _then(
      _$DoctorEditVacRecordRequestImpl(
        doseNumber:
            freezed == doseNumber
                ? _value.doseNumber
                : doseNumber // ignore: cast_nullable_to_non_nullable
                    as int?,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
        isTaken:
            null == isTaken
                ? _value.isTaken
                : isTaken // ignore: cast_nullable_to_non_nullable
                    as bool,
        recordId:
            null == recordId
                ? _value.recordId
                : recordId // ignore: cast_nullable_to_non_nullable
                    as int,
        nextVaccineDate:
            freezed == nextVaccineDate
                ? _value.nextVaccineDate
                : nextVaccineDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$DoctorEditVacRecordRequestImpl implements _DoctorEditVacRecordRequest {
  _$DoctorEditVacRecordRequestImpl({
    this.doseNumber,
    this.notes,
    required this.isTaken,
    required this.recordId,
    this.nextVaccineDate,
  });

  @override
  final int? doseNumber;
  @override
  final String? notes;
  @override
  final bool isTaken;
  @override
  final int recordId;
  @override
  final DateTime? nextVaccineDate;

  @override
  String toString() {
    return 'DoctorEditVacRecordRequest(doseNumber: $doseNumber, notes: $notes, isTaken: $isTaken, recordId: $recordId, nextVaccineDate: $nextVaccineDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorEditVacRecordRequestImpl &&
            (identical(other.doseNumber, doseNumber) ||
                other.doseNumber == doseNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.isTaken, isTaken) || other.isTaken == isTaken) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.nextVaccineDate, nextVaccineDate) ||
                other.nextVaccineDate == nextVaccineDate));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    doseNumber,
    notes,
    isTaken,
    recordId,
    nextVaccineDate,
  );

  /// Create a copy of DoctorEditVacRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorEditVacRecordRequestImplCopyWith<_$DoctorEditVacRecordRequestImpl>
  get copyWith => __$$DoctorEditVacRecordRequestImplCopyWithImpl<
    _$DoctorEditVacRecordRequestImpl
  >(this, _$identity);
}

abstract class _DoctorEditVacRecordRequest
    implements DoctorEditVacRecordRequest {
  factory _DoctorEditVacRecordRequest({
    final int? doseNumber,
    final String? notes,
    required final bool isTaken,
    required final int recordId,
    final DateTime? nextVaccineDate,
  }) = _$DoctorEditVacRecordRequestImpl;

  @override
  int? get doseNumber;
  @override
  String? get notes;
  @override
  bool get isTaken;
  @override
  int get recordId;
  @override
  DateTime? get nextVaccineDate;

  /// Create a copy of DoctorEditVacRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorEditVacRecordRequestImplCopyWith<_$DoctorEditVacRecordRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
