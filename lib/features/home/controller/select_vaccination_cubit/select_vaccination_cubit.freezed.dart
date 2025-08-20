// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_vaccination_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SelectVaccinationState {
  bool get hasMore => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<VaccinationRecord> get vaccines => throw _privateConstructorUsedError;
  VaccintaionType get type => throw _privateConstructorUsedError;
  VaccinationRecord? get selectedVaccine => throw _privateConstructorUsedError;

  /// Create a copy of SelectVaccinationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectVaccinationStateCopyWith<SelectVaccinationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectVaccinationStateCopyWith<$Res> {
  factory $SelectVaccinationStateCopyWith(
    SelectVaccinationState value,
    $Res Function(SelectVaccinationState) then,
  ) = _$SelectVaccinationStateCopyWithImpl<$Res, SelectVaccinationState>;
  @useResult
  $Res call({
    bool hasMore,
    int currentPage,
    DataStatus status,
    String message,
    List<VaccinationRecord> vaccines,
    VaccintaionType type,
    VaccinationRecord? selectedVaccine,
  });

  $VaccinationRecordCopyWith<$Res>? get selectedVaccine;
}

/// @nodoc
class _$SelectVaccinationStateCopyWithImpl<
  $Res,
  $Val extends SelectVaccinationState
>
    implements $SelectVaccinationStateCopyWith<$Res> {
  _$SelectVaccinationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectVaccinationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasMore = null,
    Object? currentPage = null,
    Object? status = null,
    Object? message = null,
    Object? vaccines = null,
    Object? type = null,
    Object? selectedVaccine = freezed,
  }) {
    return _then(
      _value.copyWith(
            hasMore:
                null == hasMore
                    ? _value.hasMore
                    : hasMore // ignore: cast_nullable_to_non_nullable
                        as bool,
            currentPage:
                null == currentPage
                    ? _value.currentPage
                    : currentPage // ignore: cast_nullable_to_non_nullable
                        as int,
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
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as VaccintaionType,
            selectedVaccine:
                freezed == selectedVaccine
                    ? _value.selectedVaccine
                    : selectedVaccine // ignore: cast_nullable_to_non_nullable
                        as VaccinationRecord?,
          )
          as $Val,
    );
  }

  /// Create a copy of SelectVaccinationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VaccinationRecordCopyWith<$Res>? get selectedVaccine {
    if (_value.selectedVaccine == null) {
      return null;
    }

    return $VaccinationRecordCopyWith<$Res>(_value.selectedVaccine!, (value) {
      return _then(_value.copyWith(selectedVaccine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectVaccinationStateImplCopyWith<$Res>
    implements $SelectVaccinationStateCopyWith<$Res> {
  factory _$$SelectVaccinationStateImplCopyWith(
    _$SelectVaccinationStateImpl value,
    $Res Function(_$SelectVaccinationStateImpl) then,
  ) = __$$SelectVaccinationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool hasMore,
    int currentPage,
    DataStatus status,
    String message,
    List<VaccinationRecord> vaccines,
    VaccintaionType type,
    VaccinationRecord? selectedVaccine,
  });

  @override
  $VaccinationRecordCopyWith<$Res>? get selectedVaccine;
}

/// @nodoc
class __$$SelectVaccinationStateImplCopyWithImpl<$Res>
    extends
        _$SelectVaccinationStateCopyWithImpl<$Res, _$SelectVaccinationStateImpl>
    implements _$$SelectVaccinationStateImplCopyWith<$Res> {
  __$$SelectVaccinationStateImplCopyWithImpl(
    _$SelectVaccinationStateImpl _value,
    $Res Function(_$SelectVaccinationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectVaccinationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasMore = null,
    Object? currentPage = null,
    Object? status = null,
    Object? message = null,
    Object? vaccines = null,
    Object? type = null,
    Object? selectedVaccine = freezed,
  }) {
    return _then(
      _$SelectVaccinationStateImpl(
        hasMore:
            null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                    as bool,
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
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
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as VaccintaionType,
        selectedVaccine:
            freezed == selectedVaccine
                ? _value.selectedVaccine
                : selectedVaccine // ignore: cast_nullable_to_non_nullable
                    as VaccinationRecord?,
      ),
    );
  }
}

/// @nodoc

class _$SelectVaccinationStateImpl implements _SelectVaccinationState {
  const _$SelectVaccinationStateImpl({
    required this.hasMore,
    required this.currentPage,
    required this.status,
    required this.message,
    required final List<VaccinationRecord> vaccines,
    required this.type,
    this.selectedVaccine,
  }) : _vaccines = vaccines;

  @override
  final bool hasMore;
  @override
  final int currentPage;
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
  final VaccintaionType type;
  @override
  final VaccinationRecord? selectedVaccine;

  @override
  String toString() {
    return 'SelectVaccinationState(hasMore: $hasMore, currentPage: $currentPage, status: $status, message: $message, vaccines: $vaccines, type: $type, selectedVaccine: $selectedVaccine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectVaccinationStateImpl &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._vaccines, _vaccines) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.selectedVaccine, selectedVaccine) ||
                other.selectedVaccine == selectedVaccine));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    hasMore,
    currentPage,
    status,
    message,
    const DeepCollectionEquality().hash(_vaccines),
    type,
    selectedVaccine,
  );

  /// Create a copy of SelectVaccinationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectVaccinationStateImplCopyWith<_$SelectVaccinationStateImpl>
  get copyWith =>
      __$$SelectVaccinationStateImplCopyWithImpl<_$SelectVaccinationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SelectVaccinationState implements SelectVaccinationState {
  const factory _SelectVaccinationState({
    required final bool hasMore,
    required final int currentPage,
    required final DataStatus status,
    required final String message,
    required final List<VaccinationRecord> vaccines,
    required final VaccintaionType type,
    final VaccinationRecord? selectedVaccine,
  }) = _$SelectVaccinationStateImpl;

  @override
  bool get hasMore;
  @override
  int get currentPage;
  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<VaccinationRecord> get vaccines;
  @override
  VaccintaionType get type;
  @override
  VaccinationRecord? get selectedVaccine;

  /// Create a copy of SelectVaccinationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectVaccinationStateImplCopyWith<_$SelectVaccinationStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
