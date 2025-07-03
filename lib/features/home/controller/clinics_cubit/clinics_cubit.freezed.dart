// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClinicsState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ClinicModel> get clinics => throw _privateConstructorUsedError;

  /// Create a copy of ClinicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClinicsStateCopyWith<ClinicsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicsStateCopyWith<$Res> {
  factory $ClinicsStateCopyWith(
    ClinicsState value,
    $Res Function(ClinicsState) then,
  ) = _$ClinicsStateCopyWithImpl<$Res, ClinicsState>;
  @useResult
  $Res call({DataStatus status, String message, List<ClinicModel> clinics});
}

/// @nodoc
class _$ClinicsStateCopyWithImpl<$Res, $Val extends ClinicsState>
    implements $ClinicsStateCopyWith<$Res> {
  _$ClinicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClinicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clinics = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClinicsStateImplCopyWith<$Res>
    implements $ClinicsStateCopyWith<$Res> {
  factory _$$ClinicsStateImplCopyWith(
    _$ClinicsStateImpl value,
    $Res Function(_$ClinicsStateImpl) then,
  ) = __$$ClinicsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, List<ClinicModel> clinics});
}

/// @nodoc
class __$$ClinicsStateImplCopyWithImpl<$Res>
    extends _$ClinicsStateCopyWithImpl<$Res, _$ClinicsStateImpl>
    implements _$$ClinicsStateImplCopyWith<$Res> {
  __$$ClinicsStateImplCopyWithImpl(
    _$ClinicsStateImpl _value,
    $Res Function(_$ClinicsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClinicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clinics = null,
  }) {
    return _then(
      _$ClinicsStateImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$ClinicsStateImpl implements _ClinicsState {
  const _$ClinicsStateImpl({
    required this.status,
    required this.message,
    required final List<ClinicModel> clinics,
  }) : _clinics = clinics;

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

  @override
  String toString() {
    return 'ClinicsState(status: $status, message: $message, clinics: $clinics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._clinics, _clinics));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_clinics),
  );

  /// Create a copy of ClinicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicsStateImplCopyWith<_$ClinicsStateImpl> get copyWith =>
      __$$ClinicsStateImplCopyWithImpl<_$ClinicsStateImpl>(this, _$identity);
}

abstract class _ClinicsState implements ClinicsState {
  const factory _ClinicsState({
    required final DataStatus status,
    required final String message,
    required final List<ClinicModel> clinics,
  }) = _$ClinicsStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<ClinicModel> get clinics;

  /// Create a copy of ClinicsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClinicsStateImplCopyWith<_$ClinicsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
