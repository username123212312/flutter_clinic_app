// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labtech_new_analysis_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LabtechNewAnalysisState {
  List<ClinicModel> get clinics => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;
  ClinicModel? get selectedClinic => throw _privateConstructorUsedError;

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabtechNewAnalysisStateCopyWith<LabtechNewAnalysisState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabtechNewAnalysisStateCopyWith<$Res> {
  factory $LabtechNewAnalysisStateCopyWith(
    LabtechNewAnalysisState value,
    $Res Function(LabtechNewAnalysisState) then,
  ) = _$LabtechNewAnalysisStateCopyWithImpl<$Res, LabtechNewAnalysisState>;
  @useResult
  $Res call({
    List<ClinicModel> clinics,
    DataStatus status,
    String statusMessage,
    ClinicModel? selectedClinic,
  });

  $ClinicModelCopyWith<$Res>? get selectedClinic;
}

/// @nodoc
class _$LabtechNewAnalysisStateCopyWithImpl<
  $Res,
  $Val extends LabtechNewAnalysisState
>
    implements $LabtechNewAnalysisStateCopyWith<$Res> {
  _$LabtechNewAnalysisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clinics = null,
    Object? status = null,
    Object? statusMessage = null,
    Object? selectedClinic = freezed,
  }) {
    return _then(
      _value.copyWith(
            clinics:
                null == clinics
                    ? _value.clinics
                    : clinics // ignore: cast_nullable_to_non_nullable
                        as List<ClinicModel>,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            statusMessage:
                null == statusMessage
                    ? _value.statusMessage
                    : statusMessage // ignore: cast_nullable_to_non_nullable
                        as String,
            selectedClinic:
                freezed == selectedClinic
                    ? _value.selectedClinic
                    : selectedClinic // ignore: cast_nullable_to_non_nullable
                        as ClinicModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of LabtechNewAnalysisState
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
abstract class _$$LabtechNewAnalysisStateImplCopyWith<$Res>
    implements $LabtechNewAnalysisStateCopyWith<$Res> {
  factory _$$LabtechNewAnalysisStateImplCopyWith(
    _$LabtechNewAnalysisStateImpl value,
    $Res Function(_$LabtechNewAnalysisStateImpl) then,
  ) = __$$LabtechNewAnalysisStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ClinicModel> clinics,
    DataStatus status,
    String statusMessage,
    ClinicModel? selectedClinic,
  });

  @override
  $ClinicModelCopyWith<$Res>? get selectedClinic;
}

/// @nodoc
class __$$LabtechNewAnalysisStateImplCopyWithImpl<$Res>
    extends
        _$LabtechNewAnalysisStateCopyWithImpl<
          $Res,
          _$LabtechNewAnalysisStateImpl
        >
    implements _$$LabtechNewAnalysisStateImplCopyWith<$Res> {
  __$$LabtechNewAnalysisStateImplCopyWithImpl(
    _$LabtechNewAnalysisStateImpl _value,
    $Res Function(_$LabtechNewAnalysisStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clinics = null,
    Object? status = null,
    Object? statusMessage = null,
    Object? selectedClinic = freezed,
  }) {
    return _then(
      _$LabtechNewAnalysisStateImpl(
        clinics:
            null == clinics
                ? _value._clinics
                : clinics // ignore: cast_nullable_to_non_nullable
                    as List<ClinicModel>,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        statusMessage:
            null == statusMessage
                ? _value.statusMessage
                : statusMessage // ignore: cast_nullable_to_non_nullable
                    as String,
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

class _$LabtechNewAnalysisStateImpl implements _LabtechNewAnalysisState {
  const _$LabtechNewAnalysisStateImpl({
    required final List<ClinicModel> clinics,
    required this.status,
    required this.statusMessage,
    this.selectedClinic,
  }) : _clinics = clinics;

  final List<ClinicModel> _clinics;
  @override
  List<ClinicModel> get clinics {
    if (_clinics is EqualUnmodifiableListView) return _clinics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clinics);
  }

  @override
  final DataStatus status;
  @override
  final String statusMessage;
  @override
  final ClinicModel? selectedClinic;

  @override
  String toString() {
    return 'LabtechNewAnalysisState(clinics: $clinics, status: $status, statusMessage: $statusMessage, selectedClinic: $selectedClinic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabtechNewAnalysisStateImpl &&
            const DeepCollectionEquality().equals(other._clinics, _clinics) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.selectedClinic, selectedClinic) ||
                other.selectedClinic == selectedClinic));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_clinics),
    status,
    statusMessage,
    selectedClinic,
  );

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabtechNewAnalysisStateImplCopyWith<_$LabtechNewAnalysisStateImpl>
  get copyWith => __$$LabtechNewAnalysisStateImplCopyWithImpl<
    _$LabtechNewAnalysisStateImpl
  >(this, _$identity);
}

abstract class _LabtechNewAnalysisState implements LabtechNewAnalysisState {
  const factory _LabtechNewAnalysisState({
    required final List<ClinicModel> clinics,
    required final DataStatus status,
    required final String statusMessage,
    final ClinicModel? selectedClinic,
  }) = _$LabtechNewAnalysisStateImpl;

  @override
  List<ClinicModel> get clinics;
  @override
  DataStatus get status;
  @override
  String get statusMessage;
  @override
  ClinicModel? get selectedClinic;

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabtechNewAnalysisStateImplCopyWith<_$LabtechNewAnalysisStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
