// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicineModel {
  int? get id;
  String? get name;
  String? get dose;
  String? get frequency;
  String? get strength;
  String? get until;
  String? get whenToTake;
  String? get note;

  /// Create a copy of MedicineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MedicineModelCopyWith<MedicineModel> get copyWith =>
      _$MedicineModelCopyWithImpl<MedicineModel>(
          this as MedicineModel, _$identity);

  /// Serializes this MedicineModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MedicineModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.until, until) || other.until == until) &&
            (identical(other.whenToTake, whenToTake) ||
                other.whenToTake == whenToTake) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, dose, frequency,
      strength, until, whenToTake, note);

  @override
  String toString() {
    return 'MedicineModel(id: $id, name: $name, dose: $dose, frequency: $frequency, strength: $strength, until: $until, whenToTake: $whenToTake, note: $note)';
  }
}

/// @nodoc
abstract mixin class $MedicineModelCopyWith<$Res> {
  factory $MedicineModelCopyWith(
          MedicineModel value, $Res Function(MedicineModel) _then) =
      _$MedicineModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? dose,
      String? frequency,
      String? strength,
      String? until,
      String? whenToTake,
      String? note});
}

/// @nodoc
class _$MedicineModelCopyWithImpl<$Res>
    implements $MedicineModelCopyWith<$Res> {
  _$MedicineModelCopyWithImpl(this._self, this._then);

  final MedicineModel _self;
  final $Res Function(MedicineModel) _then;

  /// Create a copy of MedicineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dose = freezed,
    Object? frequency = freezed,
    Object? strength = freezed,
    Object? until = freezed,
    Object? whenToTake = freezed,
    Object? note = freezed,
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
      dose: freezed == dose
          ? _self.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _self.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      strength: freezed == strength
          ? _self.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String?,
      until: freezed == until
          ? _self.until
          : until // ignore: cast_nullable_to_non_nullable
              as String?,
      whenToTake: freezed == whenToTake
          ? _self.whenToTake
          : whenToTake // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MedicineModel implements MedicineModel {
  _MedicineModel(
      {this.id,
      this.name,
      this.dose,
      this.frequency,
      this.strength,
      this.until,
      this.whenToTake,
      this.note});
  factory _MedicineModel.fromJson(Map<String, dynamic> json) =>
      _$MedicineModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? dose;
  @override
  final String? frequency;
  @override
  final String? strength;
  @override
  final String? until;
  @override
  final String? whenToTake;
  @override
  final String? note;

  /// Create a copy of MedicineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MedicineModelCopyWith<_MedicineModel> get copyWith =>
      __$MedicineModelCopyWithImpl<_MedicineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MedicineModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicineModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.until, until) || other.until == until) &&
            (identical(other.whenToTake, whenToTake) ||
                other.whenToTake == whenToTake) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, dose, frequency,
      strength, until, whenToTake, note);

  @override
  String toString() {
    return 'MedicineModel(id: $id, name: $name, dose: $dose, frequency: $frequency, strength: $strength, until: $until, whenToTake: $whenToTake, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$MedicineModelCopyWith<$Res>
    implements $MedicineModelCopyWith<$Res> {
  factory _$MedicineModelCopyWith(
          _MedicineModel value, $Res Function(_MedicineModel) _then) =
      __$MedicineModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? dose,
      String? frequency,
      String? strength,
      String? until,
      String? whenToTake,
      String? note});
}

/// @nodoc
class __$MedicineModelCopyWithImpl<$Res>
    implements _$MedicineModelCopyWith<$Res> {
  __$MedicineModelCopyWithImpl(this._self, this._then);

  final _MedicineModel _self;
  final $Res Function(_MedicineModel) _then;

  /// Create a copy of MedicineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dose = freezed,
    Object? frequency = freezed,
    Object? strength = freezed,
    Object? until = freezed,
    Object? whenToTake = freezed,
    Object? note = freezed,
  }) {
    return _then(_MedicineModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dose: freezed == dose
          ? _self.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _self.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      strength: freezed == strength
          ? _self.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String?,
      until: freezed == until
          ? _self.until
          : until // ignore: cast_nullable_to_non_nullable
              as String?,
      whenToTake: freezed == whenToTake
          ? _self.whenToTake
          : whenToTake // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
