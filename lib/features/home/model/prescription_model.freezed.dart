// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PrescriptionModel _$PrescriptionModelFromJson(Map<String, dynamic> json) {
  return _PrescriptionModel.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionModel {
  int? get id => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  List<MedicineModel>? get medicines => throw _privateConstructorUsedError;

  /// Serializes this PrescriptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionModelCopyWith<PrescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionModelCopyWith<$Res> {
  factory $PrescriptionModelCopyWith(
    PrescriptionModel value,
    $Res Function(PrescriptionModel) then,
  ) = _$PrescriptionModelCopyWithImpl<$Res, PrescriptionModel>;
  @useResult
  $Res call({int? id, String? note, List<MedicineModel>? medicines});
}

/// @nodoc
class _$PrescriptionModelCopyWithImpl<$Res, $Val extends PrescriptionModel>
    implements $PrescriptionModelCopyWith<$Res> {
  _$PrescriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? medicines = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            note:
                freezed == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as String?,
            medicines:
                freezed == medicines
                    ? _value.medicines
                    : medicines // ignore: cast_nullable_to_non_nullable
                        as List<MedicineModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PrescriptionModelImplCopyWith<$Res>
    implements $PrescriptionModelCopyWith<$Res> {
  factory _$$PrescriptionModelImplCopyWith(
    _$PrescriptionModelImpl value,
    $Res Function(_$PrescriptionModelImpl) then,
  ) = __$$PrescriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? note, List<MedicineModel>? medicines});
}

/// @nodoc
class __$$PrescriptionModelImplCopyWithImpl<$Res>
    extends _$PrescriptionModelCopyWithImpl<$Res, _$PrescriptionModelImpl>
    implements _$$PrescriptionModelImplCopyWith<$Res> {
  __$$PrescriptionModelImplCopyWithImpl(
    _$PrescriptionModelImpl _value,
    $Res Function(_$PrescriptionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? medicines = freezed,
  }) {
    return _then(
      _$PrescriptionModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        note:
            freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as String?,
        medicines:
            freezed == medicines
                ? _value._medicines
                : medicines // ignore: cast_nullable_to_non_nullable
                    as List<MedicineModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionModelImpl implements _PrescriptionModel {
  _$PrescriptionModelImpl({
    this.id,
    this.note,
    final List<MedicineModel>? medicines,
  }) : _medicines = medicines;

  factory _$PrescriptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionModelImplFromJson(json);

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

  @override
  String toString() {
    return 'PrescriptionModel(id: $id, note: $note, medicines: $medicines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(
              other._medicines,
              _medicines,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    note,
    const DeepCollectionEquality().hash(_medicines),
  );

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionModelImplCopyWith<_$PrescriptionModelImpl> get copyWith =>
      __$$PrescriptionModelImplCopyWithImpl<_$PrescriptionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionModelImplToJson(this);
  }
}

abstract class _PrescriptionModel implements PrescriptionModel {
  factory _PrescriptionModel({
    final int? id,
    final String? note,
    final List<MedicineModel>? medicines,
  }) = _$PrescriptionModelImpl;

  factory _PrescriptionModel.fromJson(Map<String, dynamic> json) =
      _$PrescriptionModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get note;
  @override
  List<MedicineModel>? get medicines;

  /// Create a copy of PrescriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionModelImplCopyWith<_$PrescriptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
