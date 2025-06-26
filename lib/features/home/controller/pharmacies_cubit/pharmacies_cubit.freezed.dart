// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PharmaciesState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<PharmacyModel> get pharmacies => throw _privateConstructorUsedError;

  /// Create a copy of PharmaciesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PharmaciesStateCopyWith<PharmaciesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmaciesStateCopyWith<$Res> {
  factory $PharmaciesStateCopyWith(
    PharmaciesState value,
    $Res Function(PharmaciesState) then,
  ) = _$PharmaciesStateCopyWithImpl<$Res, PharmaciesState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<PharmacyModel> pharmacies,
  });
}

/// @nodoc
class _$PharmaciesStateCopyWithImpl<$Res, $Val extends PharmaciesState>
    implements $PharmaciesStateCopyWith<$Res> {
  _$PharmaciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PharmaciesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? pharmacies = null,
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
            pharmacies:
                null == pharmacies
                    ? _value.pharmacies
                    : pharmacies // ignore: cast_nullable_to_non_nullable
                        as List<PharmacyModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PharmaciesStateImplCopyWith<$Res>
    implements $PharmaciesStateCopyWith<$Res> {
  factory _$$PharmaciesStateImplCopyWith(
    _$PharmaciesStateImpl value,
    $Res Function(_$PharmaciesStateImpl) then,
  ) = __$$PharmaciesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<PharmacyModel> pharmacies,
  });
}

/// @nodoc
class __$$PharmaciesStateImplCopyWithImpl<$Res>
    extends _$PharmaciesStateCopyWithImpl<$Res, _$PharmaciesStateImpl>
    implements _$$PharmaciesStateImplCopyWith<$Res> {
  __$$PharmaciesStateImplCopyWithImpl(
    _$PharmaciesStateImpl _value,
    $Res Function(_$PharmaciesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PharmaciesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? pharmacies = null,
  }) {
    return _then(
      _$PharmaciesStateImpl(
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
        pharmacies:
            null == pharmacies
                ? _value._pharmacies
                : pharmacies // ignore: cast_nullable_to_non_nullable
                    as List<PharmacyModel>,
      ),
    );
  }
}

/// @nodoc

class _$PharmaciesStateImpl implements _PharmaciesState {
  const _$PharmaciesStateImpl({
    required this.status,
    required this.message,
    required final List<PharmacyModel> pharmacies,
  }) : _pharmacies = pharmacies;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<PharmacyModel> _pharmacies;
  @override
  List<PharmacyModel> get pharmacies {
    if (_pharmacies is EqualUnmodifiableListView) return _pharmacies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pharmacies);
  }

  @override
  String toString() {
    return 'PharmaciesState(status: $status, message: $message, pharmacies: $pharmacies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PharmaciesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._pharmacies,
              _pharmacies,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_pharmacies),
  );

  /// Create a copy of PharmaciesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PharmaciesStateImplCopyWith<_$PharmaciesStateImpl> get copyWith =>
      __$$PharmaciesStateImplCopyWithImpl<_$PharmaciesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PharmaciesState implements PharmaciesState {
  const factory _PharmaciesState({
    required final DataStatus status,
    required final String message,
    required final List<PharmacyModel> pharmacies,
  }) = _$PharmaciesStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<PharmacyModel> get pharmacies;

  /// Create a copy of PharmaciesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PharmaciesStateImplCopyWith<_$PharmaciesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
