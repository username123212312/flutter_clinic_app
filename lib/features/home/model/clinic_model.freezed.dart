// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClinicModel {
  int? get id;
  String? get name;
  int? get numOfDoctors;
  String? get location;

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<ClinicModel> get copyWith =>
      _$ClinicModelCopyWithImpl<ClinicModel>(this as ClinicModel, _$identity);

  /// Serializes this ClinicModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClinicModel &&
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

  @override
  String toString() {
    return 'ClinicModel(id: $id, name: $name, numOfDoctors: $numOfDoctors, location: $location)';
  }
}

/// @nodoc
abstract mixin class $ClinicModelCopyWith<$Res> {
  factory $ClinicModelCopyWith(
          ClinicModel value, $Res Function(ClinicModel) _then) =
      _$ClinicModelCopyWithImpl;
  @useResult
  $Res call({int? id, String? name, int? numOfDoctors, String? location});
}

/// @nodoc
class _$ClinicModelCopyWithImpl<$Res> implements $ClinicModelCopyWith<$Res> {
  _$ClinicModelCopyWithImpl(this._self, this._then);

  final ClinicModel _self;
  final $Res Function(ClinicModel) _then;

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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfDoctors: freezed == numOfDoctors
          ? _self.numOfDoctors
          : numOfDoctors // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ClinicModel implements ClinicModel {
  _ClinicModel({this.id, this.name, this.numOfDoctors, this.location});
  factory _ClinicModel.fromJson(Map<String, dynamic> json) =>
      _$ClinicModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? numOfDoctors;
  @override
  final String? location;

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClinicModelCopyWith<_ClinicModel> get copyWith =>
      __$ClinicModelCopyWithImpl<_ClinicModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClinicModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClinicModel &&
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

  @override
  String toString() {
    return 'ClinicModel(id: $id, name: $name, numOfDoctors: $numOfDoctors, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$ClinicModelCopyWith<$Res>
    implements $ClinicModelCopyWith<$Res> {
  factory _$ClinicModelCopyWith(
          _ClinicModel value, $Res Function(_ClinicModel) _then) =
      __$ClinicModelCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? name, int? numOfDoctors, String? location});
}

/// @nodoc
class __$ClinicModelCopyWithImpl<$Res> implements _$ClinicModelCopyWith<$Res> {
  __$ClinicModelCopyWithImpl(this._self, this._then);

  final _ClinicModel _self;
  final $Res Function(_ClinicModel) _then;

  /// Create a copy of ClinicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? numOfDoctors = freezed,
    Object? location = freezed,
  }) {
    return _then(_ClinicModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfDoctors: freezed == numOfDoctors
          ? _self.numOfDoctors
          : numOfDoctors // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
