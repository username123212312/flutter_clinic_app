// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_reviews_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorReviewsState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;

  /// Create a copy of DoctorReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorReviewsStateCopyWith<DoctorReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorReviewsStateCopyWith<$Res> {
  factory $DoctorReviewsStateCopyWith(
    DoctorReviewsState value,
    $Res Function(DoctorReviewsState) then,
  ) = _$DoctorReviewsStateCopyWithImpl<$Res, DoctorReviewsState>;
  @useResult
  $Res call({DataStatus status, String message, List<ReviewModel> reviews});
}

/// @nodoc
class _$DoctorReviewsStateCopyWithImpl<$Res, $Val extends DoctorReviewsState>
    implements $DoctorReviewsStateCopyWith<$Res> {
  _$DoctorReviewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? reviews = null,
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
            reviews:
                null == reviews
                    ? _value.reviews
                    : reviews // ignore: cast_nullable_to_non_nullable
                        as List<ReviewModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorReviewsStateImplCopyWith<$Res>
    implements $DoctorReviewsStateCopyWith<$Res> {
  factory _$$DoctorReviewsStateImplCopyWith(
    _$DoctorReviewsStateImpl value,
    $Res Function(_$DoctorReviewsStateImpl) then,
  ) = __$$DoctorReviewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, List<ReviewModel> reviews});
}

/// @nodoc
class __$$DoctorReviewsStateImplCopyWithImpl<$Res>
    extends _$DoctorReviewsStateCopyWithImpl<$Res, _$DoctorReviewsStateImpl>
    implements _$$DoctorReviewsStateImplCopyWith<$Res> {
  __$$DoctorReviewsStateImplCopyWithImpl(
    _$DoctorReviewsStateImpl _value,
    $Res Function(_$DoctorReviewsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? reviews = null,
  }) {
    return _then(
      _$DoctorReviewsStateImpl(
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
        reviews:
            null == reviews
                ? _value._reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                    as List<ReviewModel>,
      ),
    );
  }
}

/// @nodoc

class _$DoctorReviewsStateImpl implements _DoctorReviewsState {
  const _$DoctorReviewsStateImpl({
    required this.status,
    required this.message,
    required final List<ReviewModel> reviews,
  }) : _reviews = reviews;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<ReviewModel> _reviews;
  @override
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'DoctorReviewsState(status: $status, message: $message, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorReviewsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_reviews),
  );

  /// Create a copy of DoctorReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorReviewsStateImplCopyWith<_$DoctorReviewsStateImpl> get copyWith =>
      __$$DoctorReviewsStateImplCopyWithImpl<_$DoctorReviewsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorReviewsState implements DoctorReviewsState {
  const factory _DoctorReviewsState({
    required final DataStatus status,
    required final String message,
    required final List<ReviewModel> reviews,
  }) = _$DoctorReviewsStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<ReviewModel> get reviews;

  /// Create a copy of DoctorReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorReviewsStateImplCopyWith<_$DoctorReviewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
