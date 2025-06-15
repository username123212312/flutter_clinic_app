// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_analysis_result_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddAnalysisResultRequest {
  int get id => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  String? get photoPath => throw _privateConstructorUsedError;

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAnalysisResultRequestCopyWith<AddAnalysisResultRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAnalysisResultRequestCopyWith<$Res> {
  factory $AddAnalysisResultRequestCopyWith(
    AddAnalysisResultRequest value,
    $Res Function(AddAnalysisResultRequest) then,
  ) = _$AddAnalysisResultRequestCopyWithImpl<$Res, AddAnalysisResultRequest>;
  @useResult
  $Res call({int id, String? filePath, String? photoPath});
}

/// @nodoc
class _$AddAnalysisResultRequestCopyWithImpl<
  $Res,
  $Val extends AddAnalysisResultRequest
>
    implements $AddAnalysisResultRequestCopyWith<$Res> {
  _$AddAnalysisResultRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filePath = freezed,
    Object? photoPath = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            filePath:
                freezed == filePath
                    ? _value.filePath
                    : filePath // ignore: cast_nullable_to_non_nullable
                        as String?,
            photoPath:
                freezed == photoPath
                    ? _value.photoPath
                    : photoPath // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddAnalysisResultRequestImplCopyWith<$Res>
    implements $AddAnalysisResultRequestCopyWith<$Res> {
  factory _$$AddAnalysisResultRequestImplCopyWith(
    _$AddAnalysisResultRequestImpl value,
    $Res Function(_$AddAnalysisResultRequestImpl) then,
  ) = __$$AddAnalysisResultRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? filePath, String? photoPath});
}

/// @nodoc
class __$$AddAnalysisResultRequestImplCopyWithImpl<$Res>
    extends
        _$AddAnalysisResultRequestCopyWithImpl<
          $Res,
          _$AddAnalysisResultRequestImpl
        >
    implements _$$AddAnalysisResultRequestImplCopyWith<$Res> {
  __$$AddAnalysisResultRequestImplCopyWithImpl(
    _$AddAnalysisResultRequestImpl _value,
    $Res Function(_$AddAnalysisResultRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filePath = freezed,
    Object? photoPath = freezed,
  }) {
    return _then(
      _$AddAnalysisResultRequestImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        filePath:
            freezed == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
                    as String?,
        photoPath:
            freezed == photoPath
                ? _value.photoPath
                : photoPath // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$AddAnalysisResultRequestImpl implements _AddAnalysisResultRequest {
  _$AddAnalysisResultRequestImpl({
    required this.id,
    this.filePath,
    this.photoPath,
  });

  @override
  final int id;
  @override
  final String? filePath;
  @override
  final String? photoPath;

  @override
  String toString() {
    return 'AddAnalysisResultRequest(id: $id, filePath: $filePath, photoPath: $photoPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAnalysisResultRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, filePath, photoPath);

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAnalysisResultRequestImplCopyWith<_$AddAnalysisResultRequestImpl>
  get copyWith => __$$AddAnalysisResultRequestImplCopyWithImpl<
    _$AddAnalysisResultRequestImpl
  >(this, _$identity);
}

abstract class _AddAnalysisResultRequest implements AddAnalysisResultRequest {
  factory _AddAnalysisResultRequest({
    required final int id,
    final String? filePath,
    final String? photoPath,
  }) = _$AddAnalysisResultRequestImpl;

  @override
  int get id;
  @override
  String? get filePath;
  @override
  String? get photoPath;

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAnalysisResultRequestImplCopyWith<_$AddAnalysisResultRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
