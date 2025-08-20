// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AnalysisListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalysisModel analysis) anaysisAdded,
    required TResult Function(int analysisId) analysisRemoved,
    required TResult Function() analysisFetchRequested,
    required TResult Function(AnalysisStatus analysisStatus)
    analysisFilterRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalysisModel analysis)? anaysisAdded,
    TResult? Function(int analysisId)? analysisRemoved,
    TResult? Function()? analysisFetchRequested,
    TResult? Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalysisModel analysis)? anaysisAdded,
    TResult Function(int analysisId)? analysisRemoved,
    TResult Function()? analysisFetchRequested,
    TResult Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnaysisAdded value) anaysisAdded,
    required TResult Function(AnalysisRemoved value) analysisRemoved,
    required TResult Function(AnalysisFetchRequested value)
    analysisFetchRequested,
    required TResult Function(AnalysisFilterRequested value)
    analysisFilterRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnaysisAdded value)? anaysisAdded,
    TResult? Function(AnalysisRemoved value)? analysisRemoved,
    TResult? Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult? Function(AnalysisFilterRequested value)? analysisFilterRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnaysisAdded value)? anaysisAdded,
    TResult Function(AnalysisRemoved value)? analysisRemoved,
    TResult Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult Function(AnalysisFilterRequested value)? analysisFilterRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisListEventCopyWith<$Res> {
  factory $AnalysisListEventCopyWith(
    AnalysisListEvent value,
    $Res Function(AnalysisListEvent) then,
  ) = _$AnalysisListEventCopyWithImpl<$Res, AnalysisListEvent>;
}

/// @nodoc
class _$AnalysisListEventCopyWithImpl<$Res, $Val extends AnalysisListEvent>
    implements $AnalysisListEventCopyWith<$Res> {
  _$AnalysisListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AnaysisAddedImplCopyWith<$Res> {
  factory _$$AnaysisAddedImplCopyWith(
    _$AnaysisAddedImpl value,
    $Res Function(_$AnaysisAddedImpl) then,
  ) = __$$AnaysisAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnalysisModel analysis});

  $AnalysisModelCopyWith<$Res> get analysis;
}

/// @nodoc
class __$$AnaysisAddedImplCopyWithImpl<$Res>
    extends _$AnalysisListEventCopyWithImpl<$Res, _$AnaysisAddedImpl>
    implements _$$AnaysisAddedImplCopyWith<$Res> {
  __$$AnaysisAddedImplCopyWithImpl(
    _$AnaysisAddedImpl _value,
    $Res Function(_$AnaysisAddedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? analysis = null}) {
    return _then(
      _$AnaysisAddedImpl(
        analysis:
            null == analysis
                ? _value.analysis
                : analysis // ignore: cast_nullable_to_non_nullable
                    as AnalysisModel,
      ),
    );
  }

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<$Res> get analysis {
    return $AnalysisModelCopyWith<$Res>(_value.analysis, (value) {
      return _then(_value.copyWith(analysis: value));
    });
  }
}

/// @nodoc

class _$AnaysisAddedImpl implements AnaysisAdded {
  const _$AnaysisAddedImpl({required this.analysis});

  @override
  final AnalysisModel analysis;

  @override
  String toString() {
    return 'AnalysisListEvent.anaysisAdded(analysis: $analysis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnaysisAddedImpl &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysis);

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnaysisAddedImplCopyWith<_$AnaysisAddedImpl> get copyWith =>
      __$$AnaysisAddedImplCopyWithImpl<_$AnaysisAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalysisModel analysis) anaysisAdded,
    required TResult Function(int analysisId) analysisRemoved,
    required TResult Function() analysisFetchRequested,
    required TResult Function(AnalysisStatus analysisStatus)
    analysisFilterRequested,
  }) {
    return anaysisAdded(analysis);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalysisModel analysis)? anaysisAdded,
    TResult? Function(int analysisId)? analysisRemoved,
    TResult? Function()? analysisFetchRequested,
    TResult? Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
  }) {
    return anaysisAdded?.call(analysis);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalysisModel analysis)? anaysisAdded,
    TResult Function(int analysisId)? analysisRemoved,
    TResult Function()? analysisFetchRequested,
    TResult Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (anaysisAdded != null) {
      return anaysisAdded(analysis);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnaysisAdded value) anaysisAdded,
    required TResult Function(AnalysisRemoved value) analysisRemoved,
    required TResult Function(AnalysisFetchRequested value)
    analysisFetchRequested,
    required TResult Function(AnalysisFilterRequested value)
    analysisFilterRequested,
  }) {
    return anaysisAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnaysisAdded value)? anaysisAdded,
    TResult? Function(AnalysisRemoved value)? analysisRemoved,
    TResult? Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult? Function(AnalysisFilterRequested value)? analysisFilterRequested,
  }) {
    return anaysisAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnaysisAdded value)? anaysisAdded,
    TResult Function(AnalysisRemoved value)? analysisRemoved,
    TResult Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult Function(AnalysisFilterRequested value)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (anaysisAdded != null) {
      return anaysisAdded(this);
    }
    return orElse();
  }
}

abstract class AnaysisAdded implements AnalysisListEvent {
  const factory AnaysisAdded({required final AnalysisModel analysis}) =
      _$AnaysisAddedImpl;

  AnalysisModel get analysis;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnaysisAddedImplCopyWith<_$AnaysisAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnalysisRemovedImplCopyWith<$Res> {
  factory _$$AnalysisRemovedImplCopyWith(
    _$AnalysisRemovedImpl value,
    $Res Function(_$AnalysisRemovedImpl) then,
  ) = __$$AnalysisRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int analysisId});
}

/// @nodoc
class __$$AnalysisRemovedImplCopyWithImpl<$Res>
    extends _$AnalysisListEventCopyWithImpl<$Res, _$AnalysisRemovedImpl>
    implements _$$AnalysisRemovedImplCopyWith<$Res> {
  __$$AnalysisRemovedImplCopyWithImpl(
    _$AnalysisRemovedImpl _value,
    $Res Function(_$AnalysisRemovedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? analysisId = null}) {
    return _then(
      _$AnalysisRemovedImpl(
        analysisId:
            null == analysisId
                ? _value.analysisId
                : analysisId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$AnalysisRemovedImpl implements AnalysisRemoved {
  const _$AnalysisRemovedImpl({required this.analysisId});

  @override
  final int analysisId;

  @override
  String toString() {
    return 'AnalysisListEvent.analysisRemoved(analysisId: $analysisId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisRemovedImpl &&
            (identical(other.analysisId, analysisId) ||
                other.analysisId == analysisId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysisId);

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisRemovedImplCopyWith<_$AnalysisRemovedImpl> get copyWith =>
      __$$AnalysisRemovedImplCopyWithImpl<_$AnalysisRemovedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalysisModel analysis) anaysisAdded,
    required TResult Function(int analysisId) analysisRemoved,
    required TResult Function() analysisFetchRequested,
    required TResult Function(AnalysisStatus analysisStatus)
    analysisFilterRequested,
  }) {
    return analysisRemoved(analysisId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalysisModel analysis)? anaysisAdded,
    TResult? Function(int analysisId)? analysisRemoved,
    TResult? Function()? analysisFetchRequested,
    TResult? Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
  }) {
    return analysisRemoved?.call(analysisId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalysisModel analysis)? anaysisAdded,
    TResult Function(int analysisId)? analysisRemoved,
    TResult Function()? analysisFetchRequested,
    TResult Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (analysisRemoved != null) {
      return analysisRemoved(analysisId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnaysisAdded value) anaysisAdded,
    required TResult Function(AnalysisRemoved value) analysisRemoved,
    required TResult Function(AnalysisFetchRequested value)
    analysisFetchRequested,
    required TResult Function(AnalysisFilterRequested value)
    analysisFilterRequested,
  }) {
    return analysisRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnaysisAdded value)? anaysisAdded,
    TResult? Function(AnalysisRemoved value)? analysisRemoved,
    TResult? Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult? Function(AnalysisFilterRequested value)? analysisFilterRequested,
  }) {
    return analysisRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnaysisAdded value)? anaysisAdded,
    TResult Function(AnalysisRemoved value)? analysisRemoved,
    TResult Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult Function(AnalysisFilterRequested value)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (analysisRemoved != null) {
      return analysisRemoved(this);
    }
    return orElse();
  }
}

abstract class AnalysisRemoved implements AnalysisListEvent {
  const factory AnalysisRemoved({required final int analysisId}) =
      _$AnalysisRemovedImpl;

  int get analysisId;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisRemovedImplCopyWith<_$AnalysisRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnalysisFetchRequestedImplCopyWith<$Res> {
  factory _$$AnalysisFetchRequestedImplCopyWith(
    _$AnalysisFetchRequestedImpl value,
    $Res Function(_$AnalysisFetchRequestedImpl) then,
  ) = __$$AnalysisFetchRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnalysisFetchRequestedImplCopyWithImpl<$Res>
    extends _$AnalysisListEventCopyWithImpl<$Res, _$AnalysisFetchRequestedImpl>
    implements _$$AnalysisFetchRequestedImplCopyWith<$Res> {
  __$$AnalysisFetchRequestedImplCopyWithImpl(
    _$AnalysisFetchRequestedImpl _value,
    $Res Function(_$AnalysisFetchRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnalysisFetchRequestedImpl implements AnalysisFetchRequested {
  const _$AnalysisFetchRequestedImpl();

  @override
  String toString() {
    return 'AnalysisListEvent.analysisFetchRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisFetchRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalysisModel analysis) anaysisAdded,
    required TResult Function(int analysisId) analysisRemoved,
    required TResult Function() analysisFetchRequested,
    required TResult Function(AnalysisStatus analysisStatus)
    analysisFilterRequested,
  }) {
    return analysisFetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalysisModel analysis)? anaysisAdded,
    TResult? Function(int analysisId)? analysisRemoved,
    TResult? Function()? analysisFetchRequested,
    TResult? Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
  }) {
    return analysisFetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalysisModel analysis)? anaysisAdded,
    TResult Function(int analysisId)? analysisRemoved,
    TResult Function()? analysisFetchRequested,
    TResult Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (analysisFetchRequested != null) {
      return analysisFetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnaysisAdded value) anaysisAdded,
    required TResult Function(AnalysisRemoved value) analysisRemoved,
    required TResult Function(AnalysisFetchRequested value)
    analysisFetchRequested,
    required TResult Function(AnalysisFilterRequested value)
    analysisFilterRequested,
  }) {
    return analysisFetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnaysisAdded value)? anaysisAdded,
    TResult? Function(AnalysisRemoved value)? analysisRemoved,
    TResult? Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult? Function(AnalysisFilterRequested value)? analysisFilterRequested,
  }) {
    return analysisFetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnaysisAdded value)? anaysisAdded,
    TResult Function(AnalysisRemoved value)? analysisRemoved,
    TResult Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult Function(AnalysisFilterRequested value)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (analysisFetchRequested != null) {
      return analysisFetchRequested(this);
    }
    return orElse();
  }
}

abstract class AnalysisFetchRequested implements AnalysisListEvent {
  const factory AnalysisFetchRequested() = _$AnalysisFetchRequestedImpl;
}

/// @nodoc
abstract class _$$AnalysisFilterRequestedImplCopyWith<$Res> {
  factory _$$AnalysisFilterRequestedImplCopyWith(
    _$AnalysisFilterRequestedImpl value,
    $Res Function(_$AnalysisFilterRequestedImpl) then,
  ) = __$$AnalysisFilterRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnalysisStatus analysisStatus});
}

/// @nodoc
class __$$AnalysisFilterRequestedImplCopyWithImpl<$Res>
    extends _$AnalysisListEventCopyWithImpl<$Res, _$AnalysisFilterRequestedImpl>
    implements _$$AnalysisFilterRequestedImplCopyWith<$Res> {
  __$$AnalysisFilterRequestedImplCopyWithImpl(
    _$AnalysisFilterRequestedImpl _value,
    $Res Function(_$AnalysisFilterRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? analysisStatus = null}) {
    return _then(
      _$AnalysisFilterRequestedImpl(
        analysisStatus:
            null == analysisStatus
                ? _value.analysisStatus
                : analysisStatus // ignore: cast_nullable_to_non_nullable
                    as AnalysisStatus,
      ),
    );
  }
}

/// @nodoc

class _$AnalysisFilterRequestedImpl implements AnalysisFilterRequested {
  const _$AnalysisFilterRequestedImpl({required this.analysisStatus});

  @override
  final AnalysisStatus analysisStatus;

  @override
  String toString() {
    return 'AnalysisListEvent.analysisFilterRequested(analysisStatus: $analysisStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisFilterRequestedImpl &&
            (identical(other.analysisStatus, analysisStatus) ||
                other.analysisStatus == analysisStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analysisStatus);

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisFilterRequestedImplCopyWith<_$AnalysisFilterRequestedImpl>
  get copyWith => __$$AnalysisFilterRequestedImplCopyWithImpl<
    _$AnalysisFilterRequestedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalysisModel analysis) anaysisAdded,
    required TResult Function(int analysisId) analysisRemoved,
    required TResult Function() analysisFetchRequested,
    required TResult Function(AnalysisStatus analysisStatus)
    analysisFilterRequested,
  }) {
    return analysisFilterRequested(analysisStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalysisModel analysis)? anaysisAdded,
    TResult? Function(int analysisId)? analysisRemoved,
    TResult? Function()? analysisFetchRequested,
    TResult? Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
  }) {
    return analysisFilterRequested?.call(analysisStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalysisModel analysis)? anaysisAdded,
    TResult Function(int analysisId)? analysisRemoved,
    TResult Function()? analysisFetchRequested,
    TResult Function(AnalysisStatus analysisStatus)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (analysisFilterRequested != null) {
      return analysisFilterRequested(analysisStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnaysisAdded value) anaysisAdded,
    required TResult Function(AnalysisRemoved value) analysisRemoved,
    required TResult Function(AnalysisFetchRequested value)
    analysisFetchRequested,
    required TResult Function(AnalysisFilterRequested value)
    analysisFilterRequested,
  }) {
    return analysisFilterRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnaysisAdded value)? anaysisAdded,
    TResult? Function(AnalysisRemoved value)? analysisRemoved,
    TResult? Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult? Function(AnalysisFilterRequested value)? analysisFilterRequested,
  }) {
    return analysisFilterRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnaysisAdded value)? anaysisAdded,
    TResult Function(AnalysisRemoved value)? analysisRemoved,
    TResult Function(AnalysisFetchRequested value)? analysisFetchRequested,
    TResult Function(AnalysisFilterRequested value)? analysisFilterRequested,
    required TResult orElse(),
  }) {
    if (analysisFilterRequested != null) {
      return analysisFilterRequested(this);
    }
    return orElse();
  }
}

abstract class AnalysisFilterRequested implements AnalysisListEvent {
  const factory AnalysisFilterRequested({
    required final AnalysisStatus analysisStatus,
  }) = _$AnalysisFilterRequestedImpl;

  AnalysisStatus get analysisStatus;

  /// Create a copy of AnalysisListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisFilterRequestedImplCopyWith<_$AnalysisFilterRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalysisListState {
  List<AnalysisModel> get analysisList => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;
  double get progressValue => throw _privateConstructorUsedError;

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisListStateCopyWith<AnalysisListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisListStateCopyWith<$Res> {
  factory $AnalysisListStateCopyWith(
    AnalysisListState value,
    $Res Function(AnalysisListState) then,
  ) = _$AnalysisListStateCopyWithImpl<$Res, AnalysisListState>;
  @useResult
  $Res call({
    List<AnalysisModel> analysisList,
    DataStatus status,
    String statusMessage,
    double progressValue,
  });
}

/// @nodoc
class _$AnalysisListStateCopyWithImpl<$Res, $Val extends AnalysisListState>
    implements $AnalysisListStateCopyWith<$Res> {
  _$AnalysisListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisList = null,
    Object? status = null,
    Object? statusMessage = null,
    Object? progressValue = null,
  }) {
    return _then(
      _value.copyWith(
            analysisList:
                null == analysisList
                    ? _value.analysisList
                    : analysisList // ignore: cast_nullable_to_non_nullable
                        as List<AnalysisModel>,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            statusMessage:
                null == statusMessage
                    ? _value.statusMessage
                    : statusMessage // ignore: cast_nullable_to_non_nullable
                        as String,
            progressValue:
                null == progressValue
                    ? _value.progressValue
                    : progressValue // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnalysisListStateImplCopyWith<$Res>
    implements $AnalysisListStateCopyWith<$Res> {
  factory _$$AnalysisListStateImplCopyWith(
    _$AnalysisListStateImpl value,
    $Res Function(_$AnalysisListStateImpl) then,
  ) = __$$AnalysisListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AnalysisModel> analysisList,
    DataStatus status,
    String statusMessage,
    double progressValue,
  });
}

/// @nodoc
class __$$AnalysisListStateImplCopyWithImpl<$Res>
    extends _$AnalysisListStateCopyWithImpl<$Res, _$AnalysisListStateImpl>
    implements _$$AnalysisListStateImplCopyWith<$Res> {
  __$$AnalysisListStateImplCopyWithImpl(
    _$AnalysisListStateImpl _value,
    $Res Function(_$AnalysisListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisList = null,
    Object? status = null,
    Object? statusMessage = null,
    Object? progressValue = null,
  }) {
    return _then(
      _$AnalysisListStateImpl(
        analysisList:
            null == analysisList
                ? _value._analysisList
                : analysisList // ignore: cast_nullable_to_non_nullable
                    as List<AnalysisModel>,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        statusMessage:
            null == statusMessage
                ? _value.statusMessage
                : statusMessage // ignore: cast_nullable_to_non_nullable
                    as String,
        progressValue:
            null == progressValue
                ? _value.progressValue
                : progressValue // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$AnalysisListStateImpl implements _AnalysisListState {
  const _$AnalysisListStateImpl({
    required final List<AnalysisModel> analysisList,
    required this.status,
    this.statusMessage = 'no change',
    this.progressValue = 0.0,
  }) : _analysisList = analysisList;

  final List<AnalysisModel> _analysisList;
  @override
  List<AnalysisModel> get analysisList {
    if (_analysisList is EqualUnmodifiableListView) return _analysisList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analysisList);
  }

  @override
  final DataStatus status;
  @override
  @JsonKey()
  final String statusMessage;
  @override
  @JsonKey()
  final double progressValue;

  @override
  String toString() {
    return 'AnalysisListState(analysisList: $analysisList, status: $status, statusMessage: $statusMessage, progressValue: $progressValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisListStateImpl &&
            const DeepCollectionEquality().equals(
              other._analysisList,
              _analysisList,
            ) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.progressValue, progressValue) ||
                other.progressValue == progressValue));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_analysisList),
    status,
    statusMessage,
    progressValue,
  );

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisListStateImplCopyWith<_$AnalysisListStateImpl> get copyWith =>
      __$$AnalysisListStateImplCopyWithImpl<_$AnalysisListStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AnalysisListState implements AnalysisListState {
  const factory _AnalysisListState({
    required final List<AnalysisModel> analysisList,
    required final DataStatus status,
    final String statusMessage,
    final double progressValue,
  }) = _$AnalysisListStateImpl;

  @override
  List<AnalysisModel> get analysisList;
  @override
  DataStatus get status;
  @override
  String get statusMessage;
  @override
  double get progressValue;

  /// Create a copy of AnalysisListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisListStateImplCopyWith<_$AnalysisListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
