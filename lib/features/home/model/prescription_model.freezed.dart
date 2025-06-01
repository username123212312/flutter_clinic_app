// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrescriptionModel {
  int? get id;
  String? get note;
  List<MedicineModel>? get medicines;

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrescriptionModelCopyWith<PrescriptionModel> get copyWith =>
      _$PrescriptionModelCopyWithImpl<PrescriptionModel>(
          this as PrescriptionModel, _$identity);

  /// Serializes this PrescriptionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrescriptionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other.medicines, medicines));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, note, const DeepCollectionEquality().hash(medicines));

  @override
  String toString() {
    return 'PrescriptionModel(id: $id, note: $note, medicines: $medicines)';
  }
}

/// @nodoc
abstract mixin class $PrescriptionModelCopyWith<$Res> {
  factory $PrescriptionModelCopyWith(
          PrescriptionModel value, $Res Function(PrescriptionModel) _then) =
      _$PrescriptionModelCopyWithImpl;
  @useResult
  $Res call({int? id, String? note, List<MedicineModel>? medicines});
}

/// @nodoc
class _$PrescriptionModelCopyWithImpl<$Res>
    implements $PrescriptionModelCopyWith<$Res> {
  _$PrescriptionModelCopyWithImpl(this._self, this._then);

  final PrescriptionModel _self;
  final $Res Function(PrescriptionModel) _then;

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? medicines = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      medicines: freezed == medicines
          ? _self.medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicineModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PrescriptionModel implements PrescriptionModel {
  _PrescriptionModel({this.id, this.note, final List<MedicineModel>? medicines})
      : _medicines = medicines;
  factory _PrescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionModelFromJson(json);

  @override
  final int? id;
  @override
  final String? note;
  final List<MedicineModel>? _medicines;
  @override
  List<MedicineModel>? get medicines {
    final value = _medicines;
    if (value == null) return null;
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PrescriptionModelCopyWith<_PrescriptionModel> get copyWith =>
      __$PrescriptionModelCopyWithImpl<_PrescriptionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PrescriptionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrescriptionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, note, const DeepCollectionEquality().hash(_medicines));

  @override
  String toString() {
    return 'PrescriptionModel(id: $id, note: $note, medicines: $medicines)';
  }
}

/// @nodoc
abstract mixin class _$PrescriptionModelCopyWith<$Res>
    implements $PrescriptionModelCopyWith<$Res> {
  factory _$PrescriptionModelCopyWith(
          _PrescriptionModel value, $Res Function(_PrescriptionModel) _then) =
      __$PrescriptionModelCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? note, List<MedicineModel>? medicines});
}

/// @nodoc
class __$PrescriptionModelCopyWithImpl<$Res>
    implements _$PrescriptionModelCopyWith<$Res> {
  __$PrescriptionModelCopyWithImpl(this._self, this._then);

  final _PrescriptionModel _self;
  final $Res Function(_PrescriptionModel) _then;

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? medicines = freezed,
  }) {
    return _then(_PrescriptionModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      medicines: freezed == medicines
          ? _self._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicineModel>?,
    ));
  }
}

// dart format on
