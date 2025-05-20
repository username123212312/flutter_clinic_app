// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientModel {
  String get name;

  /// Create a copy of PatientModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PatientModelCopyWith<PatientModel> get copyWith =>
      _$PatientModelCopyWithImpl<PatientModel>(
          this as PatientModel, _$identity);

  /// Serializes this PatientModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PatientModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'PatientModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class $PatientModelCopyWith<$Res> {
  factory $PatientModelCopyWith(
          PatientModel value, $Res Function(PatientModel) _then) =
      _$PatientModelCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PatientModelCopyWithImpl<$Res> implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._self, this._then);

  final PatientModel _self;
  final $Res Function(PatientModel) _then;

  /// Create a copy of PatientModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PatientModel implements PatientModel {
  _PatientModel({required this.name});
  factory _PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);

  @override
  final String name;

  /// Create a copy of PatientModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PatientModelCopyWith<_PatientModel> get copyWith =>
      __$PatientModelCopyWithImpl<_PatientModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PatientModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatientModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'PatientModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$PatientModelCopyWith<$Res>
    implements $PatientModelCopyWith<$Res> {
  factory _$PatientModelCopyWith(
          _PatientModel value, $Res Function(_PatientModel) _then) =
      __$PatientModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$PatientModelCopyWithImpl<$Res>
    implements _$PatientModelCopyWith<$Res> {
  __$PatientModelCopyWithImpl(this._self, this._then);

  final _PatientModel _self;
  final $Res Function(_PatientModel) _then;

  /// Create a copy of PatientModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_PatientModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
