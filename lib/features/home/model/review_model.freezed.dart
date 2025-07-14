// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  @JsonKey(name: 'patient_id')
  int? get patientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_first_name')
  String? get patientFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_last_name')
  String? get patientLastName => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
    ReviewModel value,
    $Res Function(ReviewModel) then,
  ) = _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'patient_id') int? patientId,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    int? rate,
    String? comment,
  });
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? rate = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _value.copyWith(
            patientId:
                freezed == patientId
                    ? _value.patientId
                    : patientId // ignore: cast_nullable_to_non_nullable
                        as int?,
            patientFirstName:
                freezed == patientFirstName
                    ? _value.patientFirstName
                    : patientFirstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            patientLastName:
                freezed == patientLastName
                    ? _value.patientLastName
                    : patientLastName // ignore: cast_nullable_to_non_nullable
                        as String?,
            rate:
                freezed == rate
                    ? _value.rate
                    : rate // ignore: cast_nullable_to_non_nullable
                        as int?,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewModelImplCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$ReviewModelImplCopyWith(
    _$ReviewModelImpl value,
    $Res Function(_$ReviewModelImpl) then,
  ) = __$$ReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'patient_id') int? patientId,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    int? rate,
    String? comment,
  });
}

/// @nodoc
class __$$ReviewModelImplCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$ReviewModelImpl>
    implements _$$ReviewModelImplCopyWith<$Res> {
  __$$ReviewModelImplCopyWithImpl(
    _$ReviewModelImpl _value,
    $Res Function(_$ReviewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? rate = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _$ReviewModelImpl(
        patientId:
            freezed == patientId
                ? _value.patientId
                : patientId // ignore: cast_nullable_to_non_nullable
                    as int?,
        patientFirstName:
            freezed == patientFirstName
                ? _value.patientFirstName
                : patientFirstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        patientLastName:
            freezed == patientLastName
                ? _value.patientLastName
                : patientLastName // ignore: cast_nullable_to_non_nullable
                    as String?,
        rate:
            freezed == rate
                ? _value.rate
                : rate // ignore: cast_nullable_to_non_nullable
                    as int?,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewModelImpl implements _ReviewModel {
  _$ReviewModelImpl({
    @JsonKey(name: 'patient_id') this.patientId,
    @JsonKey(name: 'patient_first_name') this.patientFirstName,
    @JsonKey(name: 'patient_last_name') this.patientLastName,
    this.rate,
    this.comment,
  });

  factory _$ReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewModelImplFromJson(json);

  @override
  @JsonKey(name: 'patient_id')
  final int? patientId;
  @override
  @JsonKey(name: 'patient_first_name')
  final String? patientFirstName;
  @override
  @JsonKey(name: 'patient_last_name')
  final String? patientLastName;
  @override
  final int? rate;
  @override
  final String? comment;

  @override
  String toString() {
    return 'ReviewModel(patientId: $patientId, patientFirstName: $patientFirstName, patientLastName: $patientLastName, rate: $rate, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewModelImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.patientFirstName, patientFirstName) ||
                other.patientFirstName == patientFirstName) &&
            (identical(other.patientLastName, patientLastName) ||
                other.patientLastName == patientLastName) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    patientId,
    patientFirstName,
    patientLastName,
    rate,
    comment,
  );

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      __$$ReviewModelImplCopyWithImpl<_$ReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewModelImplToJson(this);
  }
}

abstract class _ReviewModel implements ReviewModel {
  factory _ReviewModel({
    @JsonKey(name: 'patient_id') final int? patientId,
    @JsonKey(name: 'patient_first_name') final String? patientFirstName,
    @JsonKey(name: 'patient_last_name') final String? patientLastName,
    final int? rate,
    final String? comment,
  }) = _$ReviewModelImpl;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$ReviewModelImpl.fromJson;

  @override
  @JsonKey(name: 'patient_id')
  int? get patientId;
  @override
  @JsonKey(name: 'patient_first_name')
  String? get patientFirstName;
  @override
  @JsonKey(name: 'patient_last_name')
  String? get patientLastName;
  @override
  int? get rate;
  @override
  String? get comment;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
