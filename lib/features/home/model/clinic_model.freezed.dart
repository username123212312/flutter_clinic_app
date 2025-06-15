// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ClinicModel _$ClinicModelFromJson(Map<String, dynamic> json) {
  return _ClinicModel.fromJson(json);
}

/// @nodoc
mixin _$ClinicModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get numOfDoctors => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  /// Serializes this ClinicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClinicModelCopyWith<ClinicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicModelCopyWith<$Res> {
  factory $ClinicModelCopyWith(
    ClinicModel value,
    $Res Function(ClinicModel) then,
  ) = _$ClinicModelCopyWithImpl<$Res, ClinicModel>;
  @useResult
  $Res call({int? id, String? name, int? numOfDoctors, String? location});
}

/// @nodoc
class _$ClinicModelCopyWithImpl<$Res, $Val extends ClinicModel>
    implements $ClinicModelCopyWith<$Res> {
  _$ClinicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? numOfDoctors = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            numOfDoctors:
                freezed == numOfDoctors
                    ? _value.numOfDoctors
                    : numOfDoctors // ignore: cast_nullable_to_non_nullable
                        as int?,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClinicModelImplCopyWith<$Res>
    implements $ClinicModelCopyWith<$Res> {
  factory _$$ClinicModelImplCopyWith(
    _$ClinicModelImpl value,
    $Res Function(_$ClinicModelImpl) then,
  ) = __$$ClinicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? numOfDoctors, String? location});
}

/// @nodoc
class __$$ClinicModelImplCopyWithImpl<$Res>
    extends _$ClinicModelCopyWithImpl<$Res, _$ClinicModelImpl>
    implements _$$ClinicModelImplCopyWith<$Res> {
  __$$ClinicModelImplCopyWithImpl(
    _$ClinicModelImpl _value,
    $Res Function(_$ClinicModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? numOfDoctors = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _$ClinicModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        numOfDoctors:
            freezed == numOfDoctors
                ? _value.numOfDoctors
                : numOfDoctors // ignore: cast_nullable_to_non_nullable
                    as int?,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicModelImpl implements _ClinicModel {
  _$ClinicModelImpl({this.id, this.name, this.numOfDoctors, this.location});

  factory _$ClinicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClinicModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? numOfDoctors;
  @override
  final String? location;

  @override
  String toString() {
    return 'ClinicModel(id: $id, name: $name, numOfDoctors: $numOfDoctors, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numOfDoctors, numOfDoctors) ||
                other.numOfDoctors == numOfDoctors) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, numOfDoctors, location);

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicModelImplCopyWith<_$ClinicModelImpl> get copyWith =>
      __$$ClinicModelImplCopyWithImpl<_$ClinicModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicModelImplToJson(this);
  }
}

abstract class _ClinicModel implements ClinicModel {
  factory _ClinicModel({
    final int? id,
    final String? name,
    final int? numOfDoctors,
    final String? location,
  }) = _$ClinicModelImpl;

  factory _ClinicModel.fromJson(Map<String, dynamic> json) =
      _$ClinicModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get numOfDoctors;
  @override
  String? get location;

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClinicModelImplCopyWith<_$ClinicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
