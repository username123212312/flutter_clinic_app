// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labtech_new_analysis_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabtechNewAnalysisState {
  List<ClinicModel> get clinics;
  DataStatus get status;
  String get statusMessage;
  ClinicModel? get selectedClinic;

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabtechNewAnalysisStateCopyWith<LabtechNewAnalysisState> get copyWith =>
      _$LabtechNewAnalysisStateCopyWithImpl<LabtechNewAnalysisState>(
          this as LabtechNewAnalysisState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabtechNewAnalysisState &&
            const DeepCollectionEquality().equals(other.clinics, clinics) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.selectedClinic, selectedClinic) ||
                other.selectedClinic == selectedClinic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clinics),
      status,
      statusMessage,
      selectedClinic);

  @override
  String toString() {
    return 'LabtechNewAnalysisState(clinics: $clinics, status: $status, statusMessage: $statusMessage, selectedClinic: $selectedClinic)';
  }
}

/// @nodoc
abstract mixin class $LabtechNewAnalysisStateCopyWith<$Res> {
  factory $LabtechNewAnalysisStateCopyWith(LabtechNewAnalysisState value,
          $Res Function(LabtechNewAnalysisState) _then) =
      _$LabtechNewAnalysisStateCopyWithImpl;
  @useResult
  $Res call(
      {List<ClinicModel> clinics,
      DataStatus status,
      String statusMessage,
      ClinicModel? selectedClinic});

  $ClinicModelCopyWith<$Res>? get selectedClinic;
}

/// @nodoc
class _$LabtechNewAnalysisStateCopyWithImpl<$Res>
    implements $LabtechNewAnalysisStateCopyWith<$Res> {
  _$LabtechNewAnalysisStateCopyWithImpl(this._self, this._then);

  final LabtechNewAnalysisState _self;
  final $Res Function(LabtechNewAnalysisState) _then;

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
    return _then(_self.copyWith(
      clinics: null == clinics
          ? _self.clinics
          : clinics // ignore: cast_nullable_to_non_nullable
              as List<ClinicModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedClinic: freezed == selectedClinic
          ? _self.selectedClinic
          : selectedClinic // ignore: cast_nullable_to_non_nullable
              as ClinicModel?,
    ));
  }

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res>? get selectedClinic {
    if (_self.selectedClinic == null) {
      return null;
    }

    return $ClinicModelCopyWith<$Res>(_self.selectedClinic!, (value) {
      return _then(_self.copyWith(selectedClinic: value));
    });
  }
}

/// @nodoc

class _LabtechNewAnalysisState implements LabtechNewAnalysisState {
  const _LabtechNewAnalysisState(
      {required final List<ClinicModel> clinics,
      required this.status,
      required this.statusMessage,
      this.selectedClinic})
      : _clinics = clinics;

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

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabtechNewAnalysisStateCopyWith<_LabtechNewAnalysisState> get copyWith =>
      __$LabtechNewAnalysisStateCopyWithImpl<_LabtechNewAnalysisState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabtechNewAnalysisState &&
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
      selectedClinic);

  @override
  String toString() {
    return 'LabtechNewAnalysisState(clinics: $clinics, status: $status, statusMessage: $statusMessage, selectedClinic: $selectedClinic)';
  }
}

/// @nodoc
abstract mixin class _$LabtechNewAnalysisStateCopyWith<$Res>
    implements $LabtechNewAnalysisStateCopyWith<$Res> {
  factory _$LabtechNewAnalysisStateCopyWith(_LabtechNewAnalysisState value,
          $Res Function(_LabtechNewAnalysisState) _then) =
      __$LabtechNewAnalysisStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ClinicModel> clinics,
      DataStatus status,
      String statusMessage,
      ClinicModel? selectedClinic});

  @override
  $ClinicModelCopyWith<$Res>? get selectedClinic;
}

/// @nodoc
class __$LabtechNewAnalysisStateCopyWithImpl<$Res>
    implements _$LabtechNewAnalysisStateCopyWith<$Res> {
  __$LabtechNewAnalysisStateCopyWithImpl(this._self, this._then);

  final _LabtechNewAnalysisState _self;
  final $Res Function(_LabtechNewAnalysisState) _then;

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clinics = null,
    Object? status = null,
    Object? statusMessage = null,
    Object? selectedClinic = freezed,
  }) {
    return _then(_LabtechNewAnalysisState(
      clinics: null == clinics
          ? _self._clinics
          : clinics // ignore: cast_nullable_to_non_nullable
              as List<ClinicModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedClinic: freezed == selectedClinic
          ? _self.selectedClinic
          : selectedClinic // ignore: cast_nullable_to_non_nullable
              as ClinicModel?,
    ));
  }

  /// Create a copy of LabtechNewAnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res>? get selectedClinic {
    if (_self.selectedClinic == null) {
      return null;
    }

    return $ClinicModelCopyWith<$Res>(_self.selectedClinic!, (value) {
      return _then(_self.copyWith(selectedClinic: value));
    });
  }
}

// dart format on
